package src.dataClasses;

public class Instance {
    private String name;
    private int domains;
    private int level;
    private int techs;
    private int interv;
    private int abandon;

    @Override
    public String toString() {
        System.out.println("#Interventions = " + getInterv() + "\n" +
                "#Technicians = " + getTechs() + "\n" +
                "#Domains / #Levels = " + getDomains() + " / " + getLevel() + "\n" +
                "Outsourcing budget = " + getAbandon()
        );
        return null;
    }


    public Instance(String name, int domains, int level, int techs, int interv, int abandon) {
        super();
        this.name = name;
        this.domains = domains;
        this.level = level;
        this.techs = techs;
        this.interv = interv;
        this.abandon = abandon;
    }

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

}
