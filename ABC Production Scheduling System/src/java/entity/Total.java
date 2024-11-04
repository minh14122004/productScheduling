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
    private Product product;
    private int deapartmentID;
    private int total;
    private int producted;
    private String ProductName;
    
    public Total() {
    }

    public Total(int totalID, Product product, int deapartmentID, int total, int producted) {
        this.totalID = totalID;
        this.product = product;
        this.deapartmentID = deapartmentID;
        this.total = total;
        this.producted = producted;
    }

    

    public int getTotalID() {
        return totalID;
    }

    public void setTotalID(int totalID) {
        this.totalID = totalID;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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

    public int getProducted() {
        return producted;
    }

    public void setProducted(int producted) {
        this.producted = producted;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }
    
    
    
    
    
}
