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
    private String username;
    private String password;
    private ArrayList<Role> rID;

    public User() {
    }

    public User(int uID, String username, String password, ArrayList<Role> rID) {
        this.uID = uID;
        this.username = username;
        this.password = password;
        this.rID = rID;
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

    public ArrayList<Role> getrID() {
        return rID;
    }

    public void setrID(ArrayList<Role> rID) {
        this.rID = rID;
    }

    @Override
    public String toString() {
        return "User{" + "uID=" + uID + ", username=" + username + ", password=" + password + ", rID=" + rID + '}';
    }

}
