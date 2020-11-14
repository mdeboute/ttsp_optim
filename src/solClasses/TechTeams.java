package src.solClasses;

public class TechTeams {
    private int day;

    public String toString() {
        System.out.println("Teams of day " + day);
        for( int i=0 ; i<getTeam().length ; i++){
            System.out.print("#" + i + " ->");
            for (int j=0 ; j<getTeam()[i].length ; j++){
                System.out.print(" " + getTeam()[i][j]);
            }
            System.out.println();
        }
        return null;
    }

    private int[][] team;

    public TechTeams(int day, int[][] team) {
        super();
        this.day = day;
        this.team = team;
    }

    public int getDay() {
        return this.day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int[][] getTeam() {
        return team;
    }

    public void setTeam(int[][] team) {
        this.team = team;
    }

}