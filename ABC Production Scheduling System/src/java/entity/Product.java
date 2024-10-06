/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class Product {
    public int pID;
    public String productName;
    public int estimated;

    public Product() {
    }

    public Product(int pID, String productName, int estimated) {
        this.pID = pID;
        this.productName = productName;
        this.estimated = estimated;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getEstimated() {
        return estimated;
    }

    public void setEstimated(int estimated) {
        this.estimated = estimated;
    }

    @Override
    public String toString() {
        return "Product{" + "pID=" + pID + ", productName=" + productName + ", estimated=" + estimated + '}';
    }

    
}
