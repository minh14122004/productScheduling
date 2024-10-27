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
    private Plan plan;
    private Product product;
    private int quantity;
    private float cost;

    public PlanCampain() {
    }

    public PlanCampain(int planCampainID, Plan plan, Product product, int quantity, float cost) {
        this.planCampainID = planCampainID;
        this.plan = plan;
        this.product = product;
        this.quantity = quantity;
        this.cost = cost;
    }

    public int getPlanCampainID() {
        return planCampainID;
    }

    public void setPlanCampainID(int planCampainID) {
        this.planCampainID = planCampainID;
    }

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    @Override
    public String toString() {
        return "PlanCampain{" + "planCampainID=" + planCampainID + ", plan=" + plan + ", product=" + product + ", quantity=" + quantity + ", cost=" + cost + '}';
    }
    
    
    
}
