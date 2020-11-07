package src.solClasses;

import java.util.Arrays; // for the toString

public class TTSPSolution {
    private final IntervDates[] interv_dates;
    private final TechTeams[] tech_teams;

    public TTSPSolution(IntervDates[] interv_dates, TechTeams[] tech_teams) {
        super();
        this.interv_dates=interv_dates;
        this.tech_teams=tech_teams;
    }

    public TechTeams[] getTech_teams() {
        return tech_teams;
    }

    public IntervDates[] getInterv_dates() {
        return interv_dates;
    }

    @Override
    public String toString() {
        return "TTSPSolution{" +
                "interv_dates=" + Arrays.toString(interv_dates) +
                ", tech_teams=" + Arrays.toString(tech_teams) +
                '}';
    }
}