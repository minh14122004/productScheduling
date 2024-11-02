/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Department;
import entity.Employee;
import entity.Role;
import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class EmployeeDAO extends DBContext<Employee> {

    public ArrayList<Employee> getWorkerByDid(int DepartmenID) {
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
                employee.seteID(rs.getInt("EmployeeID"));
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
        String sql = "SELECT Employee.*, Role.RoleName AS RoleName, Department.DepartmentName AS DepartmentName\n"
                + "FROM Employee\n"
                + "JOIN Role ON Employee.RoleID = Role.RoleID\n"
                + "JOIN Department ON Employee.DepartmentID = Department.DepartmentID;";
        PreparedStatement stm = null;
        ArrayList<Employee> ems = new ArrayList<>();

        try {
            stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Employee employee = new Employee();
                employee.seteID(rs.getInt("EmployeeID"));
                employee.seteName(rs.getString("EmployeeName"));
                employee.setGender(rs.getBoolean("gender"));
                employee.setAddress(rs.getString("address"));
                employee.setDob(rs.getDate("dob"));
                employee.setdID(rs.getInt("DepartmentID"));
                employee.setSalary(rs.getLong("salary"));

                Role r = new Role();
                r.setrID(rs.getInt("RoleID"));
                r.setRoleName(rs.getString("RoleName"));
                employee.setRole(r);

                Department d = new Department();
                d.setdID(rs.getInt("DepartmentID"));
                d.setdName(rs.getString("DepartmentName"));
                employee.setDept(d);

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
    
    public ArrayList<Employee> search(Integer id, String name, Boolean gender, String address, Date from, Date to, Integer did) {
        String sql = "SELECT e.eid,e.ename,e.gender,e.address,e.dob,d.did,dname FROM Employee e \n"
                + "	INNER JOIN Department d ON e.did = d.did\n"
                + "WHERE (1=1)";

        ArrayList<Employee> emps = new ArrayList<>();
        ArrayList<Object> paramValues = new ArrayList<>();
        if (id != null) {
            sql += " AND e.eid = ?";
            paramValues.add(id);
        }

        if (name != null) {
            sql += " AND e.ename LIKE '%'+?+'%'";
            paramValues.add(name);
        }

        if (gender != null) {
            sql += " AND e.gender = ?";
            paramValues.add(gender);
        }

        if (address != null) {
            sql += " AND e.[address] LIKE '%'+?+'%'";
            paramValues.add(address);
        }
        if (from != null) {
            sql += " AND e.dob >= ?";
            paramValues.add(from);
        }

        if (to != null) {
            sql += " AND e.dob <= ?";
            paramValues.add(to);
        }

        if (did != null) {
            sql += " AND d.did = ?";
            paramValues.add(did);
        }

        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            for (int i = 0; i < paramValues.size(); i++) {
                stm.setObject((i + 1), paramValues.get(i));
            }
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Employee e = new Employee();
                e.seteID(rs.getInt("eid"));
                e.seteName(rs.getNString("ename"));
                e.setGender(rs.getBoolean("gender"));
                e.setDob(rs.getDate("dob"));
                e.setAddress(rs.getString("address"));

                Department d = new Department();
                d.setdID(rs.getInt("did"));
                d.setdName(rs.getString("dname"));
                e.setDept(d);

                emps.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return emps;
    }


    public ArrayList<Employee> filterEmployees(String name, String gender, String address, String role,
            String department, Long salaryMin, Long salaryMax) {
        ArrayList<Employee> ems = new ArrayList<>();
        StringBuilder sql = new StringBuilder("SELECT * FROM Employee JOIN Role ON Employee.RoleID = Role.RoleID "
                + "JOIN Department ON Employee.DepartmentID = Department.DepartmentID WHERE 1=1");

        // Tạo điều kiện lọc động dựa trên các tham số không null
        if (name != null && !name.isEmpty()) {
            sql.append(" AND EmployeeName LIKE ?");
        }
        if (gender != null && !gender.isEmpty()) {
            sql.append(" AND gender = ?");
        }
        if (address != null && !address.isEmpty()) {
            sql.append(" AND address LIKE ?");
        }
        if (role != null && !role.isEmpty()) {
            sql.append(" AND RoleName LIKE ?");
        }
        if (department != null && !department.isEmpty()) {
            sql.append(" AND DepartmentName LIKE ?");
        }
        if (salaryMin != null) {
            sql.append(" AND salary >= ?");
        }
        if (salaryMax != null) {
            sql.append(" AND salary <= ?");
        }

        try (PreparedStatement stm = connection.prepareStatement(sql.toString())) {
            int index = 1;
            if (name != null && !name.isEmpty()) {
                stm.setString(index++, "%" + name + "%");
            }
            if (gender != null && !gender.isEmpty()) {
                stm.setBoolean(index++, Boolean.parseBoolean(gender));
            }
            if (address != null && !address.isEmpty()) {
                stm.setString(index++, "%" + address + "%");
            }
            if (role != null && !role.isEmpty()) {
                stm.setString(index++, "%" + role + "%");
            }
            if (department != null && !department.isEmpty()) {
                stm.setString(index++, "%" + department + "%");
            }
            if (salaryMin != null) {
                stm.setLong(index++, salaryMin);
            }
            if (salaryMax != null) {
                stm.setLong(index++, salaryMax);
            }

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Employee employee = new Employee();
                // Set các thuộc tính của employee từ rs
                ems.add(employee);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return ems;
    }

    @Override
    public Employee get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
