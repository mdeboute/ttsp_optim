package src;

public class TechTeams {
    private int day;
    private int[][] team;

    public TechTeams(int day, int[][] team) {
        super();
        this.day=day;
        this.team=team;
    }

    public int getDay() {
        return this.day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int[][] getTeam(){
        return team;
    }

    public void setTeam(int[][] team) {
        this.team = team;
    }

}