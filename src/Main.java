import java.io.*;
public class Main
{
  public static void main(String args[])
  {
    try
    {
      // Le fichier d'entrée
      File file = new File("file.txt");
      // Créer l'objet File Reader
      FileReader fr = new FileReader(file);
      // Créer l'objet BufferedReader
      BufferedReader br = new BufferedReader(fr);
      StringBuffer sb = new StringBuffer();
      String line;
      while((line = br.readLine()) != null)
      {
        // ajoute la ligne au buffer
        sb.append(line);
        sb.append("\n");
      }
      fr.close();
      System.out.println("Contenu du fichier: ");
      System.out.println(sb.toString());
    }
    catch(IOException e)
    {
      e.printStackTrace();
    }
  }
}
