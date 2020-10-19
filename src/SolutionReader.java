package src;

import java.io.*;
import java.util.*;

public class SolutionReader extends InstanceReader {
  private static TTSPSolution ttspSolution;
  private static int count=0;

  public static TTSPSolution getTtspSolution() {
    return ttspSolution;
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
    TTSPData ttspData = InstanceReader(args[0]);
    ttspSolution = new TTSPSolution();
    ttspSolution.instance = ttspData.instance;
    ttspSolution.interv_list = ttspData.interv_list;
    ttspSolution.tech_list = ttspData.tech_list;
    String[] list_files=listFiles("./data/datasetA/data1/");
    readInstance("./data/datasetA/data1/"+list_files[1]);
    System.out.println(getTtspData().instance.toString());
    readIntervL("./data/datasetA/data1/"+list_files[2]);
    System.out.println(getTtspData().interv_list[1].getNumber());
  }
}


