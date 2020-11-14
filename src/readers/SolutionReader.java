package src.readers;

import src.solClasses.IntervDates;
import src.solClasses.TTSPSolution;
import src.solClasses.TechTeams;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class SolutionReader {

    public static TTSPSolution parse(String filePath) {
        String file_intervd = filePath + "/interv_dates";
        String file_techt = filePath + "/tech_teams";
        IntervDates[] interv_dates = processIntervDates(file_intervd);
        TechTeams[] tech_teams = processTechTeams(file_techt);
        return new TTSPSolution(interv_dates, tech_teams);
    }

    public static IntervDates[] processIntervDates(String file_intervd) {
        BufferedReader br = null;
        FileReader fr;
        int nbinterv = 0;
        /* try to catch the nb of intervention */
        try {
            fr = new FileReader(file_intervd);
            br = new BufferedReader(fr);
            // Reads the first line and puts everything in the String lineFile
            while (br.readLine() != null) {
                nbinterv++;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new IllegalStateException(
                    "Exception during the read of the file " + file_intervd);
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        IntervDates[] interv_dates = new IntervDates[nbinterv];
        /* reading the file with interventions */
        try {
            /* Take the file in parameter to read it */
            fr = new FileReader(file_intervd);
            br = new BufferedReader(fr);
            String lineFile;
            String[] splitLine;
            int count = 0;
            while ((lineFile = br.readLine()) != null) {
                /* Splits lineFile in several Strings using the space separator */
                splitLine = lineFile.split(" ");
                interv_dates[count] = new IntervDates(0, 0, 0, 0);
                interv_dates[count].setInterv(Integer.parseInt(splitLine[0]));
                interv_dates[count].setDay(Integer.parseInt(splitLine[1]));
                interv_dates[count].setTime(Integer.parseInt(splitLine[2]));
                interv_dates[count].setTeam(Integer.parseInt(splitLine[3]));
                count++;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                br.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return interv_dates;
    }

    public static TechTeams[] processTechTeams(String file_techt) {
        BufferedReader br = null;
        FileReader fr;
        int nbDays = 0;
        int count = 0;
        /* reading the file with technicians */
        try {
            fr = new FileReader(file_techt);
            br = new BufferedReader(fr);
            // Reads the first line and puts everything in the String lineFile
            String lineFile;
            while ((lineFile = br.readLine()) != null) {
                String[] splitLine = lineFile.split(" ");
                for (String i : splitLine) {
                    if (i.equals("[")) {
                        count++;
                    }
                }
                nbDays++;
                count = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new IllegalStateException(
                    "Exception during the read of the file " + file_techt);
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        TechTeams[] tech_teams = new TechTeams[nbDays + 1];
        tech_teams[0] = null;
        count = 0;

        try {
            /* Take the file in parameter to read it */
            fr = new FileReader(file_techt);
            br = new BufferedReader(fr);
            String lineFile;
            /* while the file is not empty */
            while ((lineFile = br.readLine()) != null) {
                /* Splits lineFile in several Strings using the space separator */
                String[] splitLine = lineFile.split(" ");
                /* creation of teams to put all the teams for a day and teamElement to put all the tech of a team */
                ArrayList<int[]> taboftab = new ArrayList<>();
                /* Put the day into the TechTeams tt */
                int nb_days = Integer.parseInt(splitLine[0]);
                /* Increase the counter of the line to be on the "[" */
                int cpt = 1;
                /* Start the counter of array of the line */
                /* while the line is not finish */
                while (cpt < splitLine.length) {
                    cpt++;
                    ArrayList<String> teamElement = new ArrayList<>();
                    /* while the array is not finish put all the elements into teamElement */
                    while (!splitLine[cpt].equals("]")) {
                        teamElement.add(splitLine[cpt]);
                        cpt++;
                    }
                    String[] obj = teamElement.toArray(new String[0]);
                    cpt++;
                    /* Put all the element of teamElement into a int[] teami */
                    int[] tab = new int[teamElement.size()];
                    for (int j = 0; j < tab.length; j++) {
                        int tech = Integer.parseInt(obj[j]);
                        tab[j] = tech;
                    }
                    taboftab.add(tab);
                }
                int[][] teams = taboftab.toArray(new int[1][0]);
                tech_teams[count + 1] = new TechTeams(nb_days, teams);
                count++;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                br.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return tech_teams;
    }


    public static void main(String[] args) {
        TTSPSolution ttspsolution = parse(args[0]);
        System.out.println(ttspsolution.toString());
    }
}

