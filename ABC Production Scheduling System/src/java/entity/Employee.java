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

public class Employee {
    private int eID;
    private String eName;
    private boolean gender;
    private String address;
    private Date dob;
    private int rID;
    private int dID;
    private long salary;

    public Employee() {
    }

    public Employee(int eID, String eName, boolean gender, String address, Date dob, int rID, int dID, long salary) {
        this.eID = eID;
        this.eName = eName;
        this.gender = gender;
        this.address = address;
        this.dob = dob;
        this.rID = rID;
        this.dID = dID;
        this.salary = salary;
    }

    public int geteID() {
        return eID;
    }

    public void seteID(int eID) {
        this.eID = eID;
    }

    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public int getrID() {
        return rID;
    }

    public void setrID(int rID) {
        this.rID = rID;
    }

    public int getdID() {
        return dID;
    }

    public void setdID(int dID) {
        this.dID = dID;
    }

    public long getSalary() {
        return salary;
    }

    public void setSalary(long salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Employee{" + "eID=" + eID + ", eName=" + eName + ", gender=" + gender + ", address=" + address + ", dob=" + dob + ", rID=" + rID + ", dID=" + dID + ", salary=" + salary + '}';
    }
    
    
}
