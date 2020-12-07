package src.AlgorithmGB;

import src.Checker;
import src.dataClasses.TTSPData;

import java.util.ArrayList;

public class Solution {
    private final ArrayList<Day> days;  // array of all day
    private final ArrayList<Integer> intervDone;  // all interventions already assigned
    private final ArrayList<Integer> intervOS; // all intervention out sourced
    private int totalCost; // cost total of outsourced interventions

    public Solution() {
        this.days = new ArrayList<>();
        this.intervDone = new ArrayList<>();
        this.intervOS = new ArrayList<>();
        this.totalCost=0;
    }

    public ArrayList<Day> getDays() {
        return days;
    }

    public Day getDays(int number) {
        return days.get(number);
    }

    public ArrayList<Integer> getIntervDone() {
        return intervDone;
    }

    public ArrayList<Integer> getIntervOS() { return intervOS; }

    public int getTotalCost() {
        return totalCost;
    }

    public void addOutSourced(TTSPData data, int interv){
        if(data.getInstance().getAbandon()==0){
            return;
        }
        int nb_interv = data.getIntervention().length;
        ArrayList<Integer> mustBeOt = new ArrayList<>();
        mustBeOt.add(interv);
        int cpt=0;
        int total = mustBeOt.size()-1;
        while(cpt<=total){
            int outS= mustBeOt.get(cpt);
            for (int j = 1; j < nb_interv; j++) {
                if (data.getIntervention()[j].getNumber() == outS || mustBeOt.contains(j)) {
                    continue; //we check that we do not compare the outsourced intervention i with itself
                }
                if (Checker.check(data.getIntervention()[j].getPreds(), outS)) { //check if outsourced intervention interv belongs to pred(j)
                    if (intervDone.contains(j)) {
                        return;
                    }
                    mustBeOt.add(j);
                    total++;
                }
            }
            cpt++;
        }
        mustBeOt.removeAll(intervOS);
        int cost=0;
        for (Integer integer : mustBeOt) {
            cost += data.getIntervention()[integer].getCost();
        }
        if((cost+totalCost) <= data.getInstance().getAbandon()){
            this.totalCost += cost;
            this.intervOS.addAll(mustBeOt);
            if(mustBeOt.size()!=0) System.out.println("Intervention sous-traité " + mustBeOt.toString());
        }
    }

    // to calucate the number max of predecessor for a intervention
    public int maxPred(TTSPData data){
        int nb_intervs= data.getIntervention().length;
        int max_pred=0;
        for(int i=1 ; i<nb_intervs ; i++){
            if(data.getIntervention()[i].getPreds().length > max_pred) max_pred= data.getIntervention()[i].getPreds().length;
        }
        return max_pred;
    }

    public void addIntervDone(int intervs){
        this.intervDone.add(intervs);
    }

    public void addDay(TTSPData data){
        Day day;
        if(getDays()==null || getDays().size()==0){
            day = new Day(data, 1);
        }else {
            day = new Day(data, getDays().size() + 1);
        }
        this.days.add(day);
    }


    public boolean treatInterv(TTSPData data, int interv, int tech, int day, int team, boolean wantAddtech){
        if(!isPredAllFinish(data, interv, day, team)) return false;
        if(!getDays(day).getTeams(team).add_interv(data, interv)) return false;
        if(wantAddtech){
            int num_tech = getDays(day).getTechAvailable().get(tech);
            getDays(day).getTeams(team).add_tech(data, num_tech);
            getDays(day).getTechAvailable().remove(tech);
        }
        data.getIntervention()[interv].setDayTeam(day,team);
        addIntervDone(interv);
        return true;
    }

    // to check if we can begin an intervention : which mean all it predecessor are already treated
    public boolean isPredAllFinish(TTSPData data, int interv, int day, int team){
        int time = (getDays(day).getday()-1)*120+getDays(day).getTeams(team).getTime(); // time when intervention interv is going to begin
        for(int i=0 ; i< data.getIntervention()[interv].getPreds().length ; i++){
            int pred= data.getIntervention()[interv].getPreds()[i];
            if(data.getIntervention()[pred].getDayTeam()[0]==-1) return false; // if a predecessor is not already treated
            int dayP= data.getIntervention()[pred].getDayTeam()[0]; // day of predecessor pred of intervention interv
            int teamP = data.getIntervention()[pred].getDayTeam()[1]; // team of predecessor pred of intervention interv
            int timeTeam= getDays(dayP).getTeams(teamP).timeOfInterv(data, pred);
            int timeP= (getDays(dayP).getday()-1)*120 + timeTeam + data.getIntervention()[pred].getTime(); // time when predecessor pred of intervention interv ends
            if(timeP> time) return false;
        }
        return true;
    }



}
