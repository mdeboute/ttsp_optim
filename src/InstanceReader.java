package src;

import java.io.*;
import java.util.Scanner;

public class InstanceReader {
  private static TTSPData ttspData;
  private static int count=0;

  public static TTSPData getTtspData() {
    return ttspData;
  }

  public static String[] listFiles(String INPUT_DIR_NAME) {
    File directory = new File(INPUT_DIR_NAME);
    String[] list = directory.list();

    if (list == null) {
      System.err.println("Invalid directory name");
    }
    return list;
  }

  public static Integer noOfLines(String filename) throws FileNotFoundException{
    int n=0;

    try (Scanner scanner = new Scanner(new FileReader(filename))) {
      while (scanner.hasNextLine()) {
        n++;
      }
    }
    return n;
  }

  public static void readInstance(String filename) throws FileNotFoundException {
    try (Scanner scanner = new Scanner(new FileReader(filename))) {
      scanner.nextLine();
      while (scanner.hasNextLine()) {
        processInstance(scanner.nextLine());
      }
    }
  }

  public static void processInstance(String line){
    Scanner scanner = new Scanner(line);
    scanner.useDelimiter(" ");

    if (scanner.hasNext()) {
      ttspData=new TTSPData();
      ttspData.instance=new Instance();
      ttspData.instance.setName((scanner.next()));
      ttspData.instance.setDomains(Integer.parseInt((scanner.next())));
      ttspData.instance.setLevel(Integer.parseInt((scanner.next())));
      ttspData.instance.setTechs(Integer.parseInt((scanner.next())));
      ttspData.instance.setInterv(Integer.parseInt((scanner.next())));
      ttspData.instance.setAbandon(Integer.parseInt((scanner.next())));
    }
    else {
      System.out.println("Empty or invalid line. Unable to process.");
    }
  }

  public static void readIntervL(String filename) throws FileNotFoundException {
    try (Scanner scanner = new Scanner(new FileReader(filename))) {
      scanner.nextLine();
      while (scanner.hasNextLine()) {
        processIntervL(scanner.nextLine());
      }
    }
  }

  public static void processIntervL(String line){
    Scanner scanner = new Scanner(line);
    scanner.useDelimiter(" ");

    if (scanner.hasNext()) {
      ttspData=new TTSPData();
      ttspData.interv_list[count]=new IntervList();
      ttspData.interv_list[count].setNumber(Integer.parseInt(scanner.next()));
      count++;
      System.out.println("I'm here");
    }
    else {
      System.out.println("Empty or invalid line. Unable to process.");
    }
  }

  public static void main(String[] args) throws IOException {
    String[] list_files=listFiles("./data/datasetA/data1/");
    readInstance("./data/datasetA/data1/"+list_files[1]);
    readIntervL("./data/datasetA/data1/"+list_files[2]);
    System.out.println(getTtspData().instance.toString());
    System.out.println(getTtspData().interv_list[0].getNumber());
  }
}