package src;

public class TTSPData {
    Instance instance;
    IntervList[] intervention;
    TechList[] technician;


    public Instance getInstance() {
        return this.instance;
    }

    public void setInstance(Instance instance) {
        this.instance = instance;
    }

    public IntervList[] getInterv_list() {
        return this.intervention;
    }

    public void setInterv_list(IntervList[] interv_list) {
        this.intervention = interv_list;
    }

    public TechList[] getTech_list() {
        return this.technician;
    }

    public void setTechnician(TechList[] tech_list) {
        this.technician = tech_list;
    }

}