package src;

public class IntervList {
    private double number;
    private double time;
    private double[] preds;
    private double prio;
    private double cost;
    private Matrix d;

    public IntervList(double number, double time, double[] preds, double prio, double cost, Matrix d) {
        this.number=number;
        this.time=time;
        this.preds=preds;
        this.prio=prio;
        this.cost=cost;
        this.d=d;
    }

    public double getNumber() {
        return this.number;
    }

    public void setNumber(double number) {
        this.number = number;
    }

    public double getTime() {
        return this.time;
    }

    public void setTime(double time) {
        this.time = time;
    }

    public double[] getPreds() {
        return this.preds;
    }

    public void setPreds(double[] preds) {
        this.preds = preds;
    }

    public double getPrio() {
        return this.prio;
    }

    public void setPrio(double prio) {
        this.prio = prio;
    }

    public double getCost() {
        return this.cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public Matrix getD() {
        return this.d;
    }

    public void setD(Matrix d) {
        this.d = d;
    }

}
