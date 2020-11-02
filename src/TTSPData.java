package src;

import java.util.Arrays; // for the toString

public class TTSPData {
    private final Instance instance;
    private final IntervList[] intervention;
    private final TechList[] technician;

    public TTSPData(Instance instance, IntervList[] intervention, TechList[] technician) {
        super();
        this.instance=instance;
        this.intervention=intervention;
        this.technician=technician;
    }

    public TechList[] getTechnician() {
        return technician;
    }

    public IntervList[] getIntervention() {
        return intervention;
    }

    public Instance getInstance() {
        return instance;
    }

    @Override
    public String toString() {
        StringBuilder s = new StringBuilder();
        s.append("to do");
        return s.toString();
    }
}