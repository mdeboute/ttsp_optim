package src;

import java.io.*;
import java.util.Scanner;

public class Checker {

    public static int checker(TTSPData data, TTSPSolution solution){
        if (data.instance != solution.instance){
            System.out.print("[Issue] The solution is not the one for this instance");
            return 0;
        }
        int nb_tech=data.instance.techs; //number of technician
        int nb_interv=data.instance.interv; // number of intervention
        int nb_domain=data.instance.domains; //number of domains
        int nb_level=data.instance.level-1; //equal to the max level
        int nb_days=solution.tech_teams.lenght; //lenght of tech-teams= number of days

        // Checks on technicians ///////////////////////////////////////////////////////////////
        for(int i=0 ; i<nb_tech ; i++){ //browsing the list of technicians
            for(int j=0; j<nb_days ; j++){ // browsing the list of days
                
                //We check that the technician i unavailable on day j is assigned to team 0 /////////////////////
                int check= 0;
                for(int k=0 ; k<solution.tech_list.dispo.lenght ; k++){ // browsing the list of days where technician i is unavailaible
                    if(solution.tech_list[i].dispo[k]==j){ 
                        check=i;
                    }
                }
                for(int l=0 ; l<solution.tech_teams[j].team[0].lenght ; l++){
                    if(solution.tech_teams[j].team[0][l]==check){ 
                        check=-1;
                    }
                }
                if(check!=-1){ 
                    System.out.print("[Issue] The technician " + i + " is assigned to a team the day " + j + " while he is not available this day");
                    break; // if the technician is not in the right team there is no point in making the following checks
                }

                // We check that technician i is assigned to a team on day j /////////////////////
                int check2=0;
                for(int l=1; l<solution.tech_teams[j].team.lenght ; l++){ //browsing the list of team except team 0
                    for(int k=0 ; k<solution.tech_teams[j].team[l].lenght-1 ; k++){ //browsing the list of technicians of each team
                        if (solution.tech_teams[j].team[l][k].lenght==0){
                            System.out.print("[Issue] Team " + l + " is empty on day "+ j);
                        }
                        if(solution.tech_teams[j].team[l][k]==i){ // 
                            check2=-1;
                        }
                    }
                }
                if(check2!=-1){
                    System.out.print("[Issue] Technician " + i + " is not assigned to any team on day "+ j);
                    //break; // if the technician is not assigned there is no point in carrying out the following checks
                }
            }
        }

        // a revoir puisque ne prend pas en compte que certaines interventions sont sous-traités
        // Check if the total duration of the e team's interventions on day d is less than 120 //////////////////////////////////////////////////////////////
        for(int d=0; d<nb_days ; d++){ // browsing the list of days
            for(int e=0 ; e<solution.tech_teams[d].team.lenght ; e++){ // browsing the list of teams
                int cpt=0; // to count the total working time of a day
                for(int i=0 ; i<nb_interv ; i++){ // browsing the list of interventions
                    if(solution.interv_dates[i].day==d && solution.interv_dates[i].team==e){
                        cpt=cpt+solution.interv_list[i].time;
                    }
                }
                if(cpt>120){
                    System.out.print("[Issue] The total duration of the " + e + " team's interventions on day " + d + "is too long (>120).");
                }
            }
        }

        ////////////////////////////////////////////////////////////
        int interv_ST=0;
        for(int i=0 ; i<nb_interv ; i++){
            //(if solution.interv_dates[i].interv!=i+1){
            //    interv_ST=interv_ST+solution.interv_list[i]
            //}


            int start_i = solution.interv_dates[i].day*120 + solution.interv_dates[i].time;
            int end_i = start_i+solution.interv_list[i].time;

            // An intervention that has been started must be finished on the same day.
            if(end_i>120){
                System.out.print("[Issue] Intervention" + i + " begin to late in day " + solution.interv_dates[i].day + " to be finish the same day");
            }

            //  The intervention p belonging to Pred(i) ends before i begins ///
            for(int p=0 ; p<solution.interv_list[i].preds.lenght ; p++){
                int pred= solution.interv_list[i].preds[p];
                int start_pred=solution.interv_dates[pred].day*120 + solution.interv_dates[pred].time;
                if(solution.interv_list[pred].time+start_pred> start_i){
                    System.out.print("[Issue] Intervention " + pred + " is an intervention that precedes " + i + " and ends after i is started.");
                }
            }
        }



        return 1;
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
