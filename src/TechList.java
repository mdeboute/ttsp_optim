package src;

public class TechList {
    private double[] tech;
    private double[][] d;
    private double[][] dispo;

    public TechList(double[] tech, double[][] d, double[][] dispo) {
        this.tech=tech;
        this.d=d;
        this.dispo=dispo;
    }

    public double[] getTech() {
        return tech;
    }

    public void setTech(double[] tech) {
        this.tech = tech;
    }

    public double[][] getD() {
        return d;
    }

    public void setD(double[][] d) {
        this.d = d;
    }

    public double[][] getDispo() {
        return dispo;
    }

    public void setDispo(double[][] dispo) {
        this.dispo = dispo;
    }
}