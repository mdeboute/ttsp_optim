package src.readers;

import src.dataClasses.Instance;
import src.dataClasses.IntervList;
import src.dataClasses.TTSPData;
import src.dataClasses.TechList;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class InstanceReader {
    /**
     * Parses the file given in parameter. Reads the file line by line.
     *
     * @param filePath the path to the file to read
     * @return the data of a TTSP problem
     */

    public static TTSPData parse(String filePath) {
        String instance = filePath + "/instance";
        String interv_list = filePath + "/interv_list";
        String tech_list = filePath + "/tech_list";
        Instance inst = processInstance(instance);
        IntervList[] intervs = processInterv(interv_list, inst);
        TechList[] techs = processTech(tech_list, inst);
        return new TTSPData(inst, intervs, techs);
    }

    public static Instance processInstance(String instance) {
        BufferedReader br = null;
        FileReader fr;
        int lineNumber = 1;
        try {
            fr = new FileReader(instance);
            br = new BufferedReader(fr);
            // Reads the first line and puts everything in the String lineFile
            br.readLine();
            String lineFile;
            lineFile = br.readLine();
            // Splits lineFile in several Strings using the space separator
            String[] splitLine = lineFile.split(" ");
            String name = splitLine[0];
            int domains = Integer.parseInt(splitLine[1]);
            int level = Integer.parseInt(splitLine[2]);
            int techs = Integer.parseInt(splitLine[3]);
            int interv = Integer.parseInt(splitLine[4]);
            int abandon = Integer.parseInt(splitLine[5]);
            return new Instance(name, domains, level, techs, interv, abandon);
        } catch (Exception e) {
            e.printStackTrace();
            throw new IllegalStateException(
                    "Exception during the read of the file " + instance + " at line " + lineNumber);
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static IntervList[] processInterv(String interv_list, Instance inst) {
        BufferedReader br = null;
        FileReader fr;
        int lineNumber = 1;
        try {
            fr = new FileReader(interv_list);
            br = new BufferedReader(fr);
            // Reads the first line and puts everything in the String lineFile
            br.readLine();
            String lineFile;
            IntervList[] interventions = new IntervList[inst.getInterv() + 1];
            for (int i = 1; i < interventions.length; i++) {
                lineFile = br.readLine();
                // Splits lineFile in several Strings using the space separator
                String[] splitLine = lineFile.split(" ");
                int number = Integer.parseInt(splitLine[0]);
                int time = Integer.parseInt(splitLine[1]);
                ArrayList<String> t = new ArrayList<>();
                int cpt = 3;
                while (!splitLine[cpt].equals("]")) { //we retrieve the predecessors of intervention i in a arraylist
                    t.add(splitLine[cpt]);
                    cpt++;
                }
                //the arraylist is converted into an array of Object
                /*String[] obj= new String[t.size()];
                for(int j=0; j<t.size() ; j++){
                    obj[j]=""+ Arrays.toString(t.toArray());
                }*/
                String[] obj = t.toArray(new String[0]);
                int[] preds = new int[obj.length];
                for (int j = 0; j < preds.length; j++) {  // the array of object is converted into an array of int
                    int pred = Integer.parseInt(obj[j]);
                    preds[j] = pred;
                }
                cpt++;
                int prio = Integer.parseInt(splitLine[cpt]);
                cpt++;
                int cost = Integer.parseInt(splitLine[cpt]);
                cpt++;
                int[] d = new int[(inst.getLevel()) * inst.getDomains()];
                for (int j = 0; j < d.length; j++) {
                    d[j] = Integer.parseInt(splitLine[cpt]);
                    cpt++;
                }
                IntervList interv_i = new IntervList(number, time, preds, prio, cost, d);
                interventions[i] = interv_i;
                lineNumber++;
            }
            return interventions;
        } catch (Exception e) {
            e.printStackTrace();
            throw new IllegalStateException(
                    "Exception during the read of the file " + interv_list + " at line " + lineNumber);
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static TechList[] processTech(String tech_list, Instance inst) {
        BufferedReader br = null;
        FileReader fr;
        int lineNumber = 1;
        try {
            fr = new FileReader(tech_list);
            br = new BufferedReader(fr);
            // Reads the first line and puts everything in the String lineFile
            br.readLine();
            String lineFile;
            TechList[] technicians = new TechList[inst.getTechs() + 1];
            for (int i = 1; i < technicians.length; i++) {
                lineFile = br.readLine();
                // Splits lineFile in several Strings using the space separator
                String[] splitLine = lineFile.split(" ");
                int tech = Integer.parseInt(splitLine[0]);
                int cpt = 1;
                int[] d = new int[inst.getDomains() + 1];
                for (int j = 1; j < d.length; j++) {
                    d[j] = Integer.parseInt(splitLine[cpt]);
                    cpt++;
                }
                ArrayList<String> u = new ArrayList<>();
                cpt++;
                while (!splitLine[cpt].equals("]")) { //we retrieve the predecessors of intervention i in a arraylist
                    u.add(splitLine[cpt]);
                    cpt++;
                }
                /*String[] obj2= new String[u.size()];//the arraylist is converted into an array of Object
                for(int j=0; j<u.size() ; j++){
                    obj2[j]=""+ Arrays.toString(u.toArray());
                }*/
                String[] obj2 = u.toArray(new String[0]);
                int[] dispos = new int[obj2.length];
                for (int j = 0; j < dispos.length; j++) {  // the array of object is converted into an array of int
                    int dispo = Integer.parseInt(obj2[j]);
                    dispos[j] = dispo;
                }
                TechList tech_i = new TechList(tech, d, dispos);
                technicians[i] = tech_i;
                lineNumber++;
            }
            return technicians;
        } catch (Exception e) {
            e.printStackTrace();
            throw new IllegalStateException(
                    "Exception during the read of the file " + tech_list + " at line " + lineNumber);
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }


    public static void main(String[] args) {
        TTSPData ttspdata = parse(args[0]);
        System.out.println(ttspdata.toString());
    }
}