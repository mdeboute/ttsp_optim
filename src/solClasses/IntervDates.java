package src.solClasses;

public class IntervDates implements Comparable<IntervDates> {
    private int interv;
    private int day;
    private int time;
    private int team;

    public IntervDates(int interv, int day, int time, int team) {
        super();
        this.interv = interv;
        this.day = day;
        this.time = time;
        this.team = team;
    }

    @Override
    public String toString() {
        System.out.println("#" + getInterv() + " :  day " + getDay() + " -> starts at time " + getTime() + " / executed by team #"+ getTeam());
        return null;
    }

    public int getInterv() {
        return this.interv;
    }

    public void setInterv(int interv) {
        this.interv = interv;
    }

    public int getDay() {
        return this.day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getTime() {
        return this.time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public int getTeam() {
        return this.team;
    }

    public void setTeam(int team) {
        this.team = team;
    }

    @Override
    //Allow to sort the interventions in ascending order according
    // to the number of the intervention with Collections.sort
    public int compareTo(IntervDates intervDates) {
        return (this.interv - intervDates.interv);
    }

}