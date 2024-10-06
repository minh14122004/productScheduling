/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class Human_rss_management {
    public int mID;
    public int aID;
    public String name;

    public Human_rss_management() {
    }

    public Human_rss_management(int mID, int aID, String name) {
        this.mID = mID;
        this.aID = aID;
        this.name = name;
    }

    public int getmID() {
        return mID;
    }

    public void setmID(int mID) {
        this.mID = mID;
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

    @Override
    public String toString() {
        return "Human_rss_management{" + "mID=" + mID + ", aID=" + aID + ", name=" + name + '}';
    }
    
    
}
