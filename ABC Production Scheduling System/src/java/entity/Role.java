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
    public int rID;
    public String nameRole;
    public ArrayList<Feature> fID;

    public Role() {
    }

    public Role(int rID, String nameRole, ArrayList<Feature> fID) {
        this.rID = rID;
        this.nameRole = nameRole;
        this.fID = fID;
    }

    public int getrID() {
        return rID;
    }

    public void setrID(int rID) {
        this.rID = rID;
    }

    public String getNameRole() {
        return nameRole;
    }

    public void setNameRole(String nameRole) {
        this.nameRole = nameRole;
    }

    public ArrayList<Feature> getfID() {
        return fID;
    }

    public void setfID(ArrayList<Feature> fID) {
        this.fID = fID;
    }

    @Override
    public String toString() {
        return "Role{" + "rID=" + rID + ", nameRole=" + nameRole + ", fID=" + fID + '}';
    }
    
    
}
