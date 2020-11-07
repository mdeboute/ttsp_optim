package src;

import src.dataClasses.*;
import src.solClasses.*;

import java.io.*;
import java.util.*;

public class SolutionReader {

  public static TTSPSolution parse(String filePath) {
    String file_intervd = filePath + "/interv_dates";
    String file_techt = filePath + "/tech_teams";
    IntervDates[] interv_dates = processIntervDates(file_intervd);
    TechTeams[] tech_teams = processTechTeams(file_techt);
    return new TTSPSolution(interv_dates, tech_teams);
  }

  public static IntervDates[] processIntervDates(String file_intervd){
    BufferedReader br = null;
		FileReader fr = null;
    int lineNumber = 1;
    //reading the file with interventions
    try {
      //Take the file in parameter to read it
			fr = new FileReader(file_intervd);
      br = new BufferedReader(fr);
      String lineFile;
      String[] splitLine;
      //Creation of the arraylist with all interventions
      ArrayList<IntervDates> array_interv_dates = new ArrayList<IntervDates>();
      IntervDates id = new IntervDates(0,0,0,0);
      while ((lineFile = br.readLine()) != null) {
        // Splits lineFile in several Strings using the space separator
        splitLine = lineFile.split(" ");
        //Put all the element of the line into a IntervDates id
        id.setInterv(Integer.parseInt(splitLine[0]));
        id.setDay(Integer.parseInt(splitLine[1]));
        id.setTime(Integer.parseInt(splitLine[2]));
        id.setTeam(Integer.parseInt(splitLine[3]));
        //Put id into the arraylist of IntervDates
        array_interv_dates.add(id);
        lineNumber++;
      }
      int count = 0;
      //Create the array of IntervDates with the right number of element 
      IntervDates[] interv_dates = new IntervDates[lineNumber - 1];
      //List path to put it into the ttspSolution
      for(IntervDates i : array_interv_dates){
        interv_dates[count] = new IntervDates(0,0,0,0);
        interv_dates[count] = i;
        count ++;
      }
    }catch (IOException e) {
      e.printStackTrace();
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

  public static TechTeams[] processTechTeams(String file_techt){
    BufferedReader br = null;
		FileReader fr = null;
    int lineNumber = 1;
    //reading the file with technicians
    try {
      //Take the file in parameter to read it
			fr = new FileReader(file_techt);
      br = new BufferedReader(fr);
      String lineFile;
      String[] splitLine;
      //Creation of the arraylist with all interventions
      ArrayList<TechTeams> tech_teams = new ArrayList<TechTeams>();
      TechTeams tt = new TechTeams(0,null);
      while ((lineFile = br.readLine()) != null) {
        // Splits lineFile in several Strings using the space separator
        splitLine = lineFile.split(" ");
        //Put all the element of the line into a IntervDates id
        ArrayList<int[]> teams = new ArrayList<int[]>();
        ArrayList<Integer> teamElement = new ArrayList<Integer>();
        int[] teami;
        int nbelement;
        tt.setDay(Integer.parseInt(splitLine[0]));
        int cpt = 3;
        while (cpt <= splitLine.length){
          
        }
        // for (int i = 1; i < splitLine.length; i++){
        //   nbelement = 0;
        //   if (splitLine[i] == "["){
        //     i++;
        //     teamElement = new ArrayList<Integer>();
        //     while(splitLine[i] != "]"){
        //       teamElement.add(Integer.parseInt(splitLine[i]));
        //       nbelement++;
        //     }
        //     if (nbelement != 0){
        //       teami = new int[nbelement];
        //       nbelement = 0;
        //       for (int j : teamElement){
        //         teami[nbelement] = j;
        //         nbelement++;
        //       }
        //     }
        //   }
        //   teamElement.add(nbelement);
        // }
        //Put tt into the arraylist of IntervDates
        interv_dates.add(id);
        lineNumber++;
      }
      int count = 0;
      //Create the array of IntervDates with the right number of element 
      ttspSolution.interv_dates = new IntervDates[lineNumber - 1];
      //List path to put it into the ttspSolution
      for(IntervDates i : interv_dates){
        ttspSolution.interv_dates[count] = new IntervDates();
        ttspSolution.interv_dates[count] = i;
        count ++;
      }
    }catch (IOException e) {
      e.printStackTrace();
    } finally {
      try {
        if (br != null)
          br.close();
        if (fr != null)
          fr.close();
      } catch (IOException e) {
        e.printStackTrace();
      }
    }
    return null;
  }
  }

  public static TTSPSolution ReadSolution(String fileInterv, String fileTech){
    BufferedReader br = null;
		FileReader fr = null;
    int lineNumber = 1;
    TTSPSolution ttspSolution = new TTSPSolution();
    //reading the file with technicians
    try {
      //Take the file in parameter to read it
			fr = new FileReader(fileTech);
      br = new BufferedReader(fr);
      String lineFile;
      String[] splitLine;
      //Creation of the arraylist with all interventions
      ArrayList<TechTeams> tech_teams = new ArrayList<TechTeams>();
      TechTeams tt = new TechTeams();
      while ((lineFile = br.readLine()) != null) {
        // Splits lineFile in several Strings using the space separator
        splitLine = lineFile.split(" ");
        //Put all the element of the line into a IntervDates id
        ArrayList<int[]> teams = new ArrayList<int[]>();
        ArrayList<Integer> teamElement = new ArrayList<Integer>();
        int[] teami;
        int nbelement;
        tt.setDay(Integer.parseInt(splitLine[0]));
        for (int i = 1; i < splitLine.length; i++){
          nbelement = 0;
          if (splitLine[i] == "["){
            i++;
            teamElement = new ArrayList<Integer>();
            while(splitLine[i] != "]"){
              teamElement.add(Integer.parseInt(splitLine[i]));
              nbelement++;
            }
            if (nbelement != 0){
              teami = new int[nbelement];
              nbelement = 0;
              for (int j : teamElement){
                teami[nbelement] = j;
                nbelement++;
              }
            }
          }
          teamElement.add(nbelement);
        }
        tt.setInterv(Integer.parseInt(splitLine[0]));
        tt.setDay(Integer.parseInt(splitLine[1]));
        tt.setTime(Integer.parseInt(splitLine[2]));
        tt.setTeam(Integer.parseInt(splitLine[3]));
        //Put tt into the arraylist of IntervDates
        interv_dates.add(id);
        lineNumber++;
      }
      int count = 0;
      //Create the array of IntervDates with the right number of element 
      ttspSolution.interv_dates = new IntervDates[lineNumber - 1];
      //List path to put it into the ttspSolution
      for(IntervDates i : interv_dates){
        ttspSolution.interv_dates[count] = new IntervDates();
        ttspSolution.interv_dates[count] = i;
        count ++;
      }
    }catch (IOException e) {
      e.printStackTrace();
    } finally {
      try {
        if (br != null)
          br.close();
        if (fr != null)
          fr.close();
      } catch (IOException e) {
        e.printStackTrace();
      }
    }
    return null;
  }


public static void readIntervD(String filename) throws FileNotFoundException {
  try (Scanner scanner = new Scanner(new FileReader(filename))) {
    // scanner.nextLine();
    // creation of the array interv_dates 
    ttspSolution.interv_dates=new IntervDates[1];
    while (scanner.hasNextLine()) {
      //Magnification of the array of an element
      for (int i = 0; i < count + 2; i++){
        IntervDates[] IntD = new IntervDates[i];
        System.arraycopy(ttspSolution.interv_dates, 0, IntD, 0, ttspSolution.interv_dates.length);
        ttspSolution.interv_dates = IntD;
      }
      processIntervD(scanner.nextLine(), filename);
    }
  }
}

public static void processIntervD(String line, String filename) throws FileNotFoundException {
  //Take the line to analyze
  Scanner scanner = new Scanner(line);
  //Put the delimiter
  scanner.useDelimiter(" ");
  //Put all the element of interv_dates to the right place
  if (scanner.hasNext()) {
    ttspSolution=new TTSPSolution();
    ttspSolution.interv_dates=new IntervDates[count + 1];
    ttspSolution.interv_dates[count].setInterv(Integer.parseInt(scanner.next()));
    ttspSolution.interv_dates[count].setDay(Integer.parseInt(scanner.next()));
    ttspSolution.interv_dates[count].setTime(Integer.parseInt(scanner.next()));
    ttspSolution.interv_dates[count].setTeam(Integer.parseInt(scanner.next()));
    count++;
  }
  else {
    System.out.println("Empty or invalid line. Unable to process.");
  }
}


  public static void main(String[] args) {
    ttspSolution = new TTSPSolution();
    ttspSolution.instance = ttspData.instance;
    ttspSolution.interv_list = ttspData.intervention;
    ttspSolution.tech_list = ttspData.technician;
    String[] list_files=listFiles("./data/datasetA/data1/");
    readInstance("./data/datasetA/data1/"+list_files[1]);
    System.out.println(getTtspData().instance.toString());
    readIntervL("./data/datasetA/data1/"+list_files[2]);
    System.out.println(getTtspData().intervention[1].getNumber());
  }
}

