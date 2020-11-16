package src;

import src.dataClasses.*;
import src.readers.InstanceReader;
import src.readers.SolutionReader;
import src.solClasses.*;

public class Evaluator {
    public static int[] evaluator(TTSPData ttspdata, TTSPSolution ttspsolution) {
        //Sum of the cost for outsourcing intervention of priority {1,2,3}
        int sum1;
        int sum2;
        int sum3;

        //Latest completion time for intervention of priority {1,2,3}
        int LCT1 = 0;
        int LCT2 = 0;
        int LCT3 = 0;
        int C1 = 0;
        int C2 = 0;
        int C3 = 0;

        //Put the latest completion time in the rescpectiv LCT
        for (int i = 0; i < ttspsolution.getInterv_dates().length; i++) {
            int num = ttspsolution.getInterv_dates()[i].getInterv();
            if (ttspdata.getIntervention()[num].getPrio() == 1 && C1 < (120 * (ttspsolution.getInterv_dates()[i].getDay()-1) + ttspsolution.getInterv_dates()[i].getTime())) {
                C1 = 120 * (ttspsolution.getInterv_dates()[i].getDay()-1) + ttspsolution.getInterv_dates()[i].getTime();
                LCT1 = ttspsolution.getInterv_dates()[i].getTime();
            }
            if (ttspdata.getIntervention()[num].getPrio() == 2 && C2 < (120 * (ttspsolution.getInterv_dates()[i].getDay()-1) + ttspsolution.getInterv_dates()[i].getTime())) {
                C2 = 120 * (ttspsolution.getInterv_dates()[i].getDay()-1) + ttspsolution.getInterv_dates()[i].getTime();
                LCT2 = ttspsolution.getInterv_dates()[i].getTime();
            }
            if (ttspdata.getIntervention()[num].getPrio() == 3 && C3 < (120 * (ttspsolution.getInterv_dates()[i].getDay()-1) + ttspsolution.getInterv_dates()[i].getTime())) {
                C3 = 120 * (ttspsolution.getInterv_dates()[i].getDay()-1) + ttspsolution.getInterv_dates()[i].getTime();
                LCT3 = ttspsolution.getInterv_dates()[i].getTime();
            }
        }

        //Put the sum of the intervention into the right sum
        sum1 = 28 * C1;
        sum2 = 14 * C2;
        sum3 = 4 * C3;
        int Scost = LCT1;
        if (LCT2 > Scost){
            Scost = LCT2;
        }
        if (LCT3 > Scost){
            Scost = LCT3;
        }
        int somme = sum1 + sum2 + sum3 + Scost;
        return new int[]{sum1, LCT1, sum2, LCT2, sum3, LCT3, Scost, somme};
    }

   public static void main(String[] args) {
       TTSPSolution ttspSolution = SolutionReader.parse(args[0]);
       TTSPData ttspData = InstanceReader.parse(args[0]);
       int[] result = evaluator(ttspData, ttspSolution);
       System.out.print("----------------------------------\n" +
       "--------- COMPUTE COST ----------\n" +
       "----------------------------------\n" +
       "Cost for interventions of priority 1 = " + result[0] + " (latest completion time = " + result[1] + ")\n" +
       "Cost for interventions of priority 2 = " + result[2] + " (latest completion time = " + result[3] + ")\n" +
       "Cost for interventions of priority 3 = " + result[4] + " (latest completion time = " + result[5] + ")\n" +
       "Schedule cost = " + result[6] + " (latest completion time = " + result[6] + ")\n" +
       "-> TOTAL COST = " + result[7]);
   }
}

