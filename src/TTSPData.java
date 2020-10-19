package src;

public class TTSPData{
    Instance instance;
    IntervList[] interv_list;
    TechList[] tech_list;

    public Instance getInstance() {
        return this.instance;
    }

    public void setInstance(Instance instance) {
        this.instance = instance;
    }

    public IntervList[] getInterv_list() {
        return this.interv_list;
    }

    public void setInterv_list(IntervList[] interv_list) {
        this.interv_list = interv_list;
    }

    public TechList[] getTech_list() {
        return this.tech_list;
    }

    public void setTech_list(TechList[] tech_list) {
        this.tech_list = tech_list;
    }

}