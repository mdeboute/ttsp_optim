package src;

import gurobi.*;

import src.dataClasses.*;
import src.readers.*;

public class Solver {
    public static void solver(String filePath, double time) throws GRBException {
        TTSPData data = InstanceReader.parse(filePath);

        try {
            System.out.println("--> Creating the Gurobi environment");

            // --- Solver configuration ---
            // NB : should be done before creating the model
            GRBEnv env = new GRBEnv();

            env.set(GRB.DoubleParam.TimeLimit, 600.0); //< définition du temps limite (en secondes)
            env.set(GRB.IntParam.Threads, 1); //< définition du nombre de threads pouvant être utilisé

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
            int[] coeff = {28, 14, 4, 1}; //cf. Dutot et al.
            for (int p = 1; p < 5; ++p) {
                obj.addTerm(coeff[p], f[p]);
            }
            model.setObjective(obj, GRB.MINIMIZE);

            /////////////////////////////////////////
            // --- Creation of the constraints --- //
            /////////////////////////////////////////

            System.out.println("--> Creating the constraints");
//            GRBLinExpr expr = new GRBLinExpr();
//            for (int p = 1; p < 4; ++p) {
//                expr.addTerm(1.0, f[p]);
//                for (int i = 0; i < data.getInstance().getInterv(); ++i) {
//                    if (data.getIntervention()[i].getPrio()==p) {
//                        expr.addTerm(-1.0, d[i]);
//                    }
//                }
//                model.addConstr(expr, GRB.GREATER_EQUAL,0, String.format("Finish time(%s)", p));
//            }

        } catch (GRBException e) {
            System.err.println("Gurobi exception");
            e.printStackTrace();
        }

    }
}
