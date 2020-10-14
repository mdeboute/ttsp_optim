package src;

public class TTSPSolution {
    Instance instance;
    IntervList interv_list;
    IntervDates interv_dates;
    TechList tech_list;
    TechTeams tech_teams;

    public Instance getInstance() {
        return this.instance;
    }

    public void setInstance(Instance instance) {
        this.instance = instance;
    }

    public IntervList getInterv_list() {
        return this.interv_list;
    }

    public void setInterv_list(IntervList interv_list) {
        this.interv_list = interv_list;
    }

    public IntervDates getInterv_dates() {
        return this.interv_dates;
    }

    public void setInterv_dates(IntervDates interv_dates) {
        this.interv_dates = interv_dates;
    }

    public TechList getTech_list() {
        return this.tech_list;
    }

    public void setTech_list(TechList tech_list) {
        this.tech_list = tech_list;
    }

    public TechTeams getTech_teams() {
        return this.tech_teams;
    }

    public void setTech_teams(TechTeams tech_teams) {
        this.tech_teams = tech_teams;
    }

}