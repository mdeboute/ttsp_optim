package src;

import java.io.*;
import java.util.Scanner;

public class InstanceReader {
  private static TTSPData ttspData;


  public static void readFromFile(String file) throws FileNotFoundException {
    try (Scanner scanner = new Scanner(new File(file))) {
      System.out.println(scanner.nextLine());
    }
  }

  public static void main(String[] args) throws FileNotFoundException {
    readFromFile("data/datasetA/data1/instance");
  }
}
