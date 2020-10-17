package src;

public class Instance {
    private String name;
    private int domains;
    private int level;
    private int techs;
    private int interv;
    private int abandon;

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDomains() {
        return this.domains;
    }

    public void setDomains(int domains) {
        this.domains = domains;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getTechs() {
        return this.techs;
    }

    public void setTechs(int techs) {
        this.techs = techs;
    }

    public int getInterv() {
        return this.interv;
    }

    public void setInterv(int interv) {
        this.interv = interv;
    }

    public int getAbandon() {
        return this.abandon;
    }

    public void setAbandon(int abandon) {
        this.abandon = abandon;
    }

    public String toString(){
        return "///////////// Instance "+this.name+" ////////////\n" +
                "#Interventions = "+this.interv+"\n" +
                "#Technicians = "+this.techs+"\n" +
                "#Domains / #Levels = "+this.domains+" / "+this.level +"\n" +
                "Outsourcing budget = "+this.abandon+"\n" +
                "----------------------------------\n";
    }
}
