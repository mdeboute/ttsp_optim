package src.heuristic;

import src.dataClasses.TTSPData;

import java.util.ArrayList;

/**
 * The class Team, register all the information of a team : all the intervention that it makes, all technicians that
 * compose it, a double array of it skills, his total cost at the moment
 */
public class Team {
    final private int number;
    private int time; // total time of intervention of the team
    private final ArrayList<Integer> interv; // all intervention do by this team
    private final ArrayList<Integer> technician; // technician of the team
    private final int[][] dom_team;  // double array of level of the team in each domain
    private boolean isFull = false; // to see if another intervention can be add to the team.

    public Team(TTSPData data, int number, int tech) {
        this.number = number;
        this.time = 0;
        ArrayList<Integer> technician = new ArrayList<>();
        this.dom_team = new int[data.getInstance().getDomains()][data.getInstance().getLevel()];
        technician.add(tech);
        this.interv = new ArrayList<>();
        this.technician = new ArrayList<>();
    }

    // getters and setters //
    public boolean isFull() {
        return isFull;
    }

    public int getNumber() {
        return number;
    }

    public int getTime() {
        return time;
    }

    public ArrayList<Integer> getTechnician() {
        return technician;
    }

    public ArrayList<Integer> getInterv() {
        return interv;
    }

    public int[][] getDom_team() {
        return dom_team;
    }
    // getters and setters //

    /**
     * add_interv is the method who allow to add an intervention to the team. It makes all it need for and return if
     * it's possible to (if it's possible, the adding is done) :
     * Add the  time of the intervention to the total time of the team, add the intervention to the list of interventions
     * and update if the team is full
     *
     * @param interv the intervention that we try to add
     * @return a boolean who indcates if the intervention have have been added
     */
    public boolean add_interv(TTSPData data, int interv) {
        if ((getTime() + data.getIntervention()[interv].getTime()) > 120) { // check if the team isn't full
            return false;
        }
        this.time = this.time + data.getIntervention()[interv].getTime();
        this.interv.add(interv);
        if (this.time >= 110) {
            this.isFull = true;
        }
        return true;
    }


    // Return an double array with the new level of the teams for each domains after the addition of 1 technician

    /**
     * add_tech is the method who allow to add a technician to the team. It makes all it need for :
     * add the technician to the list of technician and  add the skill of the technician to the skills of the team
     *
     * @param technician the technician that we want to add
     */
    public void add_tech(TTSPData data, int technician) {
        this.technician.add(technician);
        int nb_domain = data.getInstance().getDomains(); //number of domains
        int nb_level = data.getInstance().getLevel();
        int[][] tech = Tech.skills_tech(data, technician);
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                this.dom_team[j][k] += tech[j][k];
            }
        }
    }

    public void remove_tech(TTSPData data, int technician) {
        for (int i = 0; i < this.technician.size(); i++) {
            if (this.technician.get(i).equals(technician)) this.technician.remove(i);
        }
        int nb_domain = data.getInstance().getDomains(); //number of domains
        int nb_level = data.getInstance().getLevel();
        int[][] tech = Tech.skills_tech(data, technician);
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                this.dom_team[j][k] -= tech[j][k];
            }
        }
    }

    // Look if a team quite qualified to do the intervention

    /**
     * isSufficient look if a team is quite qualified to do the intervention. To check this, we compare the skill of the
     * team with the skill of the intervention.
     *
     * @param dom_interv is an array of the skill of the intervention that we want to check
     * @return a boolean who indicates if the skill of team is sufficient to do this intervention
     */
    public boolean isSufficient(TTSPData data, int[][] dom_interv) {
        int nb_domain = data.getInstance().getDomains(); //number of domains
        int nb_level = data.getInstance().getLevel(); //equal to the max level
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                if (dom_interv[j][k] > getDom_team()[j][k]) {
                    return false;
                }
            }
        }
        return true;
    }

    /**
     * timeOfInterv calculates the time of beginning of an intervention assigned to this team.
     * To makes the things more easier, the time of beginning of an intervention is equals to it's order of attribution
     * in the team. The first intervention add is make in first, the second one in second, etc...
     *
     * @param intervention is the intervention that we want to know the time of beginning
     * @return the time of the intervention in the day of the team.
     */
    public int timeOfInterv(TTSPData data, int intervention) {
        int cpt = 0;
        int time = 0;
        while (this.interv.get(cpt) != intervention) {
            int inter = this.interv.get(cpt);
            time += data.getIntervention()[inter].getTime();
            cpt++;
        }
        return time;
    }
}
