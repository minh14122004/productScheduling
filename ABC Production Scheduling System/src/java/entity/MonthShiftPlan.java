/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class MonthShiftPlan {
    public int msID;
    public int facID;
    public Date month;
    public Date day;
    public ArrayList<Worker> wID;
    public int sID;

    public MonthShiftPlan() {
    }

    public MonthShiftPlan(int msID, int facID, Date month, Date day, ArrayList<Worker> wID, int sID) {
        this.msID = msID;
        this.facID = facID;
        this.month = month;
        this.day = day;
        this.wID = wID;
        this.sID = sID;
    }

    public int getMsID() {
        return msID;
    }

    public void setMsID(int msID) {
        this.msID = msID;
    }

    public int getFacID() {
        return facID;
    }

    public void setFacID(int facID) {
        this.facID = facID;
    }

    public Date getMonth() {
        return month;
    }

    public void setMonth(Date month) {
        this.month = month;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }

    public ArrayList<Worker> getwID() {
        return wID;
    }

    public void setwID(ArrayList<Worker> wID) {
        this.wID = wID;
    }

    public int getsID() {
        return sID;
    }

    public void setsID(int sID) {
        this.sID = sID;
    }

    @Override
    public String toString() {
        return "MonthShiftPlan{" + "msID=" + msID + ", facID=" + facID + ", month=" + month + ", day=" + day + ", wID=" + wID + ", sID=" + sID + '}';
    }
    
    
    
    
}
