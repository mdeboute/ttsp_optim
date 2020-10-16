package src;

import java.io.*;
import java.util.Scanner;

public class InstanceReader {
  private static TTSPData ttspData;
  private static int noOfLines=0;
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

  public static void readFromFile(String filename) throws FileNotFoundException {
    ttspData=new TTSPData();
    if(filename.equals("instance")){
      try (Scanner scanner = new Scanner(new FileReader(filename))) {
        scanner.nextLine();
        while (scanner.hasNextLine()) {
          processInstance(scanner.nextLine());
        }
      }
    }
    if(filename.equals("interv_list")) {
      try (Scanner scanner = new Scanner(new FileReader(filename))) {
        scanner.nextLine();
        while (scanner.hasNextLine()) {
          noOfLines++;
          processInterL(scanner.nextLine());
        }
      }
    }
  }

  public static void processInstance(String line){
    Scanner scanner = new Scanner(line);
    scanner.useDelimiter(" ");
    if (scanner.hasNext()) {
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

 public static void processInterL(String line){
   Scanner scanner = new Scanner(line);
   scanner.useDelimiter(" ");
   if (scanner.hasNext()) {
     ttspData=new TTSPData();
     ttspData.interv_list=new IntervList[noOfLines];
     ttspData.interv_list[count].setNumber(Double.parseDouble((scanner.next())));
     ttspData.interv_list[count].setTime(Double.parseDouble((scanner.next())));
//     ttspData.interv_list[count].setPreds( Double.parseDouble((scanner.next())));
     ttspData.interv_list[count].setPrio(Double.parseDouble((scanner.next())));
     ttspData.interv_list[count].setCost(Double.parseDouble((scanner.next())));
//     ttspData.interv_list[count].setD(Double.parseDouble((scanner.next())));
     count++;
   }
   else {
     System.out.println("Empty or invalid line. Unable to process.");
   }
 }


  public static void main(String[] args) throws IOException {
    String[] list_files=listFiles("./data/datasetA/data1/");
    readFromFile("./data/datasetA/data1/"+list_files[2]);
   // System.out.println(getTtspData().instance.toString());
    System.out.println(getTtspData().interv_list[0].getNumber());
  }
}
