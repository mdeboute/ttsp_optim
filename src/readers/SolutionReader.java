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
        String file_intervd = filePath + "/interv_dates";
        String file_techt = filePath + "/tech_teams";
        IntervDates[] interv_dates = processIntervDates(file_intervd);
        TechTeams[] tech_teams = processTechTeams(file_techt);
        return new TTSPSolution(interv_dates, tech_teams);
    }

    public static IntervDates[] processIntervDates(String file_intervd) {
        BufferedReader br = null;
        FileReader fr;
        int lineNumber = 1;
        IntervDates[] interv_dates = new IntervDates[lineNumber];
        /* reading the file with interventions */
        try {
            /* Take the file in parameter to read it */
            fr = new FileReader(file_intervd);
            br = new BufferedReader(fr);
            String lineFile;
            String[] splitLine;
            /* Creation of the arraylist with all interventions */
            ArrayList<IntervDates> array_interv_dates = new ArrayList<>();
            IntervDates id = new IntervDates(0, 0, 0, 0);
            while ((lineFile = br.readLine()) != null) {
                /* Splits lineFile in several Strings using the space separator */
                splitLine = lineFile.split(" ");
                /* Put all the element of the line into a IntervDates id */
                id.setInterv(Integer.parseInt(splitLine[0]));
                id.setDay(Integer.parseInt(splitLine[1]));
                id.setTime(Integer.parseInt(splitLine[2]));
                id.setTeam(Integer.parseInt(splitLine[3]));
                /* Put id into the arraylist of IntervDates */
                array_interv_dates.add(id);
                lineNumber++;
            }
            int count = 0;
            /* Create the array of IntervDates with the right number of element */
            interv_dates = new IntervDates[lineNumber - 1];
            /* List path to put it into the ttspSolution */
            for (IntervDates i : array_interv_dates) {
                interv_dates[count] = new IntervDates(0, 0, 0, 0);
                interv_dates[count] = i;
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
            String[] splitLine;
            /* Creation of the arraylist with all interventions */
            ArrayList<TechTeams> array_tech_teams = new ArrayList<>();
            TechTeams tt = new TechTeams(0, null);
            /* while the file is not empty */
            while ((lineFile = br.readLine()) != null) {
                /* Splits lineFile in several Strings using the space separator */
                splitLine = lineFile.split(" ");
                /* creation of teams to put all the teams for a day and teamElement to put all the tech of a team */
                ArrayList<int[]> teams = new ArrayList<>();
                ArrayList<Integer> teamElement = new ArrayList<>();
                int[] teami;
                /* Put the day into the TechTeams tt */
                tt.setDay(Integer.parseInt(splitLine[0]));
                /* Increase the counter to be on the "[" */
                int cpt = 1;
                /* while the line is not finish */
                while (cpt <= splitLine.length) {
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
        TTSPSolution ttspsolution = parse("./datas/datasetA/data1");
        System.out.println(Arrays.toString(ttspsolution.getInterv_dates()));
        System.out.println(Arrays.toString(ttspsolution.getTech_teams()));
    }
}

