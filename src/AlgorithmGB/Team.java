package src.AlgorithmGB;

import src.dataClasses.TTSPData;

import java.util.ArrayList;

public class Team {
    final private int number;
    private int time; // total time of intervention of the team
    private final ArrayList<Integer> interv; // all intervention do by this team
    private final ArrayList<Integer> technician; // technician of the team
    private final int[][] dom_team;  // double array of level of the team in each domain
    private boolean isFull = false; // to see if another intervention can be add to the team.

    public Team(TTSPData data, int number, int tech) {
        this.number=number;
        this.time = 0;
        ArrayList<Integer> technician = new ArrayList<>();
        this.dom_team = new int[data.getInstance().getDomains()][data.getInstance().getLevel()];
        technician.add(tech);
        this.interv = new ArrayList<>();
        this.technician = new ArrayList<>();
    }

    public boolean isFull() {
        return isFull;
    }

    public void setFull(boolean full) {
        isFull = full;
    }


    public int getNumber() {
        return number;
    }

    public int getTime() {
        return time;
    }

    public boolean add_interv(TTSPData data, int interv){
        if((getTime()+data.getIntervention()[interv].getTime())>120){
            return false;
        }
        this.time= this.time+ data.getIntervention()[interv].getTime();
        this.interv.add(interv);
        if(this.time>= 110){
            this.isFull=true;
        }
        return true;
    }

    public void remove_interv(TTSPData data, int interv){
        for(int i=0 ; i<this.interv.size() ; i++){
            if(this.interv.get(i).equals(interv)) this.interv.remove(i);
        }
        this.time -= data.getIntervention()[interv].getTime();
        if(this.time< 110){
            this.isFull=false;
        }
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

    // Return an double array with the new level of the teams for each domains after the addition of 1 technician
    public void add_tech(TTSPData data, int technician){
        this.technician.add(technician);
        int nb_domain = data.getInstance().getDomains(); //number of domains
        int nb_level = data.getInstance().getLevel();
        int[][] tech = Tech.skills_tech(data, technician);
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                this.dom_team[j][k] += tech[j][k];
            }
        }
        //System.out.println("ajout du technicien : " + technician + " team : " + getNumber());
    }

    public void remove_tech(TTSPData data, int technician){
        for(int i=0 ; i<this.technician.size() ; i++){
            if(this.technician.get(i).equals(technician)) this.technician.remove(i);
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
    public boolean isSufficient(TTSPData data, int [][] dom_interv){
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


    public int timeOfInterv(TTSPData data, int intervention){
        int cpt=0;
        int time=0;
        while(this.interv.get(cpt) != intervention){
            int inter= this.interv.get(cpt);
            time += data.getIntervention()[inter].getTime();
            cpt++;
        }
        return time;
    }
}
