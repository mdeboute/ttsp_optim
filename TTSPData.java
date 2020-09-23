public class TTSPData{
    private String name;
    private double domains;
    private double level;
    private double tech;
    private double interv;
    private double abandon;

    private double[] time;
    private double[][] preds;
    private double[] prio;
    private double[] cost;
    private Matrix r;

    private Matrix s;
    private double[] dispo;

    public TTSPData(){ }

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

    public double getTech() {
        return this.tech;
    }

    public void setTech(double tech) {
        this.tech = tech;
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