/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Feature;
import entity.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class UserDAO extends DBContext<User> {

    /**
     * This method for get infor of user who login in the system to manage and
     * control
     *
     * @param username
     * @param password
     * @return infor uID, RoleID, EmployeeID of user
     */
    public User getLogin(String username, String password) {
        String sql = "SELECT uID, RoleID, EmployeeID from [User]\n"
                + "WHERE username = ? AND password = ?;";
        PreparedStatement stm = null;
        User user = null;

        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setuID(rs.getInt("uID"));
                user.setrID(rs.getInt("RoleID"));
                user.setEmployeeID(rs.getInt("EmployeeID"));
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

        return user;
    }

    public ArrayList<Feature> getFeaturesByRole(int rID) {
        ArrayList<Feature> features = new ArrayList<>();
        String sql = "SELECT f.FeatureID, f.FeatureName, f.URL "
                + "FROM Feature f "
                + "JOIN RoleFeature rf ON f.FeatureID = rf.FeatureID "
                + "WHERE rf.RoleID = ?";
        PreparedStatement stm = null;

        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, rID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()){
                Feature feature = new Feature();
                feature.setfID(rs.getInt("FeatureID"));
                feature.setfName(rs.getString("FeatureName"));
                feature.setUrl(rs.getString("URL"));
                
                features.add(feature);
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

        return  features;
    }

    @Override
    public void insert(User entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(User entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(User entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<User> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public User get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

//    public static void main(String[] args) {
//        User u = new UserDAO().getLogin("HR1", "123");
//        System.out.println(u.toString());
//    }
}
