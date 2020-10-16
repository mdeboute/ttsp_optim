package src;

import java.io.*;
import java.util.Scanner;

public class Checker {

    public static int checker(TTSPData data, TTSPSolution sol){
        if (data.instance != sol.instance){
            System.out.print("Issues : The solution is not the one for this instance");
            return 0;
        }
        return 1;
    }
//    public static void main(String[] args) throws FileNotFoundException {
//        // TTSPSolution ttspSolution = SolutionReader("./solutions/sol_A_3_#2");
//        // TTSPData ttspsolution = InstanceReader("./solutions/sol_A_3_#2");
//        // int result = checker(ttspData, ttspSolution);
//        System.out.print("----------------------------\n");
//        System.out.print("----- CHECK CONSTRAINTS ----\n");
//        System.out.print("----------------------------\n");
//        System.out.print("----------------------------\n");
//        //int result = checker(ttspData, ttspSolution);
//        System.out.print("-> FEASIBLE =" + result + "(0=false/1=true)");
//    }
}
