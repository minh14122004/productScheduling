/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;
import java.sql.*;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class PlanDetail {
    public int pldID;
    public Date date;
    public int pID;
    public int oID;
    public int facId;
    public int planerID;
    public int quantity;
    public String note;
    public boolean done;

    public PlanDetail() {
    }

    public PlanDetail(int pldID, Date date, int pID, int oID, int facId, int planerID, int quantity, String note, boolean done) {
        this.pldID = pldID;
        this.date = date;
        this.pID = pID;
        this.oID = oID;
        this.facId = facId;
        this.planerID = planerID;
        this.quantity = quantity;
        this.note = note;
        this.done = done;
    }

    public int getPldID() {
        return pldID;
    }

    public void setPldID(int pldID) {
        this.pldID = pldID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getoID() {
        return oID;
    }

    public void setoID(int oID) {
        this.oID = oID;
    }

    public int getFacId() {
        return facId;
    }

    public void setFacId(int facId) {
        this.facId = facId;
    }

    public int getPlanerID() {
        return planerID;
    }

    public void setPlanerID(int planerID) {
        this.planerID = planerID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    @Override
    public String toString() {
        return "PlanDetail{" + "pldID=" + pldID + ", date=" + date + ", pID=" + pID + ", oID=" + oID + ", facId=" + facId + ", planerID=" + planerID + ", quantity=" + quantity + ", note=" + note + ", done=" + done + '}';
    }
    
    
}
