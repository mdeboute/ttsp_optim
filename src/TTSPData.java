package src;

public class TTSPData{
    Instance[] instance;
    IntervList[] interv_list;
    TechList[] tech_list;

    public TTSPData(Instance[] instance, IntervList[] interv_list, TechList[] tech_list) {
        this.instance=instance;
        this.interv_list=interv_list;
        this.tech_list=tech_list;
    }
}