/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class Feature {
    public int fID;
    public String featureName;
    public ArrayList<Role> rID;

    public Feature() {
    }

    public Feature(int fID, String featureName, ArrayList<Role> rID) {
        this.fID = fID;
        this.featureName = featureName;
        this.rID = rID;
    }

    public int getfID() {
        return fID;
    }

    public void setfID(int fID) {
        this.fID = fID;
    }

    public String getFeatureName() {
        return featureName;
    }

    public void setFeatureName(String featureName) {
        this.featureName = featureName;
    }

    public ArrayList<Role> getrID() {
        return rID;
    }

    public void setrID(ArrayList<Role> rID) {
        this.rID = rID;
    }

    @Override
    public String toString() {
        return "Feature{" + "fID=" + fID + ", featureName=" + featureName + ", rID=" + rID + '}';
    }
    
    
}
