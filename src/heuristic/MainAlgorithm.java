package src.heuristic;

import src.Checker;
import src.Evaluator;
import src.dataClasses.TTSPData;
import src.readers.InstanceReader;
import src.solClasses.TTSPSolution;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

import static src.Solver.copyFullRecursive;

public class MainAlgorithm {

    /**
     * build is the main method, it's here that the heuristic is build.
     * It's create a new Solution with the corresponding class and then calls differents method for each priority of
     * intervention.
     *
     * @param data is the instance that we want to resolve
     * @return a TTSPSolution of the instance given
     * @see Solution
     * @see BuildTTSPSol
     */
    public static TTSPSolution build(TTSPData data) {
        Solution solution = new Solution();
        solution.addDay(data);
        ArrayList<Integer> intervRest = new ArrayList<>(); //to store all intervention that the process doesn't proceed
        int priority = 1;
        while (priority != 5) { //because max priority is 4 for some instance
            ArrayList<Integer> rest = (loop(data, solution, priority));  //treat interventions of priority @priority
            priority++;
            rest.removeAll(intervRest); // store interventiosn don't made.
            intervRest.addAll(rest);
        }
        intervRest.removeAll(solution.getIntervDone());
        intervRest = completeTeamDday(data, solution, intervRest);
        // if statement use only if Soluition return is not complete (that never happens for any instance given)
        if (intervRest.size() != 0) System.out.println(intervRest.toString() + " sont les interventions non traités");
        return BuildTTSPSol.buildSol(data, solution); // to transform the Solution into a TTSPSolution
    }


    /**
     * loop is the methods that treat interventions given in an arraylist.
     * It's begin by calling a method that sort intervention of priority 1 into 2 arraylist, the first one is all
     * predecessors of intervention of priority 1, and the second one is all intervention of priority 1.
     * then it's call some methods in a loop to treat interventions.
     *
     * @param data     the corresponding instance
     * @param solution the solution create and who to be completed
     * @param priority the actual priority that we actually treat
     * @return an arraylist with all interventions don't treat
     */
    public static ArrayList<Integer> loop(TTSPData data, Solution solution, int priority) {
        ArrayList<ArrayList<Integer>> First = buildArray(data, priority, solution); // cals of a method of sorting
        ArrayList<Integer> number = new ArrayList<>();
        int nb_loop = data.getInstance().getTechs();
        ArrayList<Integer> intervs = new ArrayList<>();
        for (int j = 0; j < 2; j++) { // to treat both of the arraylist of interventions returns by buildArray
            intervs = First.get(j);
            intervs = tryToOutSource(data, solution, intervs); // call a methods who try to outsource each intervention given
            intervs.addAll(number);
            int count = intervs.size();
            int cpt = 0, loop = 0, fail = 300; // variable use to look over the arraylist of interventions.
            int day = solution.getDays().size() - 1;
            while (loop < fail) { // while all interventions don't have been treat or we stop the
                // we have done to many times the loop.
                // if we have run and try to treat all interventions at least one time, and if all interventions are not
                // treated, we add a new day.
                if (cpt >= count && intervs.size() != 0 && solution.getDays(day).getTeams().size() != 0) {
                    solution.addDay(data);
                    day = solution.getDays().size() - 1;
                    cpt = intervs.size();
                    count = 0;
                }
                for (int i = 0; i < nb_loop; i++) { // we call the assignment method many times in one loop
                    if (data.getInstance().getInterv() > 10) { // if there is more than 10 interventions in the instance
                        // because we see that the algorithm is less efficient is we call this method with less than
                        // 10 interventions to treat
                        //existing teams.
                        intervs = completeTeamDday(data, solution, intervs); // a method to complete all the already
                        intervs = sortByTimeInterv(data, intervs); // sort interventions in terms of time of the interventions
                    }
                    if (solution.getDays(day).getTechAvailable().size() != 0) { //if there are technicians always available this day
                        intervs = Chance(data, solution, intervs, solution.getDays().size() - 1);
                        // we call the main method of treatment of interventions
                    }

                }
                cpt++;
                loop++;
            }
            // if after all treatment of interventions, the last day is empty, we remove it.
            if (solution.getDays(day).getTeams().size() == 0) solution.getDays().remove(day);
            for (Integer interv : intervs) {
                if (!number.contains(interv)) number.add(interv);
            }
            intervs.removeAll(solution.getIntervDone()); //to be sure that we are not trying to treat an intervention
            //already assigned
        }
        return intervs;
    }

