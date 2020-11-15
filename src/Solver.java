package src;

import gurobi.GRB;
import gurobi.GRB.DoubleAttr;
import gurobi.GRB.DoubleParam;
import gurobi.GRB.IntAttr;
import gurobi.GRB.IntParam;
import gurobi.GRBEnv;
import gurobi.GRBException;
import gurobi.GRBLinExpr;
import gurobi.GRBModel;
import gurobi.GRBVar;
import src.dataClasses.TTSPData;
import src.readers.InstanceReader;

import java.util.Arrays;

public class Solver {
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
                d[i] = model.addVar(0.0, 1.0, 0.0, GRB.CONTINUOUS, String.format("d(%s)", i));
            }

            GRBVar[] f = new GRBVar[4];
            for (int p = 0; p < 4; ++p) {
                f[p] = model.addVar(0.0, 1.0, 0.0, GRB.CONTINUOUS, String.format("f(%s)", p));
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
            for (int p = 0; p < 3; ++p) {
                for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                    if (data.getIntervention()[i + 1].getPrio() == 1 || data.getIntervention()[i + 1].getPrio() == 2 || data.getIntervention()[i + 1].getPrio() == 3) {
                        GRBLinExpr expr = new GRBLinExpr();
                        expr.addTerm(1.0, f[p]);
                        expr.addTerm(-1.0, d[i]);
                        expr.addConstant(-(double) data.getIntervention()[i + 1].getPrio());
                        model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Finish time 1(%s)", p));
                    }
                }
            }

            // 3
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                GRBLinExpr expr = new GRBLinExpr();
                expr.addTerm(1.0, f[3]);
                expr.addTerm(-1.0, d[i]);
                expr.addConstant(-(double) data.getIntervention()[i + 1].getPrio());
                model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Finish time 2(%s)", i));
            }

            // 4
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                GRBLinExpr expr = new GRBLinExpr();
                expr.addConstant(data.getIntervention()[i + 1].getCost());
                expr.addTerm(1.0, z[i]);
                model.addConstr(expr, GRB.LESS_EQUAL, data.getInstance().getAbandon(), String.format("Subcontracting budget (%s)", i));
            }

            // 5
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                if (data.getIntervention()[i + 1].getPreds().length != 0) {
                    GRBLinExpr expr = new GRBLinExpr();
                    for (int j = 0; j < data.getIntervention()[i + 1].getPreds().length; ++i) {
                        expr.addTerm(1.0, z[j]);
                    }
                    expr.addTerm(-(double) data.getIntervention()[i + 1].getPreds().length, z[i]);
                    model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Preds interv (%s)", i));
                }
            }

            // 6
            for (int t = 0; t < data.getInstance().getTechs(); ++t) {
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    if (!Arrays.toString(data.getTechnician()[t + 1].getDispo()).contains("" + k)) {
                        GRBLinExpr expr = new GRBLinExpr();
                        for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                            expr.addTerm(1.0, x[t][k][r]);
                        }
                        model.addConstr(expr, GRB.LESS_EQUAL, 1, String.format("One tech is used at most in one shift per day (%s)", t));
                    }
                }
            }

            // 7
            for (int t = 0; t < data.getInstance().getTechs(); ++t) {
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    if (Arrays.toString(data.getTechnician()[t + 1].getDispo()).contains("" + k)) {
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
                for (int t = 0; t < data.getInstance().getTechs(); ++t) {
                    for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                        if (!Arrays.toString(data.getTechnician()[t + 1].getDispo()).contains("" + k)) {
                            GRBLinExpr expr = new GRBLinExpr();
                            for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                                for (int q = 0; q < data.getTechnician()[t + 1].getD().length; ++q) {
                                    expr.addTerm(data.getTechnician()[t + 1].getD()[q], x[t][k][r]);
                                }
                                for (int s = 0; s < data.getIntervention()[i + 1].getD().length; ++s) {
                                    expr.addTerm(-data.getIntervention()[i + 1].getD()[s], y[i][k][r]);
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
                    expr.addConstant(data.getIntervention()[i].getPrio());
                    for (int j = 0; j < data.getIntervention()[i].getPreds().length; ++j) {
                        expr.addTerm(-1.0, d[j]);
                    }
                    expr.addTerm(-M, z[i]);
                    model.addConstr(expr, GRB.LESS_EQUAL, 0, String.format("precedence constraints (%s)", i));
                }
            }

            // 11
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                GRBLinExpr expr = new GRBLinExpr();
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                        expr.addTerm(120 * (k - 1), y[i][k][r]);
                    }
                }
                expr.addTerm(-1.0, d[i]);
                model.addConstr(expr, GRB.LESS_EQUAL, 0, String.format("Lower and upper limits on the start time of each task 1 (%s)", i));
            }

            // 12
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                GRBLinExpr expr = new GRBLinExpr();
                for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                    for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                        expr.addTerm(120 * k, y[i][k][r]);
                        expr.addConstant(M);
                        expr.addTerm(-M, y[i][k][r]);
                    }
                }
                expr.addTerm(-1.0, d[i]);
                expr.addConstant(-data.getIntervention()[i + 1].getPrio());
                model.addConstr(expr, GRB.GREATER_EQUAL, 0, String.format("Lower and upper limits on the start time of each task 2 (%s)", i));
            }

            // 13
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                for (int j = 0; j < data.getInstance().getInterv(); ++j) {
                    if (i != j) {
                        GRBLinExpr expr = new GRBLinExpr();
                        expr.addTerm(1.0, d[i]);
                        expr.addConstant(data.getIntervention()[i + 1].getPrio());
                        expr.addConstant(-M);
                        expr.addTerm(M, h[i][j]);
                        expr.addTerm(-1.0, d[j]);
                        model.addConstr(expr, GRB.LESS_EQUAL, 0, String.format("Define h (%s, %s)", i, j));
                    }
                }
            }

            // 14
            for (int i = 0; i < data.getInstance().getInterv(); ++i) {
                for (int j = 0; j < data.getInstance().getInterv(); ++j) {
                    if (i != j) {
                        GRBLinExpr expr = new GRBLinExpr();
                        for (int k = 0; k < data.getInstance().getInterv(); ++k) {
                            for (int r = 0; r < data.getInstance().getTechs(); ++r) {
                                expr.addTerm(1.0, y[i][k][r]);
                                expr.addTerm(1.0, y[j][k][r]);
                                expr.addTerm(-1.0, h[i][j]);
                                expr.addTerm(-1.0, h[j][i]);
                            }
                        }
                        model.addConstr(expr, GRB.LESS_EQUAL, 1, String.format("Ensures that interventions i and i' do not overlap if performed by the same team on the same day (%s, %s)", i, j));
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
                System.out.println("Succes! (Status: " + model.get(IntAttr.Status) + ")");
                System.out.println("Runtime : " + Math.round(model.get(DoubleAttr.Runtime) * 1000) / 1000.0 + " seconds");

                System.out.println("--> Printing results ");
                System.out.println("Objective value = " + model.get(DoubleAttr.ObjVal)); // <gets the value of the objective
                // function for the best computed solution (optimal if no time limit)
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
        //solver(args[0], Double.parseDouble(args[1]));
        solver("./datas/datasetA/data1", 600);
    }
}
