/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class Feature {
    private int fID;
    private String fName;
    private String url;

    public Feature() {
    }

    public Feature(int fID, String fName, String url) {
        this.fID = fID;
        this.fName = fName;
        this.url = url;
    }

    public int getfID() {
        return fID;
    }

    public void setfID(int fID) {
        this.fID = fID;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Feature{" + "fID=" + fID + ", fName=" + fName + ", url=" + url + '}';
    }
    
    
}
