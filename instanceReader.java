import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;

public class instanceReader {
	public static void main (String[] args) throws IOException {
    try {
      BufferedReader in = new BufferedReader(new FileReader(args[0]));
      String line=in.readLine();
		  //while ((line = in.readLine()) != null) {
        //data=line;
		  //}
      in.close();
      System.out.println(line);
    }
    catch(Exception e) {
      e.printStackTrace();
    }
  }
}
