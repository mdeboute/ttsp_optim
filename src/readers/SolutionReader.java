package src.readers;

import src.solClasses.IntervDates;
import src.solClasses.TTSPSolution;
import src.solClasses.TechTeams;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public class SolutionReader {

    public static TTSPSolution parse(String filePath) {
        String file_intervd = filePath;/* + "/interv_dates";*/
        String file_techt = filePath + "/tech_teams";
        IntervDates[] interv_dates = processIntervDates(file_intervd);
        TechTeams[] tech_teams = processTechTeams(file_techt);
        return new TTSPSolution(interv_dates, tech_teams);
    }

    public static IntervDates[] processIntervDates(String file_intervd) {
        BufferedReader br = null;
        FileReader fr;
        int nbinterv;
        /* try to catch the nb of intervention */
        try {
            fr = new FileReader(file_intervd + "/instance");
            br = new BufferedReader(fr);
            // Reads the first line and puts everything in the String lineFile
            br.readLine();
            String lineFile;
            lineFile = br.readLine();
            // Splits lineFile in several Strings using the space separator
            String[] splitLine = lineFile.split(" ");
            nbinterv = Integer.parseInt(splitLine[4]);
        } catch (Exception e) {
            e.printStackTrace();
            throw new IllegalStateException(
                    "Exception during the read of the file " + file_intervd + "/instance");
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        IntervDates[] interv_dates = new IntervDates[nbinterv + 1];
        /* reading the file with interventions */
        try {
            /* Take the file in parameter to read it */
            fr = new FileReader(file_intervd + "/interv_dates");
            br = new BufferedReader(fr);
            String lineFile;
            String[] splitLine;
            int count = 1;
            /* Creation of the arraylist with all interventions */
            while ((lineFile = br.readLine()) != null) {
                /* Splits lineFile in several Strings using the space separator */
                splitLine = lineFile.split(" ");
                interv_dates[count] = new IntervDates(0, 0, 0, 0);
                interv_dates[count].setInterv(Integer.parseInt(splitLine[0]));
                interv_dates[count].setDay(Integer.parseInt(splitLine[1]));
                interv_dates[count].setTime(Integer.parseInt(splitLine[2]));
                interv_dates[count].setTeam(Integer.parseInt(splitLine[3]));
                count ++;
            }
            /* List path to put it into the ttspSolution */
            // interv_dates[0].setInterv(lineNumber);
            interv_dates[0] = new IntervDates(count, 0, 0, 0);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return interv_dates;
    }

    public static TechTeams[] processTechTeams(String file_techt) {
        BufferedReader br = null;
        FileReader fr;
        int lineNumber = 1;
        TechTeams[] tech_teams = new TechTeams[lineNumber];
        /* reading the file with technicians */
        try {
            /* Take the file in parameter to read it */
            fr = new FileReader(file_techt);
            br = new BufferedReader(fr);
            String lineFile;
            /* Creation of the arraylist with all interventions */
            ArrayList<TechTeams> array_tech_teams = new ArrayList<>();
            TechTeams tt = new TechTeams(0, null);
            ArrayList<int[]> teams = new ArrayList<>();
            ArrayList<Integer> teamElement = new ArrayList<>();
            /* while the file is not empty */
            while ((lineFile = br.readLine()) != null) {
                /* Splits lineFile in several Strings using the space separator */
                String[] splitLine = lineFile.split(" ");
                /* creation of teams to put all the teams for a day and teamElement to put all the tech of a team */
                int[] teami;
                /* Put the day into the TechTeams tt */
                tt.setDay(Integer.parseInt(splitLine[0]));
                /* Increase the counter to be on the "[" */
                int cpt = 1;
                /* while the line is not finish */
                while (cpt < splitLine.length) {
                    cpt++;
                    /* while the array is not finish put all the elements into teamElement */
                    while (!splitLine[cpt].equals("]")) {
                        teamElement.add(Integer.parseInt(splitLine[cpt]));
                        cpt++;
                    }
                    cpt++;
                    /* Put all the element of teamElement into a int[] teami */
                    teami = new int[teamElement.size()];
                    int s = 0;
                    for (Integer i : teamElement) {
                        teami[s] = i;
                        s++;
                    }
                    teams.add(teami);
                }
                /* Put all the element of teams into a int[][] teamline */
                int[][] teamline = new int[teams.size()][];
                int s = 0;
                for (int[] j : teams) {
                    teamline[s] = j;
                    s++;
                }
                tt.setTeam(teamline);
                array_tech_teams.add(tt);
                lineNumber++;
            }
            /* Put all the element of array_tech_teams into a TechTeams[] tech_teams */
            tech_teams = new TechTeams[lineNumber];
            tech_teams[0] = new TechTeams(0, null);
            tech_teams[0] = null;
            int count = 1;
            for (TechTeams i : array_tech_teams) {
                tech_teams[count] = new TechTeams(0, null);
                tech_teams[count] = i;
                count++;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return tech_teams;
    }


    public static void main(String[] args) {
        TTSPSolution ttspsolution = parse("./datas/solutions/sol_A_3_#2");
        int count = ttspsolution.getInterv_dates()[0].getInterv();
        for (int i = 1; i < count + 1; i++){
            System.out.println("IntervDates{interv = " + ttspsolution.getInterv_dates()[i].getInterv() + 
            ", day = " + ttspsolution.getInterv_dates()[i].getDay() + 
            ", time = " + ttspsolution.getInterv_dates()[i].getTime() + 
            ", team = " + ttspsolution.getInterv_dates()[i].getTeam() + "}, ");
        }
        // System.out.println(Arrays.toString(ttspsolution.getInterv_dates()));
        System.out.println(Arrays.toString(ttspsolution.getTech_teams()));
    }
}

