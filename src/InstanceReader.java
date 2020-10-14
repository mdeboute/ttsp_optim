package src;

import java.io.*;
import java.util.Scanner;

public class InstanceReader {
  private static int counter=0;
  private static TTSPData[] ttspData;


  public static void readFromFile(String file) throws FileNotFoundException {
    try (Scanner scanner = new Scanner(new File(file))) {
      scanner.nextLine();
      while(scanner.hasNextLine()){
        processLine(scanner.nextLine());
      }
    }
  }

  public static void processLine(String line){
    Scanner scanner = new Scanner(line);
    scanner.useDelimiter(" ");
    if (scanner.hasNext()) {

      counter++;
    }
    else {
      System.out.println("Empty or invalid line. Unable to process.");
    }
  }

  public static void main(String[] args) throws FileNotFoundException {
    readFromFile("data/datasetA/data1/instance");
  }
}
