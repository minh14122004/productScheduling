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

    @Override
    public String toString() {
        return "Shift{" + "sID=" + sID + ", facID=" + facID + ", name=" + name + ", start=" + start + ", to=" + to + '}';
    }
    
    
    
}
