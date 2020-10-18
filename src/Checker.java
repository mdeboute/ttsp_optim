package src;

import java.io.*;
import java.util.Scanner;

public class Checker {

    public static int checker(TTSPData data, TTSPSolution solution){
        int feasible=1;
        if (data.instance != solution.instance){
            System.out.print("[Issue] The solution is not the one for this instance");
            return 0;
        }
        int nb_tech=data.instance.getTechs(); //number of technician
        int nb_interv=data.instance.getInterv(); // number of intervention
        int nb_domain=data.instance.getDomains(); //number of domains
        int nb_level=data.instance.getLevel()-1; //equal to the max level
        int nb_days=solution.tech_teams.lenght; //lenght of tech-teams= number of days

        // Checks on technicians ///////////////////////////////////////////////////////////////
        for(int i=0 ; i<nb_tech ; i++){ //browsing the list of technicians
            for(int j=0; j<nb_days ; j++){ // browsing the list of days
                
                //We check that the technician i unavailable on day j is assigned to team 0 /////////////////////
                int check= 0;
                for(int k=0 ; k<solution.tech_list.getDispoLength() ; k++){ // browsing the list of days where technician i is unavailaible
                    if(solution.tech_list[i].getDispo(k)==j){ 
                        check=i;
                    }
                }
                for(int l=0 ; l<solution.tech_teams[j].getTeamLength(0) ; l++){
                    if(solution.tech_teams[j].getTeam(0,l)==check){ 
                        check=-1;
                    }
                }
                if(check!=-1){ 
                    System.out.print("[Issue] The technician " + i + " is assigned to a team the day " + j + " while he is not available this day");
                    feasible=0;
                    break; // if the technician is not in the right team there is no point in making the following checks
                }

                // We check that technician i is assigned to a team on day j /////////////////////
                int check2=0;
                for(int l=1; l<solution.tech_teams[j].tgetTeamLength() ; l++){ //browsing the list of team except team 0
                    for(int k=0 ; k<solution.tech_teams[j].getTeamLength(l)-1 ; k++){ //browsing the list of technicians of eachteam
                        if (solution.tech_teams[j].getTeamLength(l)==0){
                            System.out.print("[Issue] Team " + l + " is empty on day "+ j);
                            feasible=0;
                        }
                        if(solution.tech_teams[j].getTeam(l,k)==i){ // 
                            check2=-1;
                        }
                    }
                }
                if(check2!=-1){
                    System.out.print("[Issue] Technician " + i + " is not assigned to any team on day "+ j);
                    feasible=0;
                    //break; // if the technician is not assigned there is no point in carrying out the following checks
                }
            }
        }

        // Check if the total duration of the e team's interventions on day d is less than 120 /////////////////////////////////////
        for(int d=0; d<nb_days ; d++){ // browsing the list of days
            for(int e=0 ; e<solution.tech_teams[d].getTeamLength() ; e++){ // browsing the list of teams
                int cpt=0; // to count the total working time of a day
                for(int i=0 ; i<nb_interv ; i++){ // browsing the list of interventions
                    if(solution.interv_dates[i].getDay()==d && solution.interv_dates[i].getTeam()==e){
                        int ST=solution.interv_dates[i].getInterv(); // 
                        cpt=cpt+solution.interv_list[ST].getTime();
                    }
                }
                if(cpt>120){
                    System.out.print("[Issue] The total duration of the " + e + " team's interventions on day " + d + "is too long (>120).");
                    feasible=0;
                }
            }
        }

        //////////////////////////
        for(int i=0 ; i<nb_interv ; i++){
            if(solution.inter_dates[i].getInterv()!=i+1){ 
                break; //the outsourced interventions are not in Interv_dates, therefore avoids a shift with interv_list
            }
            int start_i = solution.interv_dates[i].getDay()*120 + solution.interv_dates[i].getTime();
            int end_i = start_i+solution.interv_list[i].getTime();

            // An intervention that has been started must be finished on the same day.
            if(end_i>120){
                System.out.print("[Issue] Intervention" + i + " begin to late in day " + solution.interv_dates[i].getDay() + " to be finish the same day");
                feasible=0;
            }

            //  The intervention p belonging to Pred(i) ends before i begins ///
            for(int p=0 ; p<solution.interv_list[i].getPredsLength() ; p++){
                int pred= solution.interv_list[i].getPreds(p);
                int start_pred=solution.interv_dates[pred].getDay()*120 + solution.interv_dates[pred].getTime();
                if(solution.interv_list[pred].getTime()+start_pred> start_i){
                    System.out.print("[Issue] Intervention " + pred + " is an intervention that precedes " + i + " and ends after i is started.");
                    feasible=0;
                }
            }
        }

        ////////////////////// Check on outsourced interventions
        int nb_ST= solution.interv_list.length-solution.interv_dates.length;
        int[] interv_ST = new int[nb_ST];
        int cpt=0;
        for(int i=0 ; i<nb_interv ; i++){ //creation of a table of subcontracted interventions
            if(solution.interv_dates[cpt].getInterv()!=solution.interv_list[i].getNumber()){
                interv_ST[i]=solution.interv_list[i].getNumber();
            }else{
                cpt++;
            }
        }

         //////we check if cost is below or equal to the budget
        int cost=0;
        for(int i=0 ; i<nb_ST ; i++){ 
            cost=cost+solution.interv_list[i].getCost(); //cost total of outsourced interventions
        }
        if(cost>solution.instance.getAbandon()){
            System.out.print("[Issue] There is to many outsourced interventions, the total cost is higher than the budget");
            feasible=0;
        }

        /////// Check if the successors of an outsourced intervention are also outsourced
        for (int i=0; i<nb_interv ; i++){
            for(int j=0; j<nb_ST ; j++){
                int ST=interv_ST[j];
                if(solution.interv_list[i].getNumber()==ST){
                    break; //we check that we do not compare the outsourced intervention i with itself
                }
                int check1=0;
                if(check(solution.interv_list[i].getPreds(),ST)){ //check if outsourced intervention j belongs to pred(i)
                    if(!check(interv_ST, solution.interv_list[i].getNumber())){ //check if intervention i is outsourced
                        System.out.print("[Issue] the intervention " + i + "is not outsourced while his predecessor " + ST + " is outsourced");
                        feasible=0;
                    }
                }
            }
        }


        return feasible;
    }

    // method to check if an integer is present in an array
    public static boolean check(int[] tab, int val) {
        boolean b = false;
    
        for(int i : tab){
            if(i == val){
                b = true;
                break;
            }
        }
        return b;
    }
    
    public static void main(String[] args) throws FileNotFoundException {
        //TTSPSolution ttspSolution = SolutionReader("./solutions/sol_A_3_#2");
        //TTSPData ttspsolution = InstanceReader("./solutions/sol_A_3_#2");
        System.out.print("----------------------------\n");
        System.out.print("----- CHECK CONSTRAINTS ----\n");
        System.out.print("----------------------------\n");
        System.out.print("----------------------------\n");
        //int result = checker(ttspData, ttspSolution);
        //System.out.print("-> FEASIBLE =" + result + "(0=false/1=true)");
    }
}
