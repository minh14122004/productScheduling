/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class FactoryHeader {
    public int fhId;
    public int aID;
    public int facID;
    public String name;

    public FactoryHeader() {
    }

    public FactoryHeader(int fhId, int aID, int facID, String name) {
        this.fhId = fhId;
        this.aID = aID;
        this.facID = facID;
        this.name = name;
    }

    public int getFhId() {
        return fhId;
    }

    public void setFhId(int fhId) {
        this.fhId = fhId;
    }

    public int getaID() {
        return aID;
    }

    public void setaID(int aID) {
        this.aID = aID;
    }

    public int getFacID() {
        return facID;
    }

    public void setFacID(int facID) {
        this.facID = facID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "FactoryHeader{" + "fhId=" + fhId + ", aID=" + aID + ", facID=" + facID + ", name=" + name + '}';
    }
    
    
    
    
}
