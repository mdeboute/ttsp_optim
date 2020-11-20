package src.solClasses;

public class TTSPSolution {
    private final IntervDates[] interv_dates;
    private final TechTeams[] tech_teams; //first techTeam[0] is null, techTeam of day 1= TechTeam[1],...

    public TTSPSolution(IntervDates[] interv_dates, TechTeams[] tech_teams) {
        super();
        this.interv_dates = interv_dates;
        this.tech_teams = tech_teams;
    }

    public TechTeams[] getTech_teams() {
        return tech_teams;
    }

    public IntervDates[] getInterv_dates() {
        return interv_dates;
    }

    @Override
    public String toString() {
        System.out.println("///////////// Solution ////////////");
        System.out.println("----------------------------------");
        System.out.println("----- INTERVENTION SCHEDULE ------");
        System.out.println("----------------------------------");
        for(int i=0 ; i<getInterv_dates().length ; i++){
            String dates = getInterv_dates()[i].toString();
        }
        System.out.println();
        System.out.println("----------------------------------");
        System.out.println("------- TECHNICIAN TEAMS ---------");
        System.out.println("----------------------------------");
        for(int i=1 ; i<getTech_teams().length ; i++){
            String teams = getTech_teams()[i].toString();
        }
        return "";
    }
}