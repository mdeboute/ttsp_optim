package src;

public class Instance {
    private char name;
    private double domains;
    private double level;
    private double techs;
    private double interv;
    private double abandon;

    public Instance(char name, double domains, double level, double techs, double interv, double abandon) {
        this.name=name;
        this.domains=domains;
        this.level=level;
        this.techs=techs;
        this.interv=interv;
        this.abandon=abandon;
    }

    public char getName() {
        return this.name;
    }

    public void setName(char name) {
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

}
