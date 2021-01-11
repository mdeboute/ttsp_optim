package src;

import src.dataClasses.TTSPData;
import src.readers.InstanceReader;
import src.readers.SolutionReader;
import src.solClasses.TTSPSolution;

public class Checker {
    public static int checker(TTSPData data, TTSPSolution solution) {
        int feasible = 1;
        int nb_tech = data.getInstance().getTechs(); //number of technician
        int nb_interv = data.getInstance().getInterv(); // number of intervention
        int nb_domain = data.getInstance().getDomains(); //number of domains
        int nb_level = data.getInstance().getLevel(); //equal to the max level
        int nb_days = solution.getTech_teams().length; //length of tech-teams= number of days

        // Checks on technicians ///////////////////////////////////////////////////////////////
        for (int i = 1; i <= nb_tech; i++) { //browsing the list of technicians
            for (int j = 1; j < nb_days; j++) { // browsing the list of days or list of teams each days
                //We check that the technician i unavailable on day j is assigned to team 0 /////////////////////
                if(check(data.getTechnician()[i].getDispo(),j)){
                    if(!check(solution.getTech_teams()[j].getTeam()[0],i)){
                        System.out.print("[Issue] The technician " + i + " is assigned to a team the day " + j + " while he is not available this day.\n");
                        feasible = 0;
                        continue; // if the technician is not in the right team there is no point in making the following checks
                    }
                }

                // We check that technician i is assigned to a team on day j /////////////////////
                int check2 = 0;
                for (int l = 0; l < solution.getTech_teams()[j].getTeam().length; l++) { //browsing the list of team except team 0
                        if (solution.getTech_teams()[j].getTeam()[l]==null) {
                            System.out.print("[Issue] Team " + l + " is empty on day " + j + ".\n");
                            feasible = 0;
                        }
                        if (check(solution.getTech_teams()[j].getTeam()[l],i)){ //
                            check2++;
                        }
                }
                if (check2==0) {
                    System.out.print("[Issue] Technician " + i + " is not assigned to any team on day " + j + ".\n");
                    feasible = 0;
                    //break; // if the technician is not assigned there is no point in carrying out the following checks
                }
                if (check2>1) {
                    System.out.print("[Issue] Technician " + i + " is assigned to " + check2 + " teams on day " + j + ".\n");
                    feasible = 0;
                    //break; // if the technician is not assigned there is no point in carrying out the following checks
                }
            }
        }

        // Check if the total duration of the e team's interventions on day d is less than 120 /////////////////////////////////////
        for (int d = 1; d < nb_days; d++) { // browsing the list of days
            for (int e = 1; e < solution.getTech_teams()[d].getTeam().length; e++) { // browsing the list of teams
                int cpt = 0; // to count the total working time of a day
                for (int i = 0; i < solution.getInterv_dates().length; i++) { // browsing the list of interventions
                    if (solution.getInterv_dates()[i].getDay() == d && solution.getInterv_dates()[i].getTeam() == e) {
                        int ST = solution.getInterv_dates()[i].getInterv(); //s
                        cpt = cpt + data.getIntervention()[ST].getTime();
                    }
                }
                if (cpt > 120) {
                    System.out.print("[Issue] The total duration of the " + e + " team's interventions on day " + d + " is too long (>120).\n");
                    feasible = 0;
                }
            }
        }

        for (int i = 0; i < solution.getInterv_dates().length; i++) {
            int num= solution.getInterv_dates()[i].getInterv();
            int start_day = solution.getInterv_dates()[i].getTime();
            int end_i = start_day + data.getIntervention()[num].getTime();

            // An intervention that has been started must be finished on the same day.
            if (end_i > 120) {
                System.out.print("[Issue] Intervention " + num + " begin to late in day " + solution.getInterv_dates()[i].getDay() + " to be finish the same day.\n");
                feasible = 0;
            }
            //  The intervention p belonging to Pred(i) ends before i begins ///
            int start_i=(solution.getInterv_dates()[i].getDay()-1) * 120 + solution.getInterv_dates()[i].getTime();
            for (int p = 0; p < data.getIntervention()[num].getPreds().length; p++) {
                int pred = data.getIntervention()[num].getPreds()[p];
                for (int l = 0; l < solution.getInterv_dates().length; l++) {
                    if (solution.getInterv_dates()[l].getInterv() == pred) {
                        int start_pred = (solution.getInterv_dates()[l].getDay()-1) * 120 + solution.getInterv_dates()[l].getTime();
                        if (data.getIntervention()[pred].getTime() + start_pred > start_i) {
                            System.out.print("[Issue] Intervention " + pred + " is an intervention that precedes " + num + " and ends after " + num + " started.\n");
                            feasible = 0;
                        }

                    }
                }
            }
        }

        int nb_ST = data.getIntervention().length - solution.getInterv_dates().length;
        int[] interv_ST = new int[nb_ST];
        int cpt = 0;
        int id=0;
        for (int i = 0; i < nb_interv-1; i++) { //creation of a table of outsourced interventions
            if (id< interv_ST.length && cpt<solution.getInterv_dates().length && solution.getInterv_dates()[cpt].getInterv() != data.getIntervention()[i + 1].getNumber()) {
                interv_ST[id] = data.getIntervention()[i + 1].getNumber();
                id++;
            } else {
                cpt++;
            }
        }
        //////we check if cost is below or equal to the budget
        int cost = 0;
        for (int value : interv_ST) {
            if(value != 0) {
                cost = cost + data.getIntervention()[value].getCost(); //cost total of outsourced interventions
            }
        }
        if (cost > data.getInstance().getAbandon()) {
            System.out.print("[Issue] There is to many outsourced interventions, the total cost is higher than the budget.\n");
            feasible = 0;
        }

        /////// Check if successors of an outsourced intervention are also outsourced
        for (int i = 1; i <= nb_interv; i++) {
            for (int j = 0; j < nb_ST; j++) {
                int ST = interv_ST[j];
                if (data.getIntervention()[i].getNumber() == ST) {
                    continue; //we check that we do not compare the outsourced intervention i with itself
                }
                if (check(data.getIntervention()[i].getPreds(), ST)) { //check if outsourced intervention j belongs to pred(i)
                    if (!check(interv_ST, data.getIntervention()[i].getNumber())) { //check if intervention i is outsourced
                        System.out.print("[Issue] the intervention " + i + " is not outsourced while his predecessor " + ST + " is outsourced.\n");
                        feasible = 0;
                    }
                }
            }
        }

        //////////we check that the team carrying out the intervention i has the skills in the different domains
        for (int i = 0; i < solution.getInterv_dates().length; i++) {
            int[][] dom_interv = new int[nb_domain][nb_level]; // array of domains and competences of intervention i
            int[][] dom_team = new int[nb_domain][nb_level]; // array of domains and competences of team that makes i
            int num = solution.getInterv_dates()[i].getInterv();
            int day = solution.getInterv_dates()[i].getDay();
            int team = solution.getInterv_dates()[i].getTeam();
            if(team>=solution.getTech_teams()[day].getTeam().length){
                System.out.println("[Issue] Team number " + team + " on day " + day + " doesn't exist and is assigned to intervention " + i);
                feasible = 0;
               continue;
            }
            int cpt1 = 0;
            //We fill in the array of domains and competences of intervention i
            for (int j = 0; j < nb_domain; j++) {
                for (int k = 0; k < nb_level; k++) {
                    dom_interv[j][k] = data.getIntervention()[num].getD()[cpt1];
                    dom_team[j][k] = 0;
                    cpt1++;
                }
            }

            //We fill in the array of domains and competences of team that makes i
            for (int m = 0; m < solution.getTech_teams()[day].getTeam()[team].length; m++) {
                int tech = solution.getTech_teams()[day].getTeam()[team][m];
                for (int j = 0; j < nb_domain; j++) {
                    int level = data.getTechnician()[tech].getD()[j+1];
                    for (int k = 0; k < level; k++) {
                        dom_team[j][k] += 1;
                    }
                }
            }
            //comparison of the 2 tables to check that the team is sufficiently competent
            for (int j = 0; j < nb_domain; j++) {
                for (int k = 0; k < nb_level; k++) {
                    if (dom_interv[j][k] > dom_team[j][k]) {
                        System.out.print("[Issue] The team " + team + " of the day " + day + " is not competent enough in the domain " + (j+1) + " for the level " + (k+1) + " to do the intervention " + num + ".\n");
                        feasible = 0;
                    }
                }
            }

        }


        return feasible;
    }

    // method to check if an integer is present in an array
    public static boolean check(int[] tab, int val) {
        boolean b = false;

        for (int i : tab) {
            if (i == val) {
                b = true;
                break;
            }
        }
        return b;
    }

    public static void main(String[] args) {
        TTSPSolution ttspSolution = SolutionReader.parse(args[0]);
        TTSPData ttspData = InstanceReader.parse(args[0]);
        System.out.print("----------------------------\n");
        System.out.print("----- CHECK CONSTRAINTS ----\n");
        System.out.print("----------------------------\n");
        System.out.print("----------------------------\n");
        int result = checker(ttspData, ttspSolution);
        System.out.println();
        System.out.print("-> FEASIBLE = " + result + " (0=false/1=true)\n");
    }
}
