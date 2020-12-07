package src.AlgorithmGB;

import src.dataClasses.TTSPData;

public class Tech {

    public static int[][] skills_tech(TTSPData data, int technician){
        int nb_domain = data.getInstance().getDomains(); //number of domains
        int nb_level = data.getInstance().getLevel(); //equal to the max level
        int[][] dom_tech = new int[nb_domain][nb_level];
        for (int j = 0; j < nb_domain; j++) {
            int level = data.getTechnician()[technician].getD()[j+1];
            for (int k = 0; k < level; k++) {
                dom_tech[j][k] = 1;
            }
        }
        return dom_tech;
    }

    // Look if a tech is quite qualified alone to do the intervention
    public static boolean isSufficient(TTSPData data, int[][] dom_interv, int[][] dom_tech){
        int nb_domain = data.getInstance().getDomains(); //number of domains
        int nb_level = data.getInstance().getLevel(); //equal to the max level
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                if (dom_interv[j][k] > dom_tech[j][k]) {
                    return false;
                }
            }
        }
        return true;
    }

    // add the skill of a tech to a team
    public static int[][] teamAndTech(TTSPData data, int[][] skillsTeam, int[][] skillsTech){
        int nb_domain = data.getInstance().getDomains();
        int nb_level = data.getInstance().getLevel();
        int[][] skills = new int[nb_domain][nb_level];
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                skills[j][k] = skillsTech[j][k]+ skillsTeam[j][k];
            }
        }
        return skills;
    }

    // remove the skill of a tech from a team
    public static int[][] teamMinusTech(TTSPData data, int[][] skills, int[][] skillsTech){
        int nb_domain = data.getInstance().getDomains();
        int nb_level = data.getInstance().getLevel();
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                skills[j][k] = skills[j][k]-skillsTech[j][k];
            }
        }
        return skills;
    }

    public static boolean isteamMinusTechSufficient(TTSPData data, int[][] skills, int[][] skillsTech, int[][] skillsInterv){
        int nb_domain = data.getInstance().getDomains();
        int nb_level = data.getInstance().getLevel();
        int[][] newSkills = new int[nb_domain][nb_level];
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                newSkills[j][k] = skills[j][k]-skillsTech[j][k];
            }
        }
        return isSufficient(data, skillsInterv, newSkills);
    }
}
