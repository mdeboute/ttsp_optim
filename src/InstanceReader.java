package src;

import java.io.*;
import java.util.Scanner;

public class InstanceReader {
  private static TTSPData ttspData;

  public static TTSPData getTtspData() {
    return ttspData;
  }

  public static String[] listDir(String dir) {
    File directory = new File(dir);
    String[] list = directory.list();

    if (list == null) {
      System.err.println("Invalid directory name");
    }
    return list;
  }

  public static void readFromFile(String file) throws FileNotFoundException {
    try (Scanner scanner = new Scanner(new File(file))) {
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
      ttspData.instance.setAbandon(Double.parseDouble((scanner.next())));
      ttspData.instance.setDomains(Double.parseDouble((scanner.next())));
      ttspData.instance.setInterv(Double.parseDouble((scanner.next())));
      ttspData.instance.setLevel(Double.parseDouble((scanner.next())));
      ttspData.instance.setTechs(Double.parseDouble((scanner.next())));
    }
    else {
      System.out.println("Empty or invalid line. Unable to process.");
    }
  }

  public static void main(String[] args) throws FileNotFoundException {
    readFromFile("./data/datasetA/data1/instance");
    System.out.println(ttspData.instance.toString());
  }
}
