package src.heuristic;

import src.dataClasses.TTSPData;

import java.util.ArrayList;

import static src.heuristic.MainAlgorithm.removeUselessTech;

public class MethodNotUsed {

    /**
     * A class with all method create a fonctionnal but who make the solution less good, so don't used.
     * There are the first method create
     */
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

    public static ArrayList<Integer> sortBySkillsTechs(TTSPData data, ArrayList<Integer> techs) {
        ArrayList<int[]> sumSkills = new ArrayList<>();
        for (int i = 0; i < techs.size(); i++) {
            int[] skills = new int[2];
            skills[0] = techs.get(i);
            int sum = 0;
            for (int j = 0; j < data.getInstance().getDomains(); j++) {
                sum = sum + data.getTechnician()[techs.get(i)].getD()[j];
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


}
