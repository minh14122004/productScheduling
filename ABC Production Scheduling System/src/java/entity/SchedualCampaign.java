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

public class SchedualCampaign {
    private int scID;
    private int planCampainID;
    private Date date;
    private int shift;
    private int quantity;

    public SchedualCampaign() {
    }

    public SchedualCampaign(int scID, int planCampainID, Date date, int shift, int quantity) {
        this.scID = scID;
        this.planCampainID = planCampainID;
        this.date = date;
        this.shift = shift;
        this.quantity = quantity;
    }

    public int getScID() {
        return scID;
    }

    public void setScID(int scID) {
        this.scID = scID;
    }

    public int getPlanCampainID() {
        return planCampainID;
    }

    public void setPlanCampainID(int planCampainID) {
        this.planCampainID = planCampainID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getShift() {
        return shift;
    }

    public void setShift(int shift) {
        this.shift = shift;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "SchedualCampaign{" + "scID=" + scID + ", planCampainID=" + planCampainID + ", date=" + date + ", shift=" + shift + ", quantity=" + quantity + '}';
    }
    
    
}
