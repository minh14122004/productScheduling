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

public class DailyOutput {
    private int DailyOutput;
    private int ProductID;
    private Date day;
    private int output;
    private int totalID;

    public DailyOutput() {
    }

    public DailyOutput(int DailyOutput, int ProductID, Date day, int output, int totalID) {
        this.DailyOutput = DailyOutput;
        this.ProductID = ProductID;
        this.day = day;
        this.output = output;
        this.totalID = totalID;
    }

    public int getDailyOutput() {
        return DailyOutput;
    }

    public void setDailyOutput(int DailyOutput) {
        this.DailyOutput = DailyOutput;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }

    public int getOutput() {
        return output;
    }

    public void setOutput(int output) {
        this.output = output;
    }

    public int getTotalID() {
        return totalID;
    }

    public void setTotalID(int totalID) {
        this.totalID = totalID;
    }
    
    
}
