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
    private int shift;
    private String name;
    private Timer startTime;
    private Timer toTime;

    public Shift() {
    }

    public Shift(int shift, String name, Timer startTime, Timer toTime) {
        this.shift = shift;
        this.name = name;
        this.startTime = startTime;
        this.toTime = toTime;
    }

    public int getShift() {
        return shift;
    }

    public void setShift(int shift) {
        this.shift = shift;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Timer getStartTime() {
        return startTime;
    }

    public void setStartTime(Timer startTime) {
        this.startTime = startTime;
    }

    public Timer getToTime() {
        return toTime;
    }

    public void setToTime(Timer toTime) {
        this.toTime = toTime;
    }

    @Override
    public String toString() {
        return "Shift{" + "shift=" + shift + ", name=" + name + ", startTime=" + startTime + ", toTime=" + toTime + '}';
    }
    
    
}
