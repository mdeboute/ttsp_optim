package src;

import java.io.*;
import java.util.Scanner;

public class InstanceReader {
  private static TTSPData ttspData;
  private static int noOfLines=0;

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

  public static void readFromFile(String filename) throws FileNotFoundException {
    try (Scanner scanner = new Scanner(new FileReader(filename))) {
      scanner.nextLine();
      while (scanner.hasNextLine()) {
        noOfLines++;
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
      ttspData.instance.setDomains(Double.parseDouble((scanner.next())));
      ttspData.instance.setLevel(Double.parseDouble((scanner.next())));
      ttspData.instance.setTechs(Double.parseDouble((scanner.next())));
      ttspData.instance.setInterv(Double.parseDouble((scanner.next())));
      ttspData.instance.setAbandon(Double.parseDouble((scanner.next())));
    }
    else {
      System.out.println("Empty or invalid line. Unable to process.");
    }
  }

  public static void main(String[] args) throws IOException {
    String[] list_files=listFiles("./data/datasetA/data1/");
    readFromFile("./data/datasetA/data1/"+list_files[1]);
    System.out.println(getTtspData().instance.toString());
  }
}