    /**
     * tryToOutSource is the method who allow to out source some interventions. It's calls at the begin of the proccess
     * in method loop. call a method of the solution class dto try to out source intervention
     *
     * @param data     the data of the corresponding instance
     * @param solution the solution that we build
     * @param interv   an arraylist of interventions that we want to try to out source
     * @return an arraylsit of all interventions not out source
     * @see Solution
     */
    public static ArrayList<Integer> tryToOutSource(TTSPData data, Solution solution, ArrayList<Integer> interv) {
        for (Integer integer : interv) { // for all interventions, we call the method to add an out sourced intervention
            if (!solution.getIntervDone().contains(integer)) solution.addOutSourced(data, integer);
        }
        interv.removeAll(solution.getIntervDone());
        interv.removeAll(solution.getIntervOS());
        // we remove of the returned list all the interventions that we choose to out source.
        return interv;
    }


    /**
     * Chance is the main method of assignement of intervention. It takes the remaining avalaible techs of a day and
     * create a team with all of it, check if the team is good enough for each interventions of an arrayList, if the team
     * is sufficient enough for an intervention, we assign it to the team, if the team is not already full.
     * At the end, we remove all techs useless of the team.
     *
     * @param data    the data of the corresponding instance
     * @param sol     the solution that we build
     * @param intervs an arraylist of interventions that we want to treat
     * @param day     the day where we create the team with all available techs
     * @return the arrayList of all interventions don't treat yet.
     * @see Solution
     */
    public static ArrayList<Integer> Chance(TTSPData data, Solution sol, ArrayList<Integer> intervs, int day) {
        sol.getDays(day).createTeam(data, sol.getDays(day).getTechAvailable().get(0)); //create a new team day @day
        int team = sol.getDays(day).getTeams().size() - 1;
        for (int t = 0; t < sol.getDays(day).getTechAvailable().size(); t++) { // add all available tech in the create team
            sol.getDays(day).getTeams(team).add_tech(data, sol.getDays(day).getTechAvailable().get(t));
        }
        sol.getDays(day).getTechAvailable().removeAll(sol.getDays(day).getTeams(team).getTechnician());
        //for all interventions, if the skills of the team and if the team isn't full, we add it to the team
        for (int inter : intervs) {
            int[][] skillsInterv = data.getIntervention()[inter].skills_interv(data);
            // team t is efficient for intervention i
            if (sol.getDays(day).getTeams(team).isSufficient(data, skillsInterv)) { //call method that check if a
                // team is sufficient for an intervention
                sol.treatInterv(data, inter, 0, day, team, false); // call method that treat the adding
                // of an intervention to a team.
                if (sol.getDays(day).getTeams(team).isFull()) {
                    break;
                }
            }
        }
        removeUselessTech(data, sol, team, day); // call a method who remove all tech a the create team who are useless,
        //which means that the teams can do all their interventions even if this technicians is not in anymore
        if (sol.getDays(day).getTeams(team).getInterv().size() == 0) { //if any intervention have been assigned to the
            // create team, we remove it and make all technicians of the teams availanle again.
            sol.getDays(day).getTechAvailable().addAll(sol.getDays(day).getTeams(team).getTechnician());
            sol.getDays(day).getTeams().remove(team);
        } else
            intervs.removeAll(sol.getDays(day).getTeams(team).getInterv()); //esle, we remove all interventions assigned
        // to this team of the list of interventions to treat.
        return intervs;
    }


