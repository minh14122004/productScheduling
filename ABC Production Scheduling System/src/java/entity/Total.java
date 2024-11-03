/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class Total {
    private int totalID;
    private int productID;
    private int deapartmentID;
    private int total;

    public Total() {
    }

    public Total(int totalID, int productID, int deapartmentID, int total) {
        this.totalID = totalID;
        this.productID = productID;
        this.deapartmentID = deapartmentID;
        this.total = total;
    }

    public int getTotalID() {
        return totalID;
    }

    public void setTotalID(int totalID) {
        this.totalID = totalID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getDeapartmentID() {
        return deapartmentID;
    }

    public void setDeapartmentID(int deapartmentID) {
        this.deapartmentID = deapartmentID;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
    
    
}
