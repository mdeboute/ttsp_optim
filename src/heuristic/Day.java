package src.heuristic;

import src.dataClasses.TTSPData;

import java.util.ArrayList;

/**
 * The class Day, register all the information for a day : the unavailable technicians, the available ones, and all
 * the teams create
 */
public class Day {
    final private int day;
    private final ArrayList<Integer> techUnavailable; // the team 0 of the day
    private final ArrayList<Team> teams; // all teams of the day
    private final ArrayList<Integer> techAvailable; // technicians available this day

    public Day(TTSPData data, int day) {
        this.day = day;
        ArrayList<Integer> available = new ArrayList<>();
        ArrayList<Integer> unvailable = new ArrayList<>();
        // for all technicina of the instance, we check if he is available the day @day
        // if he is, we add him to the list techAvailable, we add him to the list techUnavailable otherwise
        for (int tech = 1; tech < data.getTechnician().length; tech++) {
            if (data.getTechnician()[tech].getDispo().length == 0) {
                available.add(data.getTechnician()[tech].getTech());
                continue;
            }
            int test = 0;
            for (int i = 0; i < data.getTechnician()[tech].getDispo().length; i++) {
                if (data.getTechnician()[tech].getDispo()[i] == day) {
                    unvailable.add(data.getTechnician()[tech].getTech());
                    test = 1;
                    break;
                }
            }
            if (test == 0) available.add(data.getTechnician()[tech].getTech());
        }
        this.teams = new ArrayList<>();
        this.techUnavailable = unvailable;
        this.techAvailable = available;
    }

    // getters and setters //
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
    // gettters and setters //

    /**
     * createTeams is the method wo allow to create a new team the day @day
     *
     * @param data the data of the instance
     * @param tech the tech that we want to add to the team (if we create a new team, there is obligatory a first
     *             technician to add)
     * @see Team
     */
    public void createTeam(TTSPData data, int tech) {
        int nb_team = teams.size() + 1;
        if (teams.size() == 0) {
            nb_team = 1;
        }
        Team newTeam = new Team(data, nb_team, tech); // call the method that allow to add a tech to a team
        teams.add(newTeam);
    }
}
