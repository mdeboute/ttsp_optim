package src;

import gurobi.*;
import gurobi.GRB.DoubleParam;
import gurobi.GRB.IntParam;

public class Solver {
    public static void solver(String filePath, double time) throws GRBException {
        InstanceReader instanceReader = new InstanceReader();
        TTSPData data= instanceReader.parse(filePath);

        try {
            System.out.println("--> Creating the Gurobi environment");

            // --- Solver configuration ---
            // NB : should be done before creating the model
            GRBEnv env = new GRBEnv();

            env.set(DoubleParam.TimeLimit, 600.0); //< définition du temps limite (en secondes)
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
        } catch (GRBException e) {
            System.err.println("Gurobi exception");
            e.printStackTrace();
        }

    }
}
