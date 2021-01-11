package src.heuristic;

import src.dataClasses.TTSPData;
import src.solClasses.IntervDates;
import src.solClasses.TTSPSolution;
import src.solClasses.TechTeams;

import java.util.ArrayList;
import java.util.Collections;

public class BuildTTSPSol {

    public static TTSPSolution buildSol(TTSPData data, Solution sol) {
        TechTeams[] techteams = buildTechTeams(sol);
        IntervDates[] intervdates = buildIntervDates(data, sol);
        return new TTSPSolution(intervdates, techteams);
    }

    public static TechTeams[] buildTechTeams(Solution sol) {
        int nb_day = sol.getDays().size();
        TechTeams[] techteams = new TechTeams[nb_day + 1];
        techteams[0] = null;
        for (int i = 0; i < nb_day; i++) {
            Collections.sort(sol.getDays(i).getTechUnavailable());
            Collections.sort(sol.getDays(i).getTechAvailable());
            techteams[i + 1] = oneDay(sol.getDays(i));
        }
        return techteams;
    }

    private static TechTeams oneDay(Day day) {
        int nb_team = day.getTeams().size();
        int[][] teams = new int[nb_team + 1][];
        day.getTechUnavailable().addAll(day.getTechAvailable());
        Collections.sort(day.getTechUnavailable());
        teams[0] = listToArray(day.getTechUnavailable());
        for (int i = 0; i < nb_team; i++) {
            Collections.sort(day.getTeams(i).getTechnician());
            teams[i + 1] = listToArray(day.getTeams(i).getTechnician());
        }
        return new TechTeams(day.getday(), teams);
    }

    public static IntervDates[] buildIntervDates(TTSPData data, Solution sol) {
        Collections.sort(sol.getIntervDone());
        ArrayList<IntervDates> interv = new ArrayList<>();
        int time;
        for (int i = 0; i < sol.getDays().size(); i++) {
            for (int j = 0; j < sol.getDays(i).getTeams().size(); j++) {
                time = 0;
                for (int k = 0; k < sol.getDays(i).getTeams(j).getInterv().size(); k++) {
                    interv.add(oneInterv(sol.getDays(i).getTeams(j).getInterv().get(k), sol.getDays(i).getday(), time, j + 1));
                    time += data.getIntervention()[sol.getDays(i).getTeams(j).getInterv().get(k)].getTime();
                }
            }
        }
        Collections.sort(interv);
        IntervDates[] intervdates = new IntervDates[interv.size()];
        for (int i = 0; i < interv.size(); i++) {
            intervdates[i] = interv.get(i);
        }
        return intervdates;
    }

    private static IntervDates oneInterv(int interv, int day, int time, int team) {
        return new IntervDates(interv, day, time, team);
    }

    public static int[] listToArray(ArrayList<Integer> list) {
        Integer[] obj2 = list.toArray(new Integer[0]);
        int[] array = new int[obj2.length];
        for (int j = 0; j < array.length; j++) {  // the array of object is converted into an array of int
            int dispo = Integer.parseInt(String.valueOf(obj2[j]));
            array[j] = dispo;
        }
        return array;
    }
}
