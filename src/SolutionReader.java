package src;

import java.io.*;

public class SolutionReader {
    public static void main(String[] args) throws IOException {
      // Le fichier d'entrée
      File file = new File("file.txt");
      // Créer l'objet File Reader
      FileReader fr = new FileReader(file);
      // Créer l'objet BufferedReader  
      BufferedReader br = new BufferedReader(fr);  
      int c = 0;             
      // Lire caractère par caractère
      while((c = br.read()) != -1)
      {
            // convertir l'entier en char
            char ch = (char) c;         
            // Afficher le caractère      
            System.out.println(ch);        
      }
   }
}
