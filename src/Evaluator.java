package src;
import java.util.*;

import org.graalvm.compiler.nodes.graphbuilderconf.GeneratedInvocationPlugin;

public class Evaluator {
    public double[] evaluator(TTSPData ttspdata, TTSPSolution ttspsolution) {
        //Listes des interventions qui sont sous-traite
        double[] IntST = {1};
        // la somme des cout des interventions sous-traite {1,2,3}
        double sum1 = 0;
        double sum2 = 0;
        double sum3 = 0;
        // creation of an array with all the intervention
        for ( double inter : ttspdata.interv_list.getNumber()){
            double[] IntST_ = new double[((int)IntST[0])+1];
            for (int i = 0; i < IntST.length; i++) {
                IntST_[i] = IntST[i];
            }
            IntST = IntST_;
            IntST[IntST.length-1] = inter;
            IntST[0] = IntST[0] + 1;
        }
        // put all the intervention which are not outsources to 0
        for ( double IntS : ttspsolution.interv_dates.getInterv()){
            IntST[(int)IntS] = 0;
        }
        // put the lenght of the array to 0
        IntST[0] = 0;
        //For all outsources interventions put the cost of the intervention into the right sum
        for (double ST : IntST){
            if (ST != 0){
                if (ttspdata.interv_list.getPrio()[(int)ST-1] == 1){
                    sum1 = sum1 + ttspdata.interv_list.getCost()[(int)ST-1];
                }
                if (ttspdata.interv_list.getPrio()[(int)ST-1] == 2){
                    sum2 = sum2 + ttspdata.interv_list.getCost()[(int)ST-1];
                }
                else{
                    sum3 = sum3 + ttspdata.interv_list.getCost()[(int)ST-1];
                }
            }
        }
        double[] result = {sum1, sum2, sum3};
        return result;
    }
    public static void main(String[] args) {
        // SolutionReader('/./solutions/sol_A_2_#3')
        // TTSPData ttspData=new TTSPData();
        // TTSPSolution ttspSolution=new TTSPSolution();
        // double[] sol = evaluator(ttspData, ttspSolution);
        double[] sol = {1200, 300, 600};
        System.out.print("----------------------------\n");
        System.out.print("------- COMPUTE COST -------\n");
        System.out.print("----------------------------\n");
        System.out.print("----------------------------\n");
        System.out.print("Cost for intervention of priority 1 = " + sol[0] + "\n");
        System.out.print("Cost for intervention of priority 2 = " + sol[1] + "\n");
        System.out.print("Cost for intervention of priority 3 = " + sol[2] + "\n");
        System.out.print("-> TOTAL COST = " + sol[0]+sol[1]+sol[2] + "\n");
    }
}

