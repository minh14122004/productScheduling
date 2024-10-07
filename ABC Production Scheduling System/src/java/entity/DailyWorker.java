/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;
import java.sql.*;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class DailyWorker {
    public int dwID;
    public Date day;
    public int wID;
    public int sID;
    public float KPI;

    public DailyWorker() {
    }

    public DailyWorker(int dwID, Date day, int wID, int sID, float KPI) {
        this.dwID = dwID;
        this.day = day;
        this.wID = wID;
        this.sID = sID;
        this.KPI = KPI;
    }

    public int getDwID() {
        return dwID;
    }

    public void setDwID(int dwID) {
        this.dwID = dwID;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }

    public int getwID() {
        return wID;
    }

    public void setwID(int wID) {
        this.wID = wID;
    }

    public int getsID() {
        return sID;
    }

    public void setsID(int sID) {
        this.sID = sID;
    }

    public float getKPI() {
        return KPI;
    }

    public void setKPI(float KPI) {
        this.KPI = KPI;
    }

    @Override
    public String toString() {
        return "DailyWorker{" + "dwID=" + dwID + ", day=" + day + ", wID=" + wID + ", sID=" + sID + ", KPI=" + KPI + '}';
    }
    
    
    
}
