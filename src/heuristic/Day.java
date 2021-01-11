package src.heuristic;

import src.dataClasses.TTSPData;

import java.util.ArrayList;

public class Day {
    final private int day;
    private final ArrayList<Integer> techUnavailable; // the team 0 of the day
    private final ArrayList<Team> teams; // all teams of the day
    private final ArrayList<Integer> techAvailable;

    public Day(TTSPData data, int day) {
        this.day = day;
        ArrayList<Integer> available = new ArrayList<>();
        ArrayList<Integer> unvailable = new ArrayList<>();
        for(int tech=1 ; tech <data.getTechnician().length ; tech++) {
            if(data.getTechnician()[tech].getDispo().length==0){
                available.add(data.getTechnician()[tech].getTech());
                continue;
            }
            int test=0;
            for (int i=0 ;  i<data.getTechnician()[tech].getDispo().length ; i++) {
                if (data.getTechnician()[tech].getDispo()[i] == day) {
                    unvailable.add(data.getTechnician()[tech].getTech());
                    test=1;
                    break;
                }
            }
            if(test==0) available.add(data.getTechnician()[tech].getTech());
        }
        this.teams = new ArrayList<>();
        this.techUnavailable=unvailable;
        this.techAvailable =available;
    }

    public int getday() {
        return day;
    }

    public ArrayList<Integer> getTechUnavailable() {
        return techUnavailable;
    }

    public ArrayList<Integer> getTechAvailable() {
        return techAvailable;
    }

    public Team getTeams(int team) {
        return teams.get(team);
    }

    public ArrayList<Team> getTeams() {
        return teams;
    }

    public void createTeam(TTSPData data, int tech){
        int nb_team= teams.size()+1;
        if(teams.size()==0){
            nb_team=1;
        }
        Team newTeam = new Team(data, nb_team, tech);
        teams.add(newTeam);
    }

    public boolean dayIsFull(){
        for(int team=0 ; team<teams.size() ; team++){
            if (!getTeams(team).isFull()) return false;
        }
        return true;
    }
}
