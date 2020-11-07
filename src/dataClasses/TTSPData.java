package src.dataClasses;

import java.util.Arrays; // for the toString

public class TTSPData {
    private final Instance instance;
    private final IntervList[] intervention; //first IntervList[0] is an array of 0, interventions 1= IntervList[1],...
    private final TechList[] technician; //first techList[0] is an array of 0, technician 1= TechList[1],...

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
        return "TTSPData{" +
                "instance=" + instance +
                ", intervention=" + Arrays.toString(intervention) +
                ", technician=" + Arrays.toString(technician) +
                '}';
    }
}