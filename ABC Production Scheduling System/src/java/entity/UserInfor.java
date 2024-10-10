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


public class UserInfor {
    public int uID;
    public int aID;
    public String name;
    public boolean gender;
    public Date dob;

    public UserInfor() {
    }

    public UserInfor(int uID, int aID, String name, boolean gender, Date dob) {
        this.uID = uID;
        this.aID = aID;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
    }

    public int getuID() {
        return uID;
    }

    public void setuID(int uID) {
        this.uID = uID;
    }

    public int getaID() {
        return aID;
    }

    public void setaID(int aID) {
        this.aID = aID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    @Override
    public String toString() {
        return "UserInfor{" + "uID=" + uID + ", aID=" + aID + ", name=" + name + ", gender=" + gender + ", dob=" + dob + '}';
    }
    
    
    
    
}
