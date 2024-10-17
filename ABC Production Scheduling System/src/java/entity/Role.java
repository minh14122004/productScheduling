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
public class Role {
    private int rID;
    private String roleName;
    private String description;
    private ArrayList<Feature> fID;
        
    public Role() {
    }

    public Role(int rID, String roleName, String description, ArrayList<Feature> fID) {
        this.rID = rID;
        this.roleName = roleName;
        this.description = description;
        this.fID = fID;
    }

    public int getrID() {
        return rID;
    }

    public void setrID(int rID) {
        this.rID = rID;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public ArrayList<Feature> getfID() {
        return fID;
    }

    public void setfID(ArrayList<Feature> fID) {
        this.fID = fID;
    }

    @Override
    public String toString() {
        return "Role{" + "rID=" + rID + ", roleName=" + roleName + ", description=" + description + ", fID=" + fID + '}';
    }

    
    
}
