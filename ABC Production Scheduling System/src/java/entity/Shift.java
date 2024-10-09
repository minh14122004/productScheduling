/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Timer;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class Shift {
    public int sID;
    public int facID;
    public String name;
    public Timer start;
    public Timer to;

    public Shift() {
    }

    public Shift(int sID, int facID, String name, Timer start, Timer to) {
        this.sID = sID;
        this.facID = facID;
        this.name = name;
        this.start = start;
        this.to = to;
    }

    public int getsID() {
        return sID;
    }

    public void setsID(int sID) {
        this.sID = sID;
    }

    public int getFacID() {
        return facID;
    }

    public void setFacID(int facID) {
        this.facID = facID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Timer getStart() {
        return start;
    }

    public void setStart(Timer start) {
        this.start = start;
    }

    public Timer getTo() {
        return to;
    }

    public void setTo(Timer to) {
        this.to = to;
    }
    
    

    @Override
    public String toString() {
        return "Shift{" + "sID=" + sID + ", facID=" + facID + ", name=" + name + ", start=" + start + ", to=" + to + '}';
    }
    
    
    
}
