package src;

public class TTSPSolution {
    Instance instance;
    IntervList[] interv_list;
    IntervDates[] interv_dates;
    TechList[] tech_list;
    TechTeams[] tech_teams;

    public Instance getInstance() {
        return this.instance;
    }

    public void setInstance(Instance instance) {
        this.instance = instance;
    }

    public IntervList[] getInterv_list() {
        return this.interv_list;
    }

    public void setInterv_list(IntervList[] interv_list) {
        this.interv_list = interv_list;
    }

    public IntervDates[] getInterv_dates() {
        return this.interv_dates;
    }

    public void setInterv_dates(IntervDates[] interv_dates) {
        this.interv_dates = interv_dates;
    }

    public TechList[] getTech_list() {
        return this.tech_list;
    }

    public void setTech_list(TechList[] tech_list) {
        this.tech_list = tech_list;
    }

    public TechTeams[] getTech_teams() {
        return this.tech_teams;
    }

    public void setTech_teams(TechTeams[] tech_teams) {
        this.tech_teams = tech_teams;
    }

    public String toString(){
        System.out.print("///////////// Solution ////////////\n" + 
        "----------------------------------\n" + 
        "----- INTERVENTION SCHEDULE ------\n" + 
        "----------------------------------\n" );
        for (int i = 0; i < this.instance.getInterv(); i++){
            System.out.print("#" + this.interv_dates[i] + " : day" + this.interv_dates[i].getDay() + " -> starts at time " + this.interv_dates[i].getTime() + " / executed by team #" + this.interv_dates[i].getTeam() + "\n");
        }
        System.out.print("----------------------------------\n" + 
        "------- TECHNICIAN TEAMS ---------\n" + 
        "----------------------------------\n");
        for (int i = 0; i < this.tech_teams.length; i++){
            System.out.print("Teams of day " + i + "\n");
            for (int j = 0; j < this.tech_teams[i].getTeam()[i].length; j++){
                System.out.print("#" + j + " -> " + this.tech_teams[i].getTeam()[i] + "\n");
            }
        }
        System.out.print("//////////////////////////////////");
    }

}