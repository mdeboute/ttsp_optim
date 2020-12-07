package src.AlgorithmGB;

import src.Checker;
import src.dataClasses.TTSPData;
import src.readers.InstanceReader;
import src.solClasses.TTSPSolution;

import java.util.ArrayList;
import java.util.Collections;

public class algorithm_gb {

    public static TTSPSolution build(TTSPData data) {
        Solution solution = new Solution();
        solution.addDay(data);
        int priority = 1;
        while (priority != 5) {
            loop(data, solution, priority);
            priority++;
        }
        return buildTTSPSol.buildSol(data, solution);
    }

    public static void loop(TTSPData data, Solution solution,int priority){
        ArrayList<ArrayList<Integer>> First = buildArray(data, priority, solution);
        ArrayList<Integer> number = new ArrayList<>();
        int nb_loop= data.getInstance().getTechs();
        ArrayList<Integer> intervs;
        for(int j=0 ; j<2 ; j++) {
            intervs = First.get(j);
            intervs=tryToOutSource(data, solution, intervs);
            int count = intervs.size();
            int cpt = 0;
            int fail = 300;
            int loop = 0;
            int day = solution.getDays().size()-1;
            while (loop < fail) {
                if (cpt >= count && intervs.size() != 0 && solution.getDays(day).getTeams().size() != 0) {
                    solution.addDay(data);
                    day = solution.getDays().size()-1;
                    cpt = intervs.size();
                    count = 0;
                }
                //intervs = completeTeamDday(data, solution, intervs);
                for (int i = 0; i < nb_loop; i++) intervs = Chance(data, solution, intervs);
                //intervs = buildTeam(data, solution, intervs);
                cpt++;
                loop++;
            }
            if(solution.getDays(day).getTeams().size()==0) solution.getDays().remove(day);
            intervs.removeAll(solution.getIntervDone());
            number.addAll(intervs);
        }
        if(number.size()!=0) System.out.println(number.toString() +" sont les interventions non traités");
    }

    public static ArrayList<Integer> tryToOutSource(TTSPData data, Solution solution, ArrayList<Integer> interv) {
        for (Integer integer : interv) {
            if (!solution.getIntervDone().contains(integer)) solution.addOutSourced(data, integer);
        }
        interv.removeAll(solution.getIntervDone());
        interv.removeAll(solution.getIntervOS());
        return interv;
    }

    public static ArrayList<Integer> buildTeam(TTSPData data, Solution sol, ArrayList<Integer> intervs) {
        int count=intervs.size();
        int fail=0;
        int cpt=0;
        while (fail!=3){
            if(intervs.size()==0) return intervs;
            int inter = intervs.get(0);
            int day = sol.getDays().size()-1;
            if(cpt==count ){
                count=intervs.size();
                fail++;
                cpt=0;
            }
            int check = 0;
            int[][] skillsInterv = data.getIntervention()[inter].skills_interv(data);
            if(sol.getDays(day).getTeams().size()!= 0) {
                for (int t = 0; t < sol.getDays(day).getTeams().size(); t++) {
                    // team t is efficient for intervention i
                    if (sol.getDays(day).getTeams(t).isSufficient(data, skillsInterv)) {
                        if (sol.treatInterv(data, inter, 0, day, t, false)){
                            intervs.remove(0);
                            check = 1;
                            break;
                        }
                    }
                }
            }
            if (check == 1) continue;
            int num= data.getInstance().getLevel();
            // team t + n techs availables are efficient for intervention i
            if(sol.getDays(day).getTeams().size()!=0) {
                for (int t = 0; t < sol.getDays(day).getTeams().size(); t++) {
                    /////////
                    ArrayList<Integer> techs = new ArrayList<>();
                    int[][] skillsTeam = sol.getDays(day).getTeams(t).getDom_team();
                    check= addNtechToTeam(data,sol,day,inter,t,techs,skillsTeam, num);
                    if (check==1) intervs.remove(0);
                    /////////
                }
            }
            if (check == 1) continue;
            ArrayList<Integer> techs = new ArrayList<>();
            int[][] skill = new int[data.getInstance().getDomains()][data.getInstance().getLevel()];
            check = buildTeamNtech(data,sol,day,inter,techs,skill, 2);
            if(check==1) intervs.remove(0);
            if (check == 0) {
                intervs.add(inter);
                intervs.remove(0);
                cpt++;
            }
            intervs.removeAll(sol.getIntervDone());
        }
        return intervs;
    }

