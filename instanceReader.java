import java.io.*;
import java.util.Scanner;

public class instanceReader {

  public static void readFromFile(String f) throws FileNotFoundException {
    File file = new File(f);
    Scanner scanner = new Scanner(new FileReader(file));
    try{
      while (scanner.hasNextLine()){
        processLine(scanner.nextLine());
      }
    }
    finally{
      scanner.close();
    }
  }

  public static void processLine(String line) {
    Scanner scanner = new Scanner(line);
    scanner.useDelimiter(" ");
    if (scanner.hasNext()) {
      TTSPData instance=new TTSPData();
      instance.setName(scanner.next());
      instance.setDomains(Integer.parseInt(scanner.next()));
      instance.setLevel(Integer.parseInt(scanner.next()));
      instance.setTech(Integer.parseInt(scanner.next()));
      instance.setInterv(Integer.parseInt(scanner.next()));
      instance.setAbandon(Integer.parseInt(scanner.next()));
    }
    else{
      System.out.println("Empty or invalid line. Unable to process.");
    }
  }

  public static void main(String[] args) throws FileNotFoundException {
    readFromFile(args[0]);
  }
}
