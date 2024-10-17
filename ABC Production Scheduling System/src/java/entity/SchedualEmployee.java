/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class SchedualEmployee {
    private int schedualeID;
    private int scID;
    private int eID;
    private int quantity;

    public SchedualEmployee() {
    }

    public SchedualEmployee(int schedualeID, int scID, int eID, int quantity) {
        this.schedualeID = schedualeID;
        this.scID = scID;
        this.eID = eID;
        this.quantity = quantity;
    }

    public int getSchedualeID() {
        return schedualeID;
    }

    public void setSchedualeID(int schedualeID) {
        this.schedualeID = schedualeID;
    }

    public int getScID() {
        return scID;
    }

    public void setScID(int scID) {
        this.scID = scID;
    }

    public int geteID() {
        return eID;
    }

    public void seteID(int eID) {
        this.eID = eID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "SchedualEmployee{" + "schedualeID=" + schedualeID + ", scID=" + scID + ", eID=" + eID + ", quantity=" + quantity + '}';
    }
    
    
}
