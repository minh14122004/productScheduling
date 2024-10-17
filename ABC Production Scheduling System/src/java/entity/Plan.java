/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */

import java.sql.*;

public class Plan {
    private int planID;
    private String planName;
    private Date startDate;
    private Date endDate;
    private int dID;

    public Plan() {
    }

    public Plan(int planID, String planName, Date startDate, Date endDate, int dID) {
        this.planID = planID;
        this.planName = planName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.dID = dID;
    }

    public int getPlanID() {
        return planID;
    }

    public void setPlanID(int planID) {
        this.planID = planID;
    }

    public String getPlanName() {
        return planName;
    }

    public void setPlanName(String planName) {
        this.planName = planName;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public int getdID() {
        return dID;
    }

    public void setdID(int dID) {
        this.dID = dID;
    }

    @Override
    public String toString() {
        return "Plan{" + "planID=" + planID + ", planName=" + planName + ", startDate=" + startDate + ", endDate=" + endDate + ", dID=" + dID + '}';
    }
    
}
