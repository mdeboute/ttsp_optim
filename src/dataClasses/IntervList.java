package src.dataClasses;

public class IntervList {
    private int number;
    private int time;
    private int[] preds;
    private int prio;
    private int cost;
    private int[] d; // [d1_1, d1_2, d1_3, d2_1, d2_2, d2_3, ...]
    private final int[] dayTeam; // ajouté par Gonzague pour algo de résolution

    public IntervList(int number, int time, int[] preds, int prio, int cost, int[] d) {
        super();
        this.number = number;
        this.time = time;
        this.preds = preds;
        this.prio = prio;
        this.cost = cost;
        this.d = d;
        this.dayTeam= new int[2]; // [0] jour ou est réalisé l'intervention ; [1] : numéro de la team
        setDayTeam(-1,-1);
    }

    @Override
    public String toString() {
        System.out.println("-> Interv #" + getNumber());
        System.out.println("Time = " + getTime() + " Priority = " + getPrio() + " Cost = " + getCost());
        System.out.print("domain and level :");
        for(int i=0 ; i<getD().length ; i++){
            System.out.print(" " + getD()[i]);
        }
        System.out.println();
        System.out.print("Predecessors =");
        for(int i=0 ; i<getPreds().length ; i++){
            System.out.print(" " + getPreds()[i]);
        }
        return null;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public int[] getPreds() {
        return preds;
    }

    public void setPreds(int[] preds) {
        this.preds = preds;
    }

    public int getPrio() {
        return prio;
    }

    public void setPrio(int prio) {
        this.prio = prio;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public int[] getD() {
        return d;
    }

    public void setD(int[] d) {
        this.d = d;
    }

    public int[] getDayTeam() {
        return dayTeam;
    }

    public void setDayTeam(int day, int team) {
        this.dayTeam[0]=day;
        this.dayTeam[1]=team;
    }

    // Return an double array with level required for each domains
    public int[][] skills_interv(TTSPData data){
        int nb_domain = data.getInstance().getDomains(); //number of domains
        int nb_level = data.getInstance().getLevel(); //equal to the max level
        int[][] dom_interv = new int[nb_domain][nb_level]; // array of domains and competences of intervention i
        int cpt1 = 0;
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                dom_interv[j][k] = getD()[cpt1];
                cpt1++;
            }
        }
        return dom_interv;
    }

}
