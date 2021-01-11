package src.heuristic;

import src.dataClasses.TTSPData;

/**
 * A class of static method who allow to do some check or sum different array of skills
 */
public class Tech {

    /**
     * skills_tech creat a double array with all the levels in each domains of the instance of a technician
     *
     * @param data       the data of this instance
     * @param technician the technician that we want to have the skills
     * @return the double array of the skills
     */
    public static int[][] skills_tech(TTSPData data, int technician) {
        int nb_domain = data.getInstance().getDomains(); //number of domains
        int nb_level = data.getInstance().getLevel(); //equal to the max level
        int[][] dom_tech = new int[nb_domain][nb_level];
        for (int j = 0; j < nb_domain; j++) {
            int level = data.getTechnician()[technician].getD()[j + 1];
            for (int k = 0; k < level; k++) {
                dom_tech[j][k] = 1;
            }
        }
        return dom_tech;
    }

    /**
     * isSuifficient look if the skills of a team(or a tech alone) is quite qualified alone to do the intervention
     * To check that, it's compare the double array of skills of each one
     *
     * @param dom_interv the double array of skills of the intervention
     * @param dom_tech   the double array of skills of the team (or tech)
     * @return a boolean
     */
    public static boolean isSufficient(TTSPData data, int[][] dom_interv, int[][] dom_tech) {
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

    /**
     * teamAndTech do the sum of skills a Team with skills of a technician
     *
     * @param skillsTeam the double array of skills of the team
     * @param skillsTech the double array of skills of the tech
     * @return a new array with skills of this sum
     */
    public static int[][] teamAndTech(TTSPData data, int[][] skillsTeam, int[][] skillsTech) {
        int nb_domain = data.getInstance().getDomains();
        int nb_level = data.getInstance().getLevel();
        int[][] skills = new int[nb_domain][nb_level];
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                skills[j][k] = skillsTech[j][k] + skillsTeam[j][k];
            }
        }
        return skills;
    }

    //

    /**
     * teamMinusTech allow to remove the skill of a tech from a team
     *
     * @param skills     the double array of skills of the team
     * @param skillsTech the double array of skills of the tech that we want to remove of the team
     * @return a new array with the new skill of the team
     */
    public static int[][] teamMinusTech(TTSPData data, int[][] skills, int[][] skillsTech) {
        int nb_domain = data.getInstance().getDomains();
        int nb_level = data.getInstance().getLevel();
        for (int j = 0; j < nb_domain; j++) {
            for (int k = 0; k < nb_level; k++) {
                skills[j][k] = skills[j][k] - skillsTech[j][k];
            }
        }
        return skills;
    }

}
