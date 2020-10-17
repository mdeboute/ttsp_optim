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

    public int[][] getTeam(){
        return team;
    }

    public int getTeamLength(){
        return team.length;
    }

    public int getTeamLength(int l){
        return team[l].length;
    }

    public void setTeam(int[][] team) {
        this.team = team;
    }

}