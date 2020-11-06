package src;

public class Evaluator {
   public static double[] evaluator(TTSPData ttspdata, TTSPSolution ttspsolution) {
       //List of outsourcings interventions with the lenght of the array in the first element
       double[] IntST = new double[ttspdata.getInstance().getInterv()]; //never read ?
       
       //Sum of the cost for outsourcing intervention of priority {1,2,3} 
       double sum1;
       double sum2;
       double sum3;
       
       //Latest completion time for intervention of priority {1,2,3}
       double LCT1 = 0;
       double LCT2 = 0;
       double LCT3 = 0;
       
       //Put all the intervention which are not outsources to 0
       for (int i = 0; i < ttspsolution.getInterv_dates().length; i++){
           IntST[ttspsolution.getInterv_dates()[i].getInterv()-1] = 1;
       }

       //Put the latest completion time in the rescpectiv LCT
       for (int i = 0; i < ttspsolution.getInterv_dates().length; i++){
            double num = ttspsolution.getInterv_dates()[i].getInterv();
            if (ttspdata.getIntervention()[(int)num - 1].getPrio() == 1 && LCT1 < (120 * ttspsolution.getInterv_dates()[i].getDay() + ttspsolution.getInterv_dates()[i].getTime())){
                LCT1 = 120 * ttspsolution.getInterv_dates()[i].getDay() + ttspsolution.getInterv_dates()[i].getTime();
            }
            if (ttspdata.getIntervention()[(int)num - 1].getPrio() == 2 && LCT2 < (120 * ttspsolution.getInterv_dates()[i].getDay() + ttspsolution.getInterv_dates()[i].getTime())){
                LCT2 = 120 * ttspsolution.getInterv_dates()[i].getDay() + ttspsolution.getInterv_dates()[i].getTime();
            }
            if (ttspdata.getIntervention()[(int)num - 1].getPrio() == 3 && LCT3 < (120 * ttspsolution.getInterv_dates()[i].getDay() + ttspsolution.getInterv_dates()[i].getTime())){
                LCT3 = 120 * ttspsolution.getInterv_dates()[i].getDay() + ttspsolution.getInterv_dates()[i].getTime();
            }
       }
       
       //Put the sum of the intervention into the right sum
       sum1 = 28 * LCT1;
       sum2 = 14 * LCT2;
       sum3 = 4 * LCT3;
       return new double[]{sum1, LCT1, sum2, LCT2, sum3, LCT3};
   }

//    public static void main(String[] args) {
//        TTSPData ttspdata = new InstanceReader().parse(args[0]);
//        TTSPSolution ttspsolution = new SolutionReader().parse(args[1]);
//        double[] result = evaluator(ttspdata, ttspsolution);
//        double Scost = result[1];
//        if (result[3] > Scost){
//            Scost = result[3];
//        }
//        if (result[5] > Scost){
//            Scost = result[5];
//        }
//        double Sum = Scost + result[0] + result[2] + result[4];
//        System.out.print("----------------------------------\n" +
//        "--------- COMPUTE COST ----------\n" +
//        "----------------------------------\n" +
//        "Cost for interventions of priority 1 = " + result[0] + " (latest completion time = " + result[1] + ")\n" +
//        "Cost for interventions of priority 2 = " + result[2] + " (latest completion time = " + result[3] + ")\n" +
//        "Cost for interventions of priority 3 = " + result[4] + " (latest completion time = " + result[5] + ")\n" +
//        "Schedule cost = " + Scost + " (latest completion time = " + Scost + ")\n" +
//        "-> TOTAL COST = " + Sum);
//    }
}

