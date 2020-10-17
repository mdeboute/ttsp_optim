package src;

public class TechTeams {
    private int day;
    private int[][] team;

    public int getDay() {
        return this.day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getTeam(int l, int m) {
        return this.team[l][m];
    }

    public void setTeam(int[][] team) {
        this.team = team;
    }

}