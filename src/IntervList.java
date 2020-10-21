package src;

public class IntervList {
    private int number;
    private int time;
    private int[] preds;
    private int prio;
    private int cost;
    private int[] d;


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
    
    public int getPreds(int c) {
        return preds[c];
    }
    
    public int getPredsLength() {
    	return preds.length;
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
    
    public int getDLength() {
    	return d.length;
    }
    
    public int getD(int c) {
        return d[c];
    }
    
    public void setD(int[] d) {
        this.d = d;
    }


}
