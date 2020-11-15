package src.dataClasses;

public class TechList {
    private int tech;
    private int[] d; // d[0]=0, puis d[1]=d1, ...
    private int[] dispo;

    @Override
    public String toString() {
        System.out.println("-> Tech #" + getTech());
        System.out.print("Skills (mastered level per domain) ->");
        for(int i=1 ; i< getD().length ; i++) {
            System.out.print(" " + getD()[i]);
        }
        System.out.println();
        System.out.print("Not available on day(s) ->");
        for(int i=1 ; i< getDispo().length ; i++) {
            System.out.print(" " + getDispo()[i]);
        }
        System.out.println();
        return null;
    }

    public TechList(int tech, int[] d, int[] dispo) {
        super();
        this.tech = tech;
        this.d = d;
        this.dispo = dispo;
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