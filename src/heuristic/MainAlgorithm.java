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

    public static TTSPSolution build(TTSPData data) {
        Solution solution = new Solution();
        solution.addDay(data);
        ArrayList<Integer> intervRest = new ArrayList<>();
        int priority = 1;
        while (priority != 5) {
            ArrayList<Integer> rest = (loop(data, solution, priority));
            priority++;
            rest.removeAll(intervRest);
            intervRest.addAll(rest);
        }
        intervRest.removeAll(solution.getIntervDone());
        intervRest = completeTeamDday(data, solution, intervRest);
        if (intervRest.size() != 0) System.out.println(intervRest.toString() + " sont les interventions non traités");
        return buildTTSPSol.buildSol(data, solution);
    }

    public static ArrayList<Integer> loop(TTSPData data, Solution solution, int priority) {
        ArrayList<ArrayList<Integer>> First = buildArray(data, priority, solution);
        ArrayList<Integer> number = new ArrayList<>();
        int nb_loop = data.getInstance().getTechs();
        ArrayList<Integer> intervs = new ArrayList<>();
        for (int j = 0; j < 2; j++) {
            intervs = First.get(j);
            intervs = tryToOutSource(data, solution, intervs);
            intervs.addAll(number);
            int count = intervs.size();
            int cpt = 0;
            int fail = 300;
            int loop = 0;
            int day = solution.getDays().size() - 1;
            while (loop < fail) {
                if (cpt >= count && intervs.size() != 0 && solution.getDays(day).getTeams().size() != 0) {
                    solution.addDay(data);
                    day = solution.getDays().size() - 1;
                    cpt = intervs.size();
                    count = 0;
                }
                for (int i = 0; i < nb_loop; i++) {
                    if (data.getInstance().getInterv() > 10) {
                        intervs = completeTeamDday(data, solution, intervs);
                        intervs = sortByTimeInterv(data, intervs);
                    }
                    if (solution.getDays(day).getTechAvailable().size() != 0)
                        intervs = Chance(data, solution, intervs, solution.getDays().size() - 1);
                }
                cpt++;
                loop++;
            }
            if (solution.getDays(day).getTeams().size() == 0) solution.getDays().remove(day);
            for (Integer interv : intervs) {
                if (!number.contains(interv)) number.add(interv);
            }
            intervs.removeAll(solution.getIntervDone());
        }
        return intervs;
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
        int count = intervs.size();
        int fail = 0;
        while (fail != count * 2) {
            if (intervs.size() == 0) return intervs;
            int inter = intervs.get(0);
            int day = sol.getDays().size() - 1;
            int check = 0;
            int[][] skillsInterv = data.getIntervention()[inter].skills_interv(data);
            if (sol.getDays(day).getTeams().size() != 0) {
                for (int t = 0; t < sol.getDays(day).getTeams().size(); t++) {
                    // team t is efficient for intervention i
                    if (sol.getDays(day).getTeams(t).isSufficient(data, skillsInterv)) {
                        if (sol.treatInterv(data, inter, 0, day, t, false)) {
                            intervs.remove(0);
                            check = 1;
                            break;
                        }
                    }
                }
            }
            if (check == 1) continue;
            int num = data.getInstance().getLevel();
            // team t + n techs availables are efficient for intervention i
            if (sol.getDays(day).getTeams().size() != 0) {
                for (int t = 0; t < sol.getDays(day).getTeams().size(); t++) {
                    /////////
                    ArrayList<Integer> techs = new ArrayList<>();
                    int[][] skillsTeam = sol.getDays(day).getTeams(t).getDom_team();
                    check = addnTechToTeam(data, sol, day, inter, t, techs, skillsTeam, num);
                    if (check == 1) intervs.remove(0);
                    /////////
                }
            }
            if (check == 1) continue;
            ArrayList<Integer> techs = new ArrayList<>();
            int[][] skill = new int[data.getInstance().getDomains()][data.getInstance().getLevel()];
            check = buildTeamNtech(data, sol, day, inter, techs, skill, 2);
            if (check == 1) intervs.remove(0);
            if (check == 0) {
                intervs.add(inter);
                intervs.remove(0);
            }
            intervs.removeAll(sol.getIntervDone());
            fail++;
        }
        return intervs;
    }

    // recursive function who take a intervention and a team of a day
    // take a tech, if the team+tech are sufficent to do the intervention, the intervention is done and tech add to the team
    // else we call this function, we do the same things with a additionnal tech
    // we do this the number of level max time (because it's the max of tech who can be required in a domain)
    public static int addnTechToTeam(TTSPData data, Solution sol, int day, int interv, int team, ArrayList<Integer> techs, int[][] skillsTeam, int num) {
        if (num == 0) return 0;
        int[][] skillsInterv = data.getIntervention()[interv].skills_interv(data);
        for (int j = 0; j < sol.getDays(day).getTechAvailable().size(); j++) {
            int techJ = sol.getDays(day).getTechAvailable().get(j);
            if (techs.contains(techJ)) continue;
            int[][] skillsTech = Tech.skills_tech(data, techJ);
            int[][] teamAndJ = Tech.teamAndTech(data, skillsTeam, skillsTech);
            if (Tech.isSufficient(data, skillsInterv, teamAndJ) && sol.treatInterv(data, interv, j, day, team, true)) {
                sol.getDays(day).getTechAvailable().removeAll(techs);
                for (Integer tech : techs) {
                    sol.getDays(day).getTeams(team).add_tech(data, tech);
                }
                removeUselessTech(data, sol, team, day);
                return 1;
            } else {
                techs.add(techJ);
                return addnTechToTeam(data, sol, day, interv, team, techs, teamAndJ, num - 1);
            }
        }
        return 0;
    }

    // recursive function who take a intervention
    // take a tech, if the tech is sufficient to do the intervention, the intervention is done and a team create with the tech
    // else we call this function, we do the same things with a additionnal tech
    // we do this, the number of level max time (because it's the max of tech who can be required in a domain)
    public static int buildTeamNtech(TTSPData data, Solution sol, int day, int interv, ArrayList<Integer> techs, int[][] skillsTeam, int num) {
        if (num == 0) return 0;
        int[][] skillsInterv = data.getIntervention()[interv].skills_interv(data);
        for (int j = 0; j < sol.getDays(day).getTechAvailable().size() - 1; j++) {
            int techJ = sol.getDays(day).getTechAvailable().get(j);
            if (techs.contains(techJ)) continue;
            int[][] skillsTech = Tech.skills_tech(data, techJ);
            int[][] teamAndJ = Tech.teamAndTech(data, skillsTeam, skillsTech);
            if (Tech.isSufficient(data, skillsInterv, teamAndJ)) {
                sol.getDays(day).createTeam(data, techJ);
                int team = sol.getDays(day).getTeams().size() - 1;
                if (sol.treatInterv(data, interv, j, day, team, true)) {
                    sol.getDays(day).getTechAvailable().removeAll(techs);
                    for (Integer tech : techs) {
                        sol.getDays(day).getTeams(team).add_tech(data, tech);
                    }
                    return 1;
                }
            } else {
                techs.add(techJ);
                return buildTeamNtech(data, sol, day, interv, techs, teamAndJ, num - 1);
            }
        }
        return 0;
    }

    // tech the remaining avalaible techs and create a team, check if the team is good enough for each remaining interv
    public static ArrayList<Integer> Chance(TTSPData data, Solution sol, ArrayList<Integer> intervs, int day) {
        sol.getDays(day).createTeam(data, sol.getDays(day).getTechAvailable().get(0));
        int team = sol.getDays(day).getTeams().size() - 1;
        for (int t = 0; t < sol.getDays(day).getTechAvailable().size(); t++) {
            sol.getDays(day).getTeams(team).add_tech(data, sol.getDays(day).getTechAvailable().get(t));
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
        }
        removeUselessTech(data, sol, team, day);
        if (sol.getDays(day).getTeams(team).getInterv().size() == 0) {
            sol.getDays(day).getTechAvailable().addAll(sol.getDays(day).getTeams(team).getTechnician());
            sol.getDays(day).getTeams().remove(team);
        } else intervs.removeAll(sol.getDays(day).getTeams(team).getInterv());
        return intervs;
    }

    //we check if we can remove a tech from the team creating (if he is useless for all the intervention made by the team)
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
        //System.out.println(("les techniciens non utilisés sont : " + techs.toString()));
        sol.getDays(day).getTeams(team).getTechnician();
        for (Integer tech : techs) {
            if (sol.getDays(day).getTeams(team).getTechnician().contains(tech))
                sol.getDays(day).getTeams(team).remove_tech(data, tech);
        }
        sol.getDays(day).getTechAvailable().addAll(techs);
    }

    public static ArrayList<Integer> LastChance(TTSPData data, Solution sol, ArrayList<Integer> intervs) {
        if (intervs.size() == 0) return intervs;
        sol.addDay(data);
        int day = sol.getDays().size() - 1;
        sol.getDays(day).createTeam(data, sol.getDays(day).getTechAvailable().get(0));
        int team = sol.getDays(day).getTeams().size() - 1;
        for (int t = 0; t < sol.getDays(day).getTechAvailable().size(); t++) {
            sol.getDays(day).getTeams(team).add_tech(data, sol.getDays(day).getTechAvailable().get(t));
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
        }
        removeUselessTech(data, sol, team, day);
        if (sol.getDays(day).getTeams(team).getInterv().size() == 0) {
            sol.getDays(day).getTechAvailable().addAll(sol.getDays(day).getTeams(team).getTechnician());
            sol.getDays(day).getTeams().remove(team);
        } else intervs.removeAll(sol.getDays(day).getTeams(team).getInterv());
        return intervs;
    }

    //use to try to complete the calendar of each team on day d (going further)
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

    public static ArrayList<Integer> sortByTimeInterv(TTSPData data, ArrayList<Integer> intervs) {
        int levelMax = data.getInstance().getLevel();
        ArrayList<int[]> sumSkills = new ArrayList<>();
        for (Integer integer : intervs) {
            int[] skills = new int[2];
            skills[0] = integer;
            int sum = data.getIntervention()[integer].getTime();
            skills[1] = sum;
            sumSkills.add(skills);
        }
        ArrayList<Integer> interventions = new ArrayList<>();
        while (sumSkills.size() != 0) {
            int max = 0;
            int interv = 0;
            int index = 0;
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

    public static ArrayList<Integer> sortBySkillsTechs(TTSPData data, ArrayList<Integer> techs) {
        ArrayList<int[]> sumSkills = new ArrayList<>();
        for (Integer integer : techs) {
            int[] skills = new int[2];
            skills[0] = integer;
            int sum = 0;
            for (int j = 0; j < data.getInstance().getDomains(); j++) {
                sum = sum + data.getTechnician()[integer].getD()[j];
            }
            skills[1] = sum;
            sumSkills.add(skills);
        }
        ArrayList<Integer> technicians = new ArrayList<>();
        while (sumSkills.size() != 0) {
            int max = 0;
            int tech = 0;
            int index = 0;
            for (int i = 0; i < sumSkills.size(); i++) {
                if (sumSkills.get(i)[1] > max) {
                    max = sumSkills.get(i)[1];
                    tech = sumSkills.get(i)[0];
                    index = i;
                }
            }
            technicians.add(tech);
            sumSkills.remove(index);
        }
        return technicians;
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

    public static void Evaluator(TTSPData ttspData, TTSPSolution ttspSolution) {
        int[] result = Evaluator.evaluator(ttspData, ttspSolution);
        System.out.print("-> TOTAL COST = " + result[7]);
    }


    public static void checker(TTSPData data, TTSPSolution sol) {
        int result = Checker.checker(data, sol);
        System.out.print("-> FEASIBLE = " + result + " (0=false/1=true)\n");
    }

    public static void main(String[] args) {
        for (int i = 1; i < 10; i++) {
            System.out.println("datas/datasetA/data" + i + " :");
            TTSPData ttspData = InstanceReader.parse("datas/datasetA/data" + i);
            TTSPSolution ttspsolution = build(ttspData);
            //System.out.println(ttspsolution.toString());
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
