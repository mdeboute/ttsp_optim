package src;

public class TechList {
    private int tech;
    private int[] d;
    private int[] dispo;

    public int getTech() {
        return tech;
    }

    public void setTech(int tech) {
        this.tech = tech;
    }

    public int getD(int l) {
        return d[l];
    }

    public void setD(int[] d) {
        this.d = d;
    }

    public int getDispo(int l) {
        return dispo[l];
    }

    public void setDispo(int[] dispo) {
        this.dispo = dispo;
    }
}