/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class CustomerOrder {
    public int oID;
    public int pID;
    public int Quantity;
    public boolean done;

    public CustomerOrder() {
    }

    public CustomerOrder(int oID, int pID, int Quantity, boolean done) {
        this.oID = oID;
        this.pID = pID;
        this.Quantity = Quantity;
        this.done = done;
    }

    public int getoID() {
        return oID;
    }

    public void setoID(int oID) {
        this.oID = oID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    @Override
    public String toString() {
        return "CustomerOrder{" + "oID=" + oID + ", pID=" + pID + ", Quantity=" + Quantity + ", done=" + done + '}';
    }
    
    
}
