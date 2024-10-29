/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class Department {
    private int dID;
    private String dName;
    private String dType;

    public Department() {
    }

    public Department(int dID, String dName, String dType) {
        this.dID = dID;
        this.dName = dName;
        this.dType = dType;
    }

    public int getdID() {
        return dID;
    }

    public void setdID(int dID) {
        this.dID = dID;
    }

    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName;
    }

    public String getdType() {
        return dType;
    }

    public void setdType(String dType) {
        this.dType = dType;
    }

    @Override
    public String toString() {
        return "Department{" + "dID=" + dID + ", dName=" + dName + ", dType=" + dType + '}';
    }


    
    
    
}