    /**
     * removeUselessTech check if we can remove some technicians from a team
     * (if he is useless for all the intervention made by the team)
     *
     * @param team is the team where we want to remove technicians
     * @param day  is the day coresponding of the team
     */
    public static void removeUselessTech(TTSPData data, Solution sol, int team, int day) {
        ArrayList<Integer> techs = new ArrayList<>();
        int[][] skills = sol.getDays(day).getTeams(team).getDom_team();
        for (int i = 0; i < sol.getDays(day).getTeams(team).getTechnician().size(); i++) {
            int tech = sol.getDays(day).getTeams(team).getTechnician().get(i);
            int cpt = 0;
            int[][] domTech = Tech.skills_tech(data, tech);
            skills = Tech.teamMinusTech(data, skills, domTech);
            for (int j = 0; j < sol.getDays(day).getTeams(team).getInterv().size(); j++) {
                int[][] domInterv = data.getIntervention()[sol.getDays(day).getTeams(team).getInterv().get(j)].skills_interv(data);
                if (!Tech.isSufficient(data, domInterv, skills)) {
                    cpt = 1;
                    skills = Tech.teamAndTech(data, skills, domTech);
                    break;
                }
            }
            if (cpt == 0) techs.add(tech);
        }
        for (Integer tech : techs) {
            if (sol.getDays(day).getTeams(team).getTechnician().contains(tech))
                sol.getDays(day).getTeams(team).remove_tech(data, tech);
        }
        sol.getDays(day).getTechAvailable().addAll(techs);
    }

    /**
     * completeTeamDday use to try to complete the calendar each day. For each day, if some technicians are always
     * available, the method call the method Chance to try to assign the remaining intervention (completeTeamDday is call
     * at the end of the process)
     *
     * @param intervs is the list of all interventions not yet treated
     * @return the list not yet treated after this step.
     */
    public static ArrayList<Integer> completeTeamDday(TTSPData data, Solution sol, ArrayList<Integer> intervs) {
        for (int day = 0; day < sol.getDays().size(); day++) {
            for (int team = 0; team < sol.getDays(day).getTeams().size(); team++) {
                if (!sol.getDays(day).getTeams(team).isFull()) {
                    if (sol.getDays(day).getTechAvailable().size() != 0) {
                        intervs = Chance(data, sol, intervs, day);
                    }
                }
            }
        }
        intervs.removeAll(sol.getIntervDone());
        intervs = sortByTimeInterv(data, intervs);
        return intervs;
    }

    /**
     * sortByTimeInterv sort a list of interventions in according to the duration of each intervention
     * (descending order)
     *
     * @param intervs the list of interventions that we want to sort
     * @return intervs but sorted
     */
    public static ArrayList<Integer> sortByTimeInterv(TTSPData data, ArrayList<Integer> intervs) {
        ArrayList<int[]> sumSkills = new ArrayList<>();
        for (Integer integer : intervs) { // fill a list of an array of 2 Integer : the first one is the number of the
            // intervention, the second one is the duration of the intervention
            int[] skills = new int[2];
            skills[0] = integer;
            int sum = data.getIntervention()[integer].getTime();
            skills[1] = sum;
            sumSkills.add(skills);
        }
        ArrayList<Integer> interventions = new ArrayList<>();
        while (sumSkills.size() != 0) {
            int max = 0; //to search the biger time
            int interv = 0; // to save the number of the interventiion with the bigger time
            int index = 0; //to save the index in the list pf the intervention with the bigger time
            for (int i = 0; i < sumSkills.size(); i++) {
                if (sumSkills.get(i)[1] > max) {
                    max = sumSkills.get(i)[1];
                    interv = sumSkills.get(i)[0];
                    index = i;
                }
            }
            interventions.add(interv);
            sumSkills.remove(index);
        }
        return interventions;
    }

