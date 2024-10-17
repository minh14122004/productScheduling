/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class PlanCampain {
    private int planCampainID;
    private int planID;
    private int pID;
    private int quantity;
    private int estimate;

    public PlanCampain() {
    }

    public PlanCampain(int planCampainID, int planID, int pID, int quantity, int estimate) {
        this.planCampainID = planCampainID;
        this.planID = planID;
        this.pID = pID;
        this.quantity = quantity;
        this.estimate = estimate;
    }

    public int getPlanCampainID() {
        return planCampainID;
    }

    public void setPlanCampainID(int planCampainID) {
        this.planCampainID = planCampainID;
    }

    public int getPlanID() {
        return planID;
    }

    public void setPlanID(int planID) {
        this.planID = planID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getEstimate() {
        return estimate;
    }

    public void setEstimate(int estimate) {
        this.estimate = estimate;
    }

    @Override
    public String toString() {
        return "PlanCampain{" + "planCampainID=" + planCampainID + ", planID=" + planID + ", pID=" + pID + ", quantity=" + quantity + ", estimate=" + estimate + '}';
    }
    
           
}
