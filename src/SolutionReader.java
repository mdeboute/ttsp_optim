package src;

import java.io.*;
import java.util.Scanner;

public class SolutionReader extends InstanceReader {
  private static TTSPSolution ttspSolution;

  public static TTSPSolution getTtspSolution() {
    return ttspSolution;
  }

//  public static void readFromFile(String file) throws FileNotFoundException {
//    try (Scanner scanner = new Scanner(new File(file))) {
//      scanner.nextLine();
//      int n;
//      double[] Sinterv = new double[n];
//      double[] Sday = new double[n];
//      double[] Stime = new double[n];
//      double[] Steam = new double[n];
//      int i = 0;
//      while(scanner.hasNextLine()){
//        processIntervD(scanner.nextLine(), Sinterv, Sday, Stime, Steam, i);
//        i = i+1;
//      }
//      ttspSolution = new TTSPSolution();
//      ttspSolution.interv_dates = new IntervDates();
//      ttspSolution.interv_dates.setInterv(Sinterv);
//      ttspSolution.interv_dates.setDay(Sday);
//      ttspSolution.interv_dates.setTime(Stime);
//      ttspSolution.interv_dates.setTeam(Steam);
//    }
//  }
//
//  public static void processIntervD(String line, double[] Sinterv, double[] Sday, double[] Stime, double[] Steam, int i){
//    Scanner scanner = new Scanner(line);
//    scanner.useDelimiter(" ");
//    if (scanner.hasNext()) {
//      Sinterv[i] = Double.parseDouble(scanner.next());
//      Sday[i] = Double.parseDouble(scanner.next());
//      Stime[i] = Double.parseDouble(scanner.next());
//      Steam[i] = Double.parseDouble(scanner.next());
//    }
//    else {
//      System.out.println("Empty or invalid line. Unable to process.");
//    }
//  }
}


