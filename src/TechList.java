package src;

public class TechList {
    private int tech;
    private int[] d; // d[0]=0, puis d[1]=d1, ...
    private int[] dispo;

    public TechList(int tech, int[] d, int[] dispo) {
        super();
        this.tech=tech;
        this.d=d;
        this.dispo=dispo;
    }

    public int[] getDispo() {
        return dispo;
    }

    public void setDispo(int[] dispo) {
        this.dispo = dispo;
    }

    public int[] getD() {
        return d;
    }

    public void setD(int[] d) {
        this.d = d;
    }

    public int getTech() {
        return tech;
    }

    public void setTech(int tech) {
        this.tech = tech;
    }


}