    // recursive fonction who take a intervention and a team of a day
    // take a tech, if the team+tech are sufficent to do the intervention, the intervention is done and tech add to the team
    // else we call this function, we do the same things with a additionnal tech
    // we do this the number of level max time (because it's the max of tech who can be required in a domain)
    public static int addNtechToTeam(TTSPData data, Solution sol, int day, int interv, int team, ArrayList<Integer> techs, int[][] skillsTeam, int num){
        if(num==0) return 0;
        int[][] skillsInterv = data.getIntervention()[interv].skills_interv(data);
        for (int j = 0; j < sol.getDays(day).getTechAvailable().size() - 1; j++) {
            int techJ = sol.getDays(day).getTechAvailable().get(j);
            if(techs.contains(techJ)) continue;
            int[][] skillsTech = Tech.skills_tech(data, techJ);
            int[][] teamAndJ = Tech.teamAndTech(data, skillsTeam, skillsTech);
            if (Tech.isSufficient(data, skillsInterv, teamAndJ) && sol.treatInterv(data, interv, j, day, team, true)) {
                sol.getDays(day).getTechAvailable().removeAll(techs);
                for (Integer tech : techs) {
                    sol.getDays(day).getTeams(team).add_tech(data, tech);
                }
                return 1;
            }else{
                techs.add(techJ);
                return addNtechToTeam(data,sol,day,interv,team,techs,teamAndJ, num-1);
            }
        }
        return 0;
    }

    // recursive function who take a intervention
    // take a tech, if the tech is sufficient to do the intervention, the intervention is done and a team create with the tech
    // else we call this function, we do the same things with a additionnal tech
    // we do this, the number of level max time (because it's the max of tech who can be required in a domain)
    public static int buildTeamNtech(TTSPData data, Solution sol, int day, int interv, ArrayList<Integer> techs, int[][] skillsTeam, int num){
        if(num==0) return 0;
        int[][] skillsInterv = data.getIntervention()[interv].skills_interv(data);
        for (int j = 0; j < sol.getDays(day).getTechAvailable().size() - 1; j++) {
            int techJ = sol.getDays(day).getTechAvailable().get(j);
            if(techs.contains(techJ)) continue;
            int[][] skillsTech = Tech.skills_tech(data, techJ);
            int[][] teamAndJ = Tech.teamAndTech(data, skillsTeam, skillsTech);
            if (Tech.isSufficient(data, skillsInterv, teamAndJ)){
                sol.getDays(day).createTeam(data, techJ);
                int team = sol.getDays(day).getTeams().size() - 1;
                if(sol.treatInterv(data, interv, j, day, team, true)) {
                    sol.getDays(day).getTechAvailable().removeAll(techs);
                    for (Integer tech : techs) {
                        sol.getDays(day).getTeams(team).add_tech(data, tech);
                    }
                    return 1;
                }
            }else{
                techs.add(techJ);
                return buildTeamNtech(data,sol,day,interv,techs,teamAndJ, num-1);
            }
        }
        return 0;
    }