    /**
     * buildArray build an ArrayList of 2 array List : the first one is an arraylist with intervention of priority
     * (parameter priority) without predecessor and intervention who are predecessor of intervention prioritaire,
     * the second one is an arraylist of priority (parameter priority) whith predecessor
     *
     * @param priority the priority of interventions that we want to treat
     * @return an ArrayList of 2 ArrayList with interventiosn of prirority @priority and their predecessors
     */
    public static ArrayList<ArrayList<Integer>> buildArray(TTSPData data, int priority, Solution sol) {
        int nb_interv = data.getInstance().getInterv();
        // create an arrayList with intervention of priority 1
        ArrayList<Integer> Prio = new ArrayList<>();
        ArrayList<Integer> PrioButPred = new ArrayList<>();
        for (int i = 1; i < nb_interv + 1; i++) {
            if (data.getIntervention()[i].getPrio() == priority) {
                if (data.getIntervention()[i].getPreds().length == 0 || data.getIntervention()[i].getPreds() == null)
                    Prio.add(i);
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
        int count = 0;
        while (count < nb_interv) {
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

    /**
     * Evaluator calls the Evaluator and print the cost of the solution
     */
    public static void Evaluator(TTSPData ttspData, TTSPSolution ttspSolution) {
        int[] result = Evaluator.evaluator(ttspData, ttspSolution);
        System.out.print("-> TOTAL COST = " + result[7]);
    }

    /**
     * checker calls the Checker and print if the solution is feasible, or problems if it's not feasible
     */
    public static void checker(TTSPData data, TTSPSolution sol) {
        int result = Checker.checker(data, sol);
        System.out.print("-> FEASIBLE = " + result + " (0=false/1=true)\n");
    }


    /**
     * Main method is used only to test the algorithm directly on all the instance of a dataset
     */
    public static void main(String[] args) {
        for (int i = 1; i <11; i++) {
            System.out.println("datas/datasetA/data" + i + " :");
            TTSPData ttspData = InstanceReader.parse("datas/datasetA/data" + i);
            Long begin =  System.currentTimeMillis();
            TTSPSolution ttspsolution = build(ttspData);
            Long end =  System.currentTimeMillis();
            System.out.println("Execution in " + (end-begin) + " ms");
            checker(ttspData, ttspsolution);
            Evaluator(ttspData, ttspsolution);
            System.out.println("\n");

            // --- Creating the solution files ---
            String filePath = "datas/datasetA/data" + i;
            String[] dataName = filePath.split("/");
            String filepathSol = "datas/heuristicSolutions/" + dataName[dataName.length - 1] + "/";
            copyFullRecursive(new File(filePath), new File("datas/heuristicSolutions/"));

            // First file :
            try {
                FileWriter fw = new FileWriter(filepathSol + "interv_dates", false); // create file writer (false to erase the file if it already exists)  -> filePath is a String that represents the path to the file that will be created/written
                BufferedWriter output = new BufferedWriter(fw); // create buffered writer
                for (int k = 0; k < ttspsolution.getInterv_dates().length; ++k) {
                    output.write("" + ttspsolution.getInterv_dates()[k].getInterv()); // writes into the buffer
                    output.write(" " + ttspsolution.getInterv_dates()[k].getDay());
                    output.write(" " + Math.round(ttspsolution.getInterv_dates()[k].getTime()));
                    output.write(" " + ttspsolution.getInterv_dates()[k].getTeam());
                    output.write("\n"); // to go the next line
                }
                output.flush(); // flushes the content of buffer to the file (it writes the content)
                output.close(); // close the buffer
                fw.close(); // close the writer

            } catch (IOException e) {
                e.printStackTrace();
                throw new IllegalStateException("Error when writing the file\n");
            }

            //Second file :
            try {
                FileWriter fw = new FileWriter(filepathSol + "tech_teams", false);
                BufferedWriter output = new BufferedWriter(fw);
                for (int k = 1; k < ttspsolution.getTech_teams().length; ++k) {
                    output.write("" + k);
                    output.write(" " + Arrays.deepToString(ttspsolution.getTech_teams()[k].getTeam())
                            .replace(",", "") //remove the commas
                            .replace("[[", "[")
                            .replace("]]", "]")
                            .replace("  ", " ")
                            .replace("[", "[ ")
                            .replace("]", " ]")
                            .trim());
                    output.write("\n");
                }
                output.flush();
                output.close();
                fw.close();
            } catch (IOException e) {
                e.printStackTrace();
                throw new IllegalStateException("Error when writing the file\n");
            }
        }
    }
}
