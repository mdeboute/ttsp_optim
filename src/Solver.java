package src;

import gurobi.*;
import gurobi.GRB.DoubleAttr;
import gurobi.GRB.DoubleParam;
import gurobi.GRB.IntAttr;
import gurobi.GRB.IntParam;

import src.dataClasses.TTSPData;
import src.readers.InstanceReader;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.util.*;


public class Solver {
    public static void copyFullRecursive(File src, File dest) { //copy files func
        if (src.isDirectory()) {
            File dir = new File(dest, src.getName());
            dir.mkdir();

            File[] list = src.listFiles();
            if (list != null)
                for (File fic : list)
                    copyFullRecursive(fic, dir);
        } else {
            try {
                Files.copy(src.toPath(), new File(dest, src.getName()).toPath());
            } catch (IOException ignore) {
            }
        }
    }

    public static void solver(String filePath, double time) {
        TTSPData data = InstanceReader.parse(filePath);

        try {
            System.out.println("--> Creating the Gurobi environment");

            // --- Solver configuration ---
            // NB : should be done before creating the model
            GRBEnv env = new GRBEnv();

            env.set(DoubleParam.TimeLimit, time); //< définition du temps limite (en secondes)
            env.set(IntParam.Threads, 1); //< définition du nombre de threads pouvant être utilisé

            // --- Creation of the model
            GRBModel model = new GRBModel(env);

            ///////////////////////////////////////
            // --- Creation of the variables --- //
            ///////////////////////////////////////
            // -> boolVar for boolean variables
            // -> intVar for integer variables
            // -> numVar for continuous variables
            System.out.println("--> Creating the variables");
            GRBVar[][][] x = new GRBVar[data.getInstance().getTechs()][][];
            for (int t = 0; t < data.getInstance().getTechs(); ++t) {
                x[t] = new GRBVar[data.getInstance().getInterv()][];
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    x[t][k] = new GRBVar[data.getInstance().getTechs()];
                    for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                        x[t][k][r] = model.addVar(0.0, 1.0, 0.0, GRB.BINARY, String.format("x(%s, %s, %s)", t, k, r));
                    }
                }
            }