    // tech the remaining avalaible techs and create a team, check if the team is good enough for each remaining interv
    public static ArrayList<Integer> Chance(TTSPData data, Solution sol, ArrayList<Integer> intervs){
        int day = sol.getDays().size()-1;
        sol.getDays(day).createTeam(data, sol.getDays(day).getTechAvailable().get(0));
        int team = sol.getDays(day).getTeams().size() - 1;
        for(int t=1 ; t<sol.getDays(day).getTechAvailable().size() ; t++){
            sol.getDays(day).getTeams(team).add_tech(data,sol.getDays(day).getTechAvailable().get(t));
        }
        sol.getDays(day).getTechAvailable().removeAll(sol.getDays(day).getTeams(team).getTechnician());
        for (int inter : intervs) {
            int[][] skillsInterv = data.getIntervention()[inter].skills_interv(data);
            // team t is efficient for intervention i
            if (sol.getDays(day).getTeams(team).isSufficient(data, skillsInterv)) {
                sol.treatInterv(data, inter, 0, day, team, false);
                if (sol.getDays(day).getTeams(team).isFull()) {
                    break;
                }
            }
        }//we check if we can remove a tech from the team creating (if he is useless for all the intervention made by the team)
        ArrayList<Integer> techs = new ArrayList<>();
        int[][] skills =sol.getDays(day).getTeams(team).getDom_team();
        for(int i=0 ; i<sol.getDays(day).getTeams(team).getTechnician().size() ; i++){
            int tech=sol.getDays(day).getTeams(team).getTechnician().get(i);
            int cpt=0;
            int[][] domTech= Tech.skills_tech(data,tech );
            skills=Tech.teamMinusTech(data,skills,domTech);
            for(int j=0 ; j< sol.getDays(day).getTeams(team).getInterv().size() ; j++){
                int[][] domInterv = data.getIntervention()[sol.getDays(day).getTeams(team).getInterv().get(j)].skills_interv(data);
                if(!Tech.isSufficient(data,domInterv, skills)) { cpt=1; skills= Tech.teamAndTech(data, skills, domTech); break; }
            }
            if(cpt==0) techs.add(tech);
        }
        //System.out.println(("les techniciens non utilisés sont : " + techs.toString()));
        sol.getDays(day).getTeams(team).getTechnician().removeAll(techs);
        sol.getDays(day).getTechAvailable().addAll(techs);
        if(sol.getDays(day).getTeams(team).getInterv().size()==0){
            sol.getDays(day).getTechAvailable().addAll(sol.getDays(day).getTeams(team).getTechnician());
            sol.getDays(day).getTeams().remove(team);
        }else intervs.removeAll(sol.getDays(day).getTeams(team).getInterv());
        Collections.sort(intervs);
        return intervs;
    }

    public static void LastChance(TTSPData data, Solution sol, ArrayList<Integer> intervs){
        for(int day=0 ; day<sol.getDays().size() ; day++){
            sol.getDays(day).createTeam(data, sol.getDays(day).getTechAvailable().get(0));
            int team = sol.getDays(day).getTeams().size() - 1;
            for(int tech=1 ; tech<sol.getDays(day).getTechAvailable().size() ; tech++){
                sol.getDays(day).getTeams(team).add_tech(data,sol.getDays(day).getTechAvailable().get(tech));
            }
            for (int inter : intervs) {
                int[][] skillsInterv = data.getIntervention()[inter].skills_interv(data);
                // team t is efficient for intervention i
                if (sol.getDays(day).getTeams(team).isSufficient(data, skillsInterv)) {
                    sol.treatInterv(data, inter, 0, day, team, false);
                    if (sol.getDays(day).getTeams(team).isFull()) break;
                }
            }
            if(sol.getDays(day).getTeams(team).getInterv().size()==0){
                sol.getDays(day).getTechAvailable().addAll(sol.getDays(day).getTeams(team).getTechnician());
                sol.getDays(day).getTeams().remove(team);
            }

        }
    }

