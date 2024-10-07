/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class SalaryBase {
    public int salID;
    public int rID;
    public float salaryBase;

    public SalaryBase() {
    }

    public SalaryBase(int salID, int rID, float salaryBase) {
        this.salID = salID;
        this.rID = rID;
        this.salaryBase = salaryBase;
    }

    public int getSalID() {
        return salID;
    }

    public void setSalID(int salID) {
        this.salID = salID;
    }

    public int getrID() {
        return rID;
    }

    public void setrID(int rID) {
        this.rID = rID;
    }

    public float getSalaryBase() {
        return salaryBase;
    }

    public void setSalaryBase(float salaryBase) {
        this.salaryBase = salaryBase;
    }

    @Override
    public String toString() {
        return "SalaryBase{" + "salID=" + salID + ", rID=" + rID + ", salaryBase=" + salaryBase + '}';
    }
    
    
}
