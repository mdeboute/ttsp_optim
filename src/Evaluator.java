package src;

public class Evaluator extends InstanceReader{
   public static double[] evaluator(TTSPData ttspdata, TTSPSolution ttspsolution) {
       //Listes des interventions qui sont sous-traite
       double[] IntST = {1};
       // la somme des cout des interventions sous-traite {1,2,3}
       double sum1 = 0;
       double sum2 = 0;
       double sum3 = 0;
       // the latest completion time for intervention of priority {1,2,3}
       double LCT1 = 0;
       double LCT2 = 0;
       double LCT3 = 0;
       // creation of an array with all the intervention
       for (int i = 0; i < ttspdata.instance.getInterv(); i++){
           double[] IntST_ = new double[((int)IntST[0])+1];
           System.arraycopy(IntST, 0, IntST_, 0, IntST.length);
           IntST = IntST_;
           IntST[IntST.length-1] = ttspdata.interv_list[i].getNumber();
           IntST[0] = IntST[0] + 1;
       }
       // put all the intervention which are not outsources to 0
       for (int i = 0; i < ttspsolution.interv_dates.length; i++){
           IntST[ttspsolution.interv_dates[i].getInterv()-1] = 0;
       }
       // put the lenght of the array to 0
       IntST[0] = 0;
       //For all outsources interventions put the cost of the intervention into the right sum
       for (double v : IntST) {
           if (v != 0) {
               if (ttspdata.interv_list[(int) v].getPrio() == 1) {
                   sum1 = sum1 + ttspdata.interv_list[(int) v].getCost();
               }
               if (ttspdata.interv_list[(int) v].getPrio() == 2) {
                   sum2 = sum2 + ttspdata.interv_list[(int) v].getCost();
               } else {
                   sum3 = sum3 + ttspdata.interv_list[(int) v].getCost();
               }
           }
       }
       // put the latest completion time in the rescpectiv LCT
       for (int i = 0; i < ttspsolution.interv_dates.length; i++){
            double num = ttspsolution.interv_dates[i].getInterv();
            if (ttspdata.interv_list[(int)num - 1].getPrio() == 1 && LCT1 < (120 * ttspsolution.interv_dates[i].getDay() + ttspsolution.interv_dates[i].getTime())){
                LCT1 = 120 * ttspsolution.interv_dates[i].getDay() + ttspsolution.interv_dates[i].getTime();
            }
            if (ttspdata.interv_list[(int)num - 1].getPrio() == 2 && LCT2 < (120 * ttspsolution.interv_dates[i].getDay() + ttspsolution.interv_dates[i].getTime())){
                LCT2 = 120 * ttspsolution.interv_dates[i].getDay() + ttspsolution.interv_dates[i].getTime();
            }
            if (ttspdata.interv_list[(int)num - 1].getPrio() == 3 && LCT3 < (120 * ttspsolution.interv_dates[i].getDay() + ttspsolution.interv_dates[i].getTime())){
                LCT3 = 120 * ttspsolution.interv_dates[i].getDay() + ttspsolution.interv_dates[i].getTime();
            }
       }
       return new double[]{sum1, LCT1, sum2, LCT2, sum3, LCT3};
   }

   public void name() {
       
   }

    public static void main(String[] args) {
        TTSPData ttspdata = InstanceReader(args[0]);
        TTSPSolution ttspsolution = SolutionReader(args[0]);
        double[] result = evaluator(ttspdata, ttspsolution);
        double Scost = result[1];
        if (result[3] > Scost){
            Scost = result[3];
        }
        if (result[5] > Scost){
            Scost = result[5];
        }
        double Sum = Scost + result[0] + result[2] + result[4];
        System.out.print("----------------------------------\n" +
        "--------- COMPUTE COST ----------\n" +
        "----------------------------------\n" +
        "Cost for interventions of priority 1 = " + result[0] + " (latest completion time = " + result[1] + ")\n" +
        "Cost for interventions of priority 2 = " + result[2] + " (latest completion time = " + result[3] + ")\n" + 
        "Cost for interventions of priority 3 = " + result[4] + " (latest completion time = " + result[5] + ")\n" + 
        "Schedule cost = " + Scost + " (latest completion time = " + Scost + ")\n" + 
        "-> TOTAL COST = " + Sum);
    }
}