    //use to try to complete the calendar of each team on day d (going further)
    public static ArrayList<Integer> completeTeamDday(TTSPData data, Solution sol, ArrayList<Integer> intervs) {
        for(int day=0 ; day<sol.getDays().size() ; day++) {
            for (int t = 0; t < sol.getDays(day).getTeams().size(); t++) {
                if (!sol.getDays(day).getTeams(t).isFull()) {
                    int cpt = intervs.size();
                    int i = 0;
                    while (i < cpt) {
                        int num = data.getInstance().getLevel();
                        ArrayList<Integer> techs = new ArrayList<>();
                        int[][] skillsTeam = sol.getDays(day).getTeams(t).getDom_team();
                        int check = addNtechToTeam(data, sol, day, intervs.get(0), t, techs, skillsTeam, num);
                        if (check == 0) intervs.add(intervs.get(0));
                        else if (check ==1 &&(intervs.get(0)==319 || intervs.get(0)==324)) System.out.println("j'enlève effectivement un technicien");
                        intervs.remove(0);
                        i++;
                    }
                }
            }
        }
        intervs.removeAll(sol.getIntervDone());
        Collections.sort(intervs);
        return intervs;
    }


    public static ArrayList<ArrayList<Integer>> buildArray(TTSPData data, int priority, Solution sol) {
        // build an ArrayList of 2 array List
        // the first one is an arraylist with intervention of priority (parameter priority) without predecessor and intervention
        // who are predecessor of intervention prioritaire
        // the second one is an arraylist of priority (parameter priority) whith predecessor

        int nb_interv = data.getInstance().getInterv();
        // create an arrayList with intervention of priority 1
        ArrayList<Integer> Prio = new ArrayList<>();
        ArrayList<Integer> PrioButPred = new ArrayList<>();
        for (int i = 1; i < nb_interv+1; i++) {
            if (data.getIntervention()[i].getPrio() == priority) {
                if(data.getIntervention()[i].getPreds().length==0 || data.getIntervention()[i].getPreds()==null) Prio.add(i);
                else PrioButPred.add(i);
            }
        }
        // Create an arrayList with predecessor of intervention of priority 1
        ArrayList<Integer> Pred = new ArrayList<>();
        for (Integer integer : PrioButPred) {
            for (int j = 0; j < data.getIntervention()[integer].getPreds().length; j++) {
                int pred = data.getIntervention()[integer].getPreds()[j];
                if (!sol.getIntervDone().contains(pred) && !Pred.contains(pred)) {
                    Pred.add(pred);
                }
            }
        }
        Collections.sort(Pred);
        // we add to the list Pred, all the predecessor of the predecessor of intervention of priority 1;
        int count=0;
        while(count< nb_interv) {
            for (int i = 0; i < Pred.size(); i++) {
                for (int j = 0; j < data.getIntervention()[Pred.get(i)].getPreds().length; j++) {
                    int pred = data.getIntervention()[Pred.get(i)].getPreds()[j];
                    if (!sol.getIntervDone().contains(pred) && !Pred.contains(pred)) {
                        Pred.add(pred);
                    }
                }
                if (!Prio.contains(Pred.get(i)) && !PrioButPred.contains(Pred.get(i))) Prio.add(Pred.get(i));
            }
            count++;
        }
        Collections.sort(PrioButPred);
        ArrayList<ArrayList<Integer>> Interv = new ArrayList<>();
        Interv.add(Prio);
        Interv.add(PrioButPred);
        return Interv;
    }




    public static void checker(TTSPData data, TTSPSolution sol){
        System.out.print("----------------------------\n");
        System.out.print("----- CHECK CONSTRAINTS ----\n");
        System.out.print("----------------------------\n");
        System.out.print("----------------------------\n");
        int result = Checker.checker(data, sol);
        System.out.println();
        System.out.print("-> FEASIBLE = " + result + " (0=false/1=true)\n");
    }

    public static void main(String[] args) {
        TTSPData ttspData = InstanceReader.parse("datas/datasetB/data8");
        TTSPSolution ttspsolution = build(ttspData);
        System.out.println(ttspsolution.toString());
        checker(ttspData, ttspsolution);
    }
}
