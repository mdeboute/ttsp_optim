package src;

import java.io.*;
import java.util.Scanner;

public class InstanceReader {
  private static TTSPData ttspData;

  public static TTSPData getTtspData() {
    return ttspData;
  }

  public static void listDir(String dir) {
    File directory = new File(dir);
    String list[] = directory.list();

    if (list != null) {
      for (int i = 0; i < list.length; i++) {
        System.out.println(list[i]);
      }
    } else {
      System.err.println("Invalid directory name");
    }
  }

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
    listDir("./data/datasetA/");
    //readFromFile(args[0]);
  }
}