            GRBVar[][][] y = new GRBVar[data.getInstance().getInterv()][][];
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                y[i] = new GRBVar[data.getInstance().getInterv()][];
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    y[i][k] = new GRBVar[data.getInstance().getTechs()];
                    for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                        y[i][k][r] = model.addVar(0.0, 1.0, 0.0, GRB.BINARY, String.format("y(%s, %s, %s)", i, k, r));
                    }
                }
            }

            GRBVar[] d = new GRBVar[data.getInstance().getInterv()];
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                d[i] = model.addVar(0.0, GRB.INFINITY, 0.0, GRB.CONTINUOUS, String.format("d(%s)", i));
            }

            GRBVar[] f = new GRBVar[4];
            for (int p = 0; p < 4; ++p) {
                f[p] = model.addVar(0.0, GRB.INFINITY, 0.0, GRB.CONTINUOUS, String.format("f(%s)", p));
            }

            GRBVar[] z = new GRBVar[data.getInstance().getInterv()];
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                z[i] = model.addVar(0.0, 1.0, 0.0, GRB.BINARY, String.format("z(%s)", i));
            }

            GRBVar[][] h = new GRBVar[data.getInstance().getInterv()][];
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                h[i] = new GRBVar[data.getInstance().getInterv()];
                for (int j = 0; j < data.getInstance().getInterv(); ++j) {
                    if (i != j) {
                        h[i][j] = model.addVar(0.0, 1.0, 0.0, GRB.BINARY, String.format("h(%s, %s)", i, j));
                    }
                }
            }

            ////////////////////////////////////////////////
            // --- Creation of the objective function --- //
            // NB : Only needed if when we do not set the //
            // coefficient of the variables in the //
            /// objective function when creating them //
            ////////////////////////////////////////////////
            System.out.println("--> Creating the objective function");
            GRBLinExpr obj = new GRBLinExpr();
            double[] coeff = {28, 14, 4, 1}; //cf. Dutot et al.
            for (int p = 0; p < 4; ++p) {
                obj.addTerm(coeff[p], f[p]);
            }
            model.setObjective(obj, GRB.MINIMIZE);

            /////////////////////////////////////////
            // --- Creation of the constraints --- //
            /////////////////////////////////////////

            System.out.println("--> Creating the constraints");

            // 2
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                if (data.getIntervention()[i + 1].getPrio() == 1) {
                    GRBLinExpr expr = new GRBLinExpr();
                    expr.addTerm(1.0, f[0]);
                    expr.addTerm(-1.0, d[i]);
                    expr.addConstant(- data.getIntervention()[i + 1].getTime());
                    model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Finish time f1 >= d(%s) + p(%s)", i, i));
                }
                if (data.getIntervention()[i + 1].getPrio() == 2) {
                    GRBLinExpr expr = new GRBLinExpr();
                    expr.addTerm(1.0, f[1]);
                    expr.addTerm(-1.0, d[i]);
                    expr.addConstant(- data.getIntervention()[i + 1].getTime());
                    model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Finish time f2 >= d(%s) + p(%S)", i, i));
                }
                if (data.getIntervention()[i + 1].getPrio() == 3) {
                    GRBLinExpr expr = new GRBLinExpr();
                    expr.addTerm(1.0, f[2]);
                    expr.addTerm(-1.0, d[i]);
                    expr.addConstant(- data.getIntervention()[i + 1].getTime());
                    model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Finish time f3 >= d(%s) + p(%S)", i, i));
                }
            }

            // 3
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                GRBLinExpr expr = new GRBLinExpr();
                expr.addTerm(1.0, f[3]);
                expr.addTerm(-1.0, d[i]);
                expr.addConstant(- data.getIntervention()[i + 1].getTime());
                model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Finish time f4 >= d(%s) + p(%S)", i, i));
            }

            // 4
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                GRBLinExpr expr = new GRBLinExpr();
                expr.addTerm(data.getIntervention()[i + 1].getCost(), z[i]);
                model.addConstr(expr, GRB.LESS_EQUAL, data.getInstance().getAbandon(), String.format("Subcontracting budget (%s)", i));
            }

            // 5
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                if (data.getIntervention()[i + 1].getPreds().length != 0) {
                    GRBLinExpr expr = new GRBLinExpr();
                    for (int j : data.getIntervention()[i + 1].getPreds()) {
                        expr.addTerm(1.0, z[j]);
                    }
                    expr.addTerm(- data.getIntervention()[i + 1].getPreds().length, z[i]);
                    model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("If a task is outsourced, all tasks succeed him are also outsourced (%s)", i));
                }
            }

            // 6
            for (int t = 0; t < data.getInstance().getTechs(); ++t) {
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    if (!Checker.check(data.getTechnician()[t + 1].getDispo(), k + 1)) {
                        GRBLinExpr expr = new GRBLinExpr();
                        for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                            expr.addTerm(1.0, x[t][k][r]);
                        }
                        model.addConstr(expr, GRB.LESS_EQUAL, 1, String.format("One tech is used at most in one team per day (%s)", t));
                    }
                }
            }

            // 7
            for (int t = 0; t < data.getInstance().getTechs(); ++t) {
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    if (Checker.check(data.getTechnician()[t + 1].getDispo(), k + 1)) {
                        GRBLinExpr expr = new GRBLinExpr();
                        for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                            expr.addTerm(1.0, x[t][k][r]);
                        }
                        model.addConstr(expr, GRB.EQUAL, 0, String.format("Unavailable technicians are not used (%s)", t));
                    }
                }
            }

            // 8
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                GRBLinExpr expr = new GRBLinExpr();
                expr.addTerm(1.0, z[i]);
                for (int k = 0; k < data.getInstance().getInterv(); k++) {
                    for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                        expr.addTerm(1.0, y[i][k][r]);
                    }
                }
                model.addConstr(expr, GRB.EQUAL, 1, String.format("Each task is executed or subcontracted (%s)", i));
            }

            // 9
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                        for (int a = 0; a < data.getInstance().getLevel() * data.getInstance().getDomains(); ++a) {
                            GRBLinExpr expr = new GRBLinExpr();
                            expr.addTerm(-data.getIntervention()[i + 1].getD()[a], y[i][k][r]);
                            for (int t = 0; t < data.getInstance().getTechs(); ++t) {
                                if (!Checker.check(data.getTechnician()[t + 1].getDispo(), k + 1)) {
                                    expr.addTerm(data.getTechnician()[t + 1].getV(data.getInstance().getLevel(), data.getInstance().getDomains())[a], x[t][k][r]);
                                }
                            }
                            model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Each task is performed by a team with the appropriate skills (%s)", i));
                        }
                    }
                }
            }

            // 10
            double M = 120 * data.getInstance().getInterv();
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                if (data.getIntervention()[i + 1].getPreds().length != 0) {
                    GRBLinExpr expr = new GRBLinExpr();
                    expr.addTerm(1.0, d[i]);
                    expr.addConstant(data.getIntervention()[i + 1].getTime());
                    for (int j : data.getIntervention()[i + 1].getPreds()) {
                        expr.addTerm(-1.0, d[j]);
                    }
                    expr.addTerm(-M, z[i]);
                    model.addConstr(expr, GRB.LESS_EQUAL, 0, String.format("Precedences constraints (%s)", i));
                }
            }

            // 11
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    GRBLinExpr expr = new GRBLinExpr();
                    for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                        expr.addTerm(120 * k, y[i][k][r]);
                    }
                    expr.addTerm(-1.0, d[i]);
                    model.addConstr(expr, GRB.LESS_EQUAL, 0, String.format("Lower and upper limits on the start time of each task 1 (%s)", i));
                }
            }

            // 12
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    GRBLinExpr expr = new GRBLinExpr();
                    for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                        expr.addTerm(120 * (k + 1), y[i][k][r]);
                        expr.addTerm(-M, y[i][k][r]);
                    }
                    expr.addConstant(M);
                    expr.addTerm(-1.0, d[i]);
                    expr.addConstant(- data.getIntervention()[i + 1].getTime());
                    model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Lower and upper limits on the start time of each task 2 (%s)", i));
                }
            }

            // 13
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                for (int j = 0; j < data.getInstance().getInterv(); ++j) {
                    if (i != j) {
                        GRBLinExpr expr = new GRBLinExpr();
                        expr.addTerm(1.0, d[i]);
                        expr.addConstant(data.getIntervention()[i + 1].getTime());
                        expr.addConstant(-M);
                        expr.addTerm(M, h[i][j]);
                        expr.addTerm(-1.0, d[j]);
                        model.addConstr(expr, GRB.LESS_EQUAL, 0, String.format("Define h relative to the start times of interventions (%s, %s)", i, j));
                    }
                }
            }

            // 14
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                for (int j = 0; j < data.getInstance().getInterv(); ++j) {
                    if (i != j) {
                        for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                            for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                                GRBLinExpr expr = new GRBLinExpr();
                                expr.addTerm(1.0, y[i][k][r]);
                                expr.addTerm(1.0, y[j][k][r]);
                                expr.addTerm(-1.0, h[i][j]);
                                expr.addTerm(-1.0, h[j][i]);
                                model.addConstr(expr, GRB.LESS_EQUAL, 1, String.format("Ensures that interventions i and i' do not overlap if performed by the same team on the same day (%s, %s)", i, j));
                            }
                        }
                    }
                }
            }

            System.out.println("--> Write the model");
            model.write("model.lp"); // < writes the model in a file (for debug purposes)

            // --- Solver launch ---
            System.out.println("--> Running the solver");
            model.optimize();

            if (model.get(IntAttr.SolCount) > 0) {
                // --- Solver results retrieval ---
                System.out.println("--> Retrieving solver results ");
                // the solver has computed the optimal solution or a feasible solution (when the
                // time limit is reached before proving optimality)
                // prints the solver status (2 if optimal / 9 if time limit)
                System.out.println("Success! (Status: " + model.get(IntAttr.Status) + ")");
                System.out.println("Runtime : " + Math.round(model.get(DoubleAttr.Runtime) * 1000) / 1000.0 + " seconds");

                System.out.println("--> Printing results ");
                System.out.println("Objective value = " + model.get(DoubleAttr.ObjVal) + "\n"); // <gets the value of the objective
                // function for the best computed solution (optimal if no time limit)


                // --- Creating the solution files ---
                String[] dataName = filePath.split("/");
                String filepathSol = "datas/solverSolutions/" + dataName[dataName.length - 1] + "/";
                copyFullRecursive(new File(filePath), new File("datas/solverSolutions/"));

                // First file :
                try {
                    FileWriter fw = new FileWriter(filepathSol + "interv_dates", false); // create file writer (false to erase the file if it already exists)  -> filePath is a String that represents the path to the file that will be created/written
                    BufferedWriter output = new BufferedWriter(fw); // create buffered writer
                    for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                        for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                            for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                                if (y[i][k][r].get(DoubleAttr.X) == 1) {
                                    output.write("" + (i + 1)); // writes into the buffer
                                    output.write(" " + (k + 1));
                                    output.write(" " + Math.round(d[i].get(DoubleAttr.X)));
                                    output.write(" " + (r + 1));
                                    output.write("\n"); // to go the next line
                                }
                            }
                        }
                    }
                    output.flush(); // flushes the content of buffer to the file (it writes the content)
                    output.close(); // close the buffer
                    fw.close(); // close the writer

                } catch (IOException e) {
                    e.printStackTrace();
                    throw new IllegalStateException("Error when writing the file\n");
                }

                //Second file :
                try {
                    FileWriter fw = new FileWriter(filepathSol + "tech_teams", false);
                    BufferedWriter output = new BufferedWriter(fw);
                    int[][][] teams = new int[data.getInstance().getInterv()][data.getInstance().getTechs()][data.getInstance().getTechs()];
                    for (int t = 0; t < data.getInstance().getTechs(); ++t) {
                        for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                            for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                                if (x[t][k][r].get(DoubleAttr.X) == 1) {
                                    teams[k][r][t] = t + 1;
                                }
                            }
                        }
                    }

                    int[][] team0 = new int[data.getInstance().getInterv()][data.getInstance().getTechs()];
                    for (int t = 0; t < data.getInstance().getTechs(); ++t) {
                        for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                            if (Checker.check(data.getTechnician()[t + 1].getDispo(), k + 1)) {
                                team0[k][t] = t + 1;
                            }
                        }
                    }

                    // team 0 is incorrect, there are missing technicians who are not assigned to any team on day k

                    for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                        output.write("" + (k + 1));
                        output.write(" " + Arrays.toString(Arrays.stream(team0[k]).filter(num -> num != 0).toArray())
                                .replace(",", "") //remove the commas
                                .replace("[", "[ ")
                                .replace("]", " ]")
                                .replace("[  ]", "[ ]")
                                .trim()); //remove trailing spaces from partially initialized arrays+ " ] ");
                        for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                            output.write(" " + Arrays.toString(Arrays.stream(teams[k][r]).filter(num -> num != 0).toArray())
                                    .replace(",", "")
                                    .replace("[", "[ ")
                                    .replace("]", " ]")
                                    .replace("[  ]", "[ ]")
                                    .trim());
                        }
                        output.write("\n");
                    }
                    output.flush();
                    output.close();
                    fw.close();

                } catch (IOException e) {
                    e.printStackTrace();
                    throw new IllegalStateException("Error when writing the file\n");
                }

            } else {
                // the model is infeasible (maybe wrong) or the solver has reached the time
                // limit without finding a feasible solution
                // the solver status (3 if infeasible / 4 infeasible or unbounded / 5 unbounded)
                System.err.println("Fail! (Status: " + model.get(IntAttr.Status) + ")");
            }
        } catch (GRBException e) {
            System.err.println("Gurobi exception");
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Long begin =  System.currentTimeMillis();
        solver("datas/datasetA/data1", 600);
        Long end =  System.currentTimeMillis();
        System.out.println("Execution in " + (end-begin) + " ms");
        // the solver is incorrect...
    }
}
