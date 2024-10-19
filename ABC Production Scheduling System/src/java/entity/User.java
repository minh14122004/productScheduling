/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class User {
    private int uID;
    private int rID;
    private String username;
    private String password;
    private int EmployeeID;
    
    public User() {
    }

    public User(int uID, int EmployeeID) {
        this.uID = uID;
        this.EmployeeID = EmployeeID;
    }

    public User(int uID, int rID, String username, String password, int EmployeeID) {
        this.uID = uID;
        this.rID = rID;
        this.username = username;
        this.password = password;
        this.EmployeeID = EmployeeID;
    }
    

    public int getuID() {
        return uID;
    }

    public void setuID(int uID) {
        this.uID = uID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getrID() {
        return rID;
    }

    public void setrID(int rID) {
        this.rID = rID;
    }

    public int getEmployeeID() {
        return EmployeeID;
    }

    public void setEmployeeID(int EmployeeID) {
        this.EmployeeID = EmployeeID;
    }

    @Override
    public String toString() {
        return "User{" + "uID=" + uID + ", rID=" + rID + ", username=" + username + ", password=" + password + ", EmployeeID=" + EmployeeID + '}';
    }

}
