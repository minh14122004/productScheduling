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
public class Worker {
    public int wId;
    public int aID;
    public String name;
    public int facID;
    public boolean gender;

    public Worker() {
    }

    public Worker(int wId, int aID, String name, int facID, boolean gender) {
        this.wId = wId;
        this.aID = aID;
        this.name = name;
        this.facID = facID;
        this.gender = gender;
    }

    public int getwId() {
        return wId;
    }

    public void setwId(int wId) {
        this.wId = wId;
    }

    public int getaID() {
        return aID;
    }

    public void setaID(int aID) {
        this.aID = aID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getFacID() {
        return facID;
    }

    public void setFacID(int facID) {
        this.facID = facID;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Worker{" + "wId=" + wId + ", aID=" + aID + ", name=" + name + ", facID=" + facID + ", gender=" + gender + '}';
    }
    
    
    
    
}
