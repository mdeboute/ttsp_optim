package src;

import java.util.Arrays;

public class IntervList {
    private int number;
    private int time;
    private int[] preds;
    private int prio;
    private int cost;
    private int[] d; // [d1_1, d1_2, d1_3, d2_1, d2_2, d2_3, ...]

    public IntervList(int number, int time, int[] preds, int prio, int cost, int[] d) {
        super();
        this.number=number;
        this.time=time;
        this.preds=preds;
        this.prio=prio;
        this.cost=cost;
        this.d=d;
    }

    @Override
    public String toString() {
        return "IntervList{" +
                "number=" + number +
                ", time=" + time +
                ", preds=" + Arrays.toString(preds) +
                ", prio=" + prio +
                ", cost=" + cost +
                ", d=" + Arrays.toString(d) +
                '}';
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

}
