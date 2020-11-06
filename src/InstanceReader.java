package src;

import java.io.*;
import java.util.ArrayList;

public class InstanceReader {
    /**
     * Parses the file given in parameter. Reads the file line by line.
     *
     * @param filePath the path to the file to read
     * @return the data of a TTSP problem
     */

<<<<<<< HEAD
  public static TTSPData parse(String filePath) {
	  String instance = filePath + "/instance";
	  String interv_list= filePath + "/interv/list";
	  String tech_list= filePath + "/tech_list";
	  Instance inst= processInstance(instance);
	  IntervList[] intervs= processInterv(interv_list, inst);
	  TechList[] techs= processTech(tech_list, inst);
	  TTSPData ttspdata= new TTSPData(inst, intervs, techs);
	  return ttspdata;
  	}
  
  public static Instance processInstance(String instance) {
	  BufferedReader br = null;
	  FileReader fr = null;
	  int lineNumber = 1;
	  try {
		  fr = new FileReader(instance);
		  br = new BufferedReader(fr);
		  // Reads the first line and puts everything in the String lineFile
		  String lineFile = br.readLine();
		  lineFile = br.readLine();
		  // Splits lineFile in several Strings using the space separator
		  String[] splitLine = lineFile.split(" ");
		  String name=splitLine[0];
		  int domains=Integer.parseInt(splitLine[1]);
		  int level=Integer.parseInt(splitLine[2]);
		  int techs=Integer.parseInt(splitLine[3]);
		  int interv=Integer.parseInt(splitLine[4]);
		  int abandon=Integer.parseInt(splitLine[5]);
		  Instance inst = new Instance(name, domains, level, techs, interv, abandon);
		  return inst;
	  } catch (Exception e) {
		  e.printStackTrace();
		  throw new IllegalStateException(
				"Exception during the read of the file " + instance + " at line " + lineNumber);
	  }finally {
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
	  FileReader fr = null;
	  int lineNumber = 1;
	  try {
		  fr = new FileReader(interv_list);
		  br = new BufferedReader(fr);
		  // Reads the first line and puts everything in the String lineFile
		  String lineFile = br.readLine();
		  IntervList[] interventions= new IntervList[inst.getInterv()+1];
		  for(int i=1 ; i<interventions.length ; i++){
			  lineFile = br.readLine();
			  lineNumber++;
			  // Splits lineFile in several Strings using the space separator
			  String[] splitLine = lineFile.split(" ");
			  int number = Integer.parseInt(splitLine[0]);
			  int time = Integer.parseInt(splitLine[1]);
			  ArrayList t= new ArrayList();
			  int cpt=3;
			  while(splitLine[cpt]!="]") { //we retrieve the predecessors of intervention i in a arraylist
				  t.add(splitLine[cpt]);
				  cpt++;
			  }
			  Object[] obj = t.toArray(); //the arraylist is converted into an array of Object
			  int[] preds = new int[obj.length];
			  for(int j=0; j < preds.length; j++) {  // the array of object is converted into an array of int
				  preds[j]=(int) obj[j];
			  }
			  cpt++;
			  int prio=Integer.parseInt(splitLine[cpt]);
			  cpt++;
			  int cost=Integer.parseInt(splitLine[cpt]);
			  cpt++;
			  int[] d= new int[(inst.getLevel())*inst.getDomains()];
			  for(int j=0 ; j<d.length ; j++) {
				  d[j]=Integer.parseInt(splitLine[cpt]);
				  cpt++;
			  }
			  IntervList interv_i = new IntervList(number,time, preds, prio, cost, d);
			  interventions[i]=interv_i;
			  lineNumber++;
		  }
		  return null;
	  } catch (Exception e) {
		  e.printStackTrace();
		  throw new IllegalStateException(
				"Exception during the read of the file " + interv_list + " at line " + lineNumber);
	  }finally {
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
	  FileReader fr = null;
	  int lineNumber = 1;
	  try {
		  fr = new FileReader(tech_list);
		  br = new BufferedReader(fr);
		  // Reads the first line and puts everything in the String lineFile
		  String lineFile = br.readLine();
		  TechList[] technicians= new TechList[inst.getTechs()+1];
		  for(int i=1 ; i<technicians.length ; i++){
			  lineFile = br.readLine();
			  lineNumber++;
			  // Splits lineFile in several Strings using the space separator
			  String[] splitLine = lineFile.split(" ");
			  int tech = Integer.parseInt(splitLine[0]);
			  int cpt=1;
			  int[] d= new int[inst.getDomains()+1];
			  for(int j=1 ; j<d.length ; j++) {
				  d[j]=Integer.parseInt(splitLine[cpt]);
				  cpt++;
			  }
			  splitLine[cpt].equals("]"); //
			  ArrayList t= new ArrayList();
			  cpt++;
			  while(splitLine[cpt]!="]") { //we retrieve the predecessors of intervention i in a arraylist
				  t.add(splitLine[cpt]);
				  cpt++;
			  }
			  Object[] obj = t.toArray(); //the arraylist is converted into an array of Object
			  int[] dispo = new int[obj.length];
			  for(int j=0; j < dispo.length; j++) {  // the array of object is converted into an array of int
				  dispo[j]=(int) obj[j];
			  }
			  TechList tech_i = new TechList(tech,d,dispo);
			  technicians[i]=tech_i;
			  lineNumber++;
		  }
		  return null;
	  } catch (Exception e) {
		  e.printStackTrace();
		  throw new IllegalStateException(
				"Exception during the read of the file " + tech_list + " at line " + lineNumber);
	  }finally {
		  if (br != null) {
			  try {
				  br.close();
			  } catch (IOException e) {
				  e.printStackTrace();
			  }
		  }
	  }	
  	}
=======
    public static TTSPData parse(String filePath) {
        String instance = filePath + "/instance";
        String interv_list = filePath + "/interv_list";
        String tech_list = filePath + "/tech_list";
>>>>>>> c8d9fa899730c948b26078de9f830450f45150c5

        Instance inst = processInstance(instance);
        IntervList[] intervs = processInterv(interv_list, inst);
        TechList[] techs = processTech(tech_list, inst);
		return new TTSPData(inst, intervs, techs);
    }

    public static Instance processInstance(String instance) {
        BufferedReader br = null;
        FileReader fr = null;
        int lineNumber = 1;
        try {
            fr = new FileReader(instance);
            br = new BufferedReader(fr);
            // Reads the first line and puts everything in the String lineFile
            String lineFile = br.readLine();
            lineFile = br.readLine();
            // Splits lineFile in several Strings using the space separator
            String[] splitLine = lineFile.split(" ");
            String name = splitLine[0];
            int domains = Integer.parseInt(splitLine[1]);
            int level = Integer.parseInt(splitLine[2]);
            int techs = Integer.parseInt(splitLine[3]);
            int interv = Integer.parseInt(splitLine[4]);
            int abandon = Integer.parseInt(splitLine[5]);
            Instance inst = new Instance(name, domains, level, techs, interv, abandon);
            return inst;
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
        FileReader fr = null;
        int lineNumber = 1;
        try {
            fr = new FileReader(interv_list);
            br = new BufferedReader(fr);
            // Reads the first line and puts everything in the String lineFile
            String lineFile = br.readLine();
            IntervList[] interventions = new IntervList[inst.getInterv() + 1];
            for (int i = 1; i < interventions.length; i++) {
                lineFile = br.readLine();
                lineNumber++;
                // Splits lineFile in several Strings using the space separator
                String[] splitLine = lineFile.split(" ");
                int number = Integer.parseInt(splitLine[0]);
                int time = Integer.parseInt(splitLine[1]);
                ArrayList t = new ArrayList();
                int cpt = 3;
                while (!splitLine[cpt].equals("]")) { //we retrieve the predecessors of intervention i in a arraylist
                    t.add(splitLine[cpt]);
                    cpt++;
                }
                Object[] obj = t.toArray(); //the arraylist is converted into an array of Object
                int[] preds = new int[obj.length];
                for (int j = 0; j < preds.length; j++) {  // the array of object is converted into an array of int
                    preds[j] = (int) obj[j];
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
            return null;
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
        FileReader fr = null;
        int lineNumber = 1;
        try {
            fr = new FileReader(tech_list);
            br = new BufferedReader(fr);
            // Reads the first line and puts everything in the String lineFile
            String lineFile = br.readLine();
            TechList[] technicians = new TechList[inst.getTechs() + 1];
            for (int i = 1; i < technicians.length; i++) {
                lineFile = br.readLine();
                lineNumber++;
                // Splits lineFile in several Strings using the space separator
                String[] splitLine = lineFile.split(" ");
                int tech = Integer.parseInt(splitLine[0]);
                int cpt = 1;
                int[] d = new int[inst.getDomains() + 1];
                for (int j = 1; j < d.length; j++) {
                    d[j] = Integer.parseInt(splitLine[cpt]);
                    cpt++;
                }
                splitLine[cpt].equals("]"); //
                ArrayList t = new ArrayList();
                cpt++;
                while (!splitLine[cpt].equals("]")) { //we retrieve the predecessors of intervention i in a arraylist
                    t.add(splitLine[cpt]);
                    cpt++;
                }
                Object[] obj = t.toArray(); //the arraylist is converted into an array of Object
                int[] dispo = new int[obj.length];
                for (int j = 0; j < dispo.length; j++) {  // the array of object is converted into an array of int
                    dispo[j] = (int) obj[j];
                }
                TechList tech_i = new TechList(tech, d, dispo);
                technicians[i] = tech_i;
                lineNumber++;
            }
            return null;
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
        TTSPData ttspdata = parse("./data/datasetA/data1");
        System.out.println(ttspdata.getInstance().toString());
    }
}
q