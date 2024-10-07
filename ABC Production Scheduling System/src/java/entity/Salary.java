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
public class Salary {
    public int salID;
    public int wID;
    public Date Month;
    public float salary;
    public float totalKpi;

    public Salary() {
    }

    public Salary(int salID, int wID, Date Month, float salary, float totalKpi) {
        this.salID = salID;
        this.wID = wID;
        this.Month = Month;
        this.salary = salary;
        this.totalKpi = totalKpi;
    }

    public int getSalID() {
        return salID;
    }

    public void setSalID(int salID) {
        this.salID = salID;
    }

    public int getwID() {
        return wID;
    }

    public void setwID(int wID) {
        this.wID = wID;
    }

    public Date getMonth() {
        return Month;
    }

    public void setMonth(Date Month) {
        this.Month = Month;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    public float getTotalKpi() {
        return totalKpi;
    }

    public void setTotalKpi(float totalKpi) {
        this.totalKpi = totalKpi;
    }

    @Override
    public String toString() {
        return "Salary{" + "salID=" + salID + ", wID=" + wID + ", Month=" + Month + ", salary=" + salary + ", totalKpi=" + totalKpi + '}';
    }
    
    
}
