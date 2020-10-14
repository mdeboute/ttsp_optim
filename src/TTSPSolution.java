package src;

public class TTSPSolution {
    Instance instance;
    IntervList interv_list;
    IntervDates interv_dates;
    TechList tech_list;
    TechTeams tech_teams;

    public TTSPSolution(Instance instance, IntervList interv_list, IntervDates interv_dates, TechList tech_list, TechTeams tech_teams){
        this.instance = instance;
        this.interv_list = interv_list;
        this.interv_dates = interv_dates;
        this.tech_list = tech_list;
        this.tech_teams = tech_teams;
    }
}