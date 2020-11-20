package src.dataClasses;

public class TTSPData {
    private final Instance instance;
    private final IntervList[] intervention; //first IntervList[0] is an array of 0, interventions 1= IntervList[1],...
    private final TechList[] technician; //first techList[0] is an array of 0, technician 1= TechList[1],...

    public TTSPData(Instance instance, IntervList[] intervention, TechList[] technician) {
        super();
        this.instance = instance;
        this.intervention = intervention;
        this.technician = technician;
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
        System.out.println("///////////// Instance test1 ////////////");
        String instance = getInstance().toString();
        System.out.println();
        System.out.println("----------------------------------");
        System.out.println("--------- INTERVENTIONS ----------");
        System.out.println("----------------------------------");
        for(int i=1 ; i<getIntervention().length ; i++){
            System.out.println("-> Interv #" + getIntervention()[i].getNumber());
            System.out.println("Time = " + getIntervention()[i].getTime() + " Priority = " + getIntervention()[i].getPrio() + " Cost = " + getIntervention()[i].getCost());
            int cas = 0;
            for(int domain =1 ; domain< getInstance().getDomains()+1 ; domain++){
                System.out.print("Number of technicians required for domain " + domain + " ->");
                for(int j=0 ; j< getInstance().getLevel() ; j++){
                    System.out.print(" " + getIntervention()[i].getD()[j+cas]);
                }
                cas = cas+getInstance().getLevel();
                System.out.print("\n");
            }
            System.out.print("Predecessors = ");
            for(int v=0 ; v<getIntervention()[i].getPreds().length ; v++){
                System.out.print(" " + getIntervention()[i].getPreds()[v]);
            }
            System.out.println();
        }
        System.out.println();
        System.out.println("----------------------------------");
        System.out.println("---------- TECHNICIANS -----------");
        System.out.println("----------------------------------");
        for(int i=1 ; i< getTechnician().length ; i++){
            String technican = getTechnician()[i].toString();
        }
        return "/////////////////////////////////////////";
    }
}