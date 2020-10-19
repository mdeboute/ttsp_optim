package src;

public class IntervList {
    private int number;
    private int time;
    private Object[] preds;
    private int prio;
    private int cost;
    private Object[] d;


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

    public Object[] getPreds() {
        return preds;
    }

    public void setPreds(Object[] preds) {
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

    public Object[] getD() {
        return d;
    }

    public void setD(Object[] d) {
        this.d = d;
    }


}
