/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class Account {
    public int aID;
    public int rID;
    private String username;
    private String password;

    public Account() {
    }

    public Account(int aID, int rID, String username, String password) {
        this.aID = aID;
        this.rID = rID;
        this.username = username;
        this.password = password;
    }

    public int getaID() {
        return aID;
    }

    public void setaID(int aID) {
        this.aID = aID;
    }

    public int getrID() {
        return rID;
    }

    public void setrID(int rID) {
        this.rID = rID;
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

    @Override
    public String toString() {
        return "Account{" + "aID=" + aID + ", rID=" + rID + ", username=" + username + ", password=" + password + '}';
    }

    

}
