/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Total;
import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class TotalDAO extends DBContext<Total> {

    public ArrayList<Total> list(int departmentID) {
        ArrayList<Total> total = new ArrayList<>();
        String sql = "SELECT \n"
                + "    tp.TotalID, \n"
                + "    tp.ProductID, \n"
                + "    p.ProductName,\n"
                + "    tp.DepartmentID, \n"
                + "    tp.Total,\n"
                + "    ISNULL(SUM(do.Output), 0) AS Producted\n"
                + "FROM \n"
                + "    TotalProduct tp\n"
                + "JOIN \n"
                + "    Product p ON tp.ProductID = p.ProductID\n"
                + "LEFT JOIN \n"
                + "    DailyOutput do ON tp.TotalID = do.TotalID\n"
                + "WHERE \n"
                + "    tp.DepartmentID = ?\n"
                + "GROUP BY \n"
                + "    tp.TotalID, tp.ProductID, p.ProductName, tp.DepartmentID, tp.Total;";
        PreparedStatement stm = null;

        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, departmentID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Total totalProduct = new Total();

                totalProduct.setTotalID(rs.getInt("TotalID"));
                totalProduct.setDeapartmentID(rs.getInt("Department"));
                totalProduct.setTotal(rs.getInt("Total"));
                totalProduct.setProducted(rs.getInt("Producted"));
                totalProduct.setProductName(rs.getString("ProductName"));

                total.add(totalProduct);
            }

        } catch (SQLException ex) {
            Logger.getLogger(TotalDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(TotalDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return total;
    }

    @Override
    public void insert(Total entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Total entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Total entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Total> list() {
//        ArrayList<Total> total = new ArrayList<>();
//        String sql = "Select * From TotalProduct";
//        PreparedStatement stm = null;
//
//        try {
//            stm = connection.prepareStatement(sql);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                Total t = new Total();
//                t.setTotalID(rs.getInt("TotalID"));
//                t.setProductID(rs.getInt("ProductID"));
//                t.setDeapartmentID(rs.getInt("DeapartmentID"));
//                t.setTotal(rs.getInt("Total"));
//
//                total.add(t);
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            try {
//                stm.close();
//                connection.close();
//            } catch (SQLException ex) {
//                Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//
//        return total;
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody

    }

    @Override
    public Total get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
