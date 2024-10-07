/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class Planer {
    public int planerID;
    public int aID;
    public String name;

    public Planer() {
    }

    public Planer(int planerID, int aID, String name) {
        this.planerID = planerID;
        this.aID = aID;
        this.name = name;
    }

    public int getPlanerID() {
        return planerID;
    }

    public void setPlanerID(int planerID) {
        this.planerID = planerID;
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
        return "Planer{" + "planerID=" + planerID + ", aID=" + aID + ", name=" + name + '}';
    }
    
    
}
