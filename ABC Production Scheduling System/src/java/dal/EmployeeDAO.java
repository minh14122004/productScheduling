/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Employee;
import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class EmployeeDAO extends DBContext<Employee> {
    
    public ArrayList<Employee> getWorkerByDid(int DepartmenID){
        String sql = "SELECT * FROM Employee WHERE RoleID = 3 AND DepartmentID = ?;";
        PreparedStatement stm = null;
        ArrayList<Employee> ems = new ArrayList<>();

        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, DepartmenID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setrID(rs.getInt("EmployeeID"));
                employee.seteName(rs.getString("EmployeeName"));
                employee.setGender(rs.getBoolean("gender"));
                employee.setAddress(rs.getString("address"));
                employee.setDob(rs.getDate("dob"));
                employee.setrID(rs.getInt("RoleID"));
                employee.setdID(rs.getInt("DepartmentID"));
                employee.setSalary(rs.getLong("salary"));

                ems.add(employee);

            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return ems;
    }

    public ArrayList<Employee> getEmployeeByRole(int role) {
        String sql = "SELECT * FROM Employee WHERE RoleID = ?;";
        PreparedStatement stm = null;
        ArrayList<Employee> ems = new ArrayList<>();

        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, role);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setrID(rs.getInt("EmployeeID"));
                employee.seteName(rs.getString("EmployeeName"));
                employee.setGender(rs.getBoolean("gender"));
                employee.setAddress(rs.getString("address"));
                employee.setDob(rs.getDate("dob"));
                employee.setrID(rs.getInt("RoleID"));
                employee.setdID(rs.getInt("DepartmentID"));
                employee.setSalary(rs.getLong("salary"));

                ems.add(employee);

            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return ems;
    }

    @Override
    public void insert(Employee entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Employee entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Employee entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Employee> list() {
        String sql = "SELECT * FROM Employee;";
        PreparedStatement stm = null;
        ArrayList<Employee> ems = new ArrayList<>();

        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Employee employee = new Employee();
                employee.setrID(rs.getInt("EmployeeID"));
                employee.seteName(rs.getString("EmployeeName"));
                employee.setGender(rs.getBoolean("gender"));
                employee.setAddress(rs.getString("address"));
                employee.setDob(rs.getDate("dob"));
                employee.setrID(rs.getInt("RoleID"));
                employee.setdID(rs.getInt("DepartmentID"));
                employee.setSalary(rs.getLong("salary"));

                ems.add(employee);

            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return ems;
    }

    @Override
    public Employee get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
