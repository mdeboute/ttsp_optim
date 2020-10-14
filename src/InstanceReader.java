package src;

import java.io.*;
import java.util.Scanner;

public class InstanceReader {
  private static int counter = 0;
  private static TTSPData[] instance;

  public static void readFromFile(char file) throws FileNotFoundException {
    Scanner scanner = new Scanner(new File(file));
    try {
      scanner.useDelimiter(" ");
      String all = scanner.next();
    } finally {
        scanner.close();
    }
  }


  public static void processLine(String line) {
    Scanner scanner = new Scanner(line);
    scanner.useDelimiter(" ");
    if (scanner.hasNext()) {
      instance[counter] = new TTSPData();
      instance[counter].setName(scanner.next());
      instance[counter].setDomains(scanner.next());
      instance[counter].setLevel(scanner.next());
      instance[counter].setTechs(scanner.next());
      instance[counter].setInterv(scanner.next());
      instance[counter].setAbandon(scanner.next());
      counter++;
    }
    else {
      System.out.println("Empty or invalid line. Unable to process.");
    }
  }


  public static void main(String[] args) throws FileNotFoundException {
    instance = new TTSPData[6];
    readFromFile(args[0]);
    for(int i = 1; i < 6; i++) {
      System.out.printf(instance[i].getName(), " ", instance[i].getDomains());
    }
  }
}
