package src;

public class IntervList {
    private double[] number;
    private double[] time;
    private double[][] preds;
    private double[] prio;
    private double[] cost;
    private double[][] d;

    public IntervList(double[] number, double[] time, double[][] preds, double[] prio, double[] cost, double[][] d) {
        this.number=number;
        this.time=time;
        this.preds=preds;
        this.prio=prio;
        this.cost=cost;
        this.d=d;
    }

    public double[] getNumber() {
        return number;
    }

    public void setNumber(double[] number) {
        this.number = number;
    }

    public double[] getTime() {
        return time;
    }

    public void setTime(double[] time) {
        this.time = time;
    }

    public double[][] getPreds() {
        return preds;
    }

    public void setPreds(double[][] preds) {
        this.preds = preds;
    }

    public double[] getPrio() {
        return prio;
    }

    public void setPrio(double[] prio) {
        this.prio = prio;
    }

    public double[] getCost() {
        return cost;
    }

    public void setCost(double[] cost) {
        this.cost = cost;
    }

    public double[][] getD() {
        return d;
    }

    public void setD(double[][] d) {
        this.d = d;
    }
}
