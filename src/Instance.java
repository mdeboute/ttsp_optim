package src;

public class Instance {
    private String name;
    private double domains;
    private double level;
    private double techs;
    private double interv;
    private double abandon;

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getDomains() {
        return this.domains;
    }

    public void setDomains(double domains) {
        this.domains = domains;
    }

    public double getLevel() {
        return this.level;
    }

    public void setLevel(double level) {
        this.level = level;
    }

    public double getTechs() {
        return this.techs;
    }

    public void setTechs(double techs) {
        this.techs = techs;
    }

    public double getInterv() {
        return this.interv;
    }

    public void setInterv(double interv) {
        this.interv = interv;
    }

    public double getAbandon() {
        return this.abandon;
    }

    public void setAbandon(double abandon) {
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
