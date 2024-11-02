/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.employee;

import controller.accesscontrol.BaseRBACController;
import dal.DepartmentDAO;
import dal.EmployeeDAO;
import entity.Department;
import entity.Employee;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class EmployeeSearchController extends BaseRBACController {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //read parameters 
            String raw_id = request.getParameter("id");
            String raw_name = request.getParameter("name");
            String raw_gender = request.getParameter("gender");
            String raw_address = request.getParameter("address");
            String raw_from = request.getParameter("from");
            String raw_to = request.getParameter("to");
            String raw_did = request.getParameter("did");

            //validate and convert parameters
            Integer id = null;
            if (raw_id != null && !raw_id.trim().isEmpty()) {
                try {
                    id = Integer.parseInt(raw_id);
                } catch (NumberFormatException e) {
                    // Handle invalid number format
                }
            }
            String name = raw_name != null && !raw_name.trim().isEmpty() ? raw_name : null;
            Boolean gender = raw_gender != null && !raw_gender.equals("both") ? raw_gender.equals("male") : null;
            String address = raw_address != null && !raw_address.trim().isEmpty() ? raw_address : null;

            Date from = null;
            if (raw_from != null && !raw_from.trim().isEmpty()) {
                try {
                    from = Date.valueOf(raw_from);
                } catch (IllegalArgumentException e) {
                    // Handle invalid date format
                }
            }

            Date to = null;
            if (raw_to != null && !raw_to.trim().isEmpty()) {
                try {
                    to = Date.valueOf(raw_to);
                } catch (IllegalArgumentException e) {
                    // Handle invalid date format  
                }
            }

            Integer did = null;
            if (raw_did != null && !raw_did.equals("-1")) {
                try {
                    did = Integer.parseInt(raw_did);
                } catch (NumberFormatException e) {
                    // Handle invalid number format
                }
            }

            //Get data from database
            EmployeeDAO dbEmp = new EmployeeDAO();
            DepartmentDAO dbDept = new DepartmentDAO();
            ArrayList<Employee> emps = dbEmp.search(id, name, gender, address, from, to, did);
            ArrayList<Department> depts = dbDept.list();

            //Set attributes for JSP
            request.setAttribute("emps", emps);
            request.setAttribute("depts", depts);

            //Keep search parameters for form
            request.setAttribute("id", raw_id);
            request.setAttribute("name", raw_name);
            request.setAttribute("gender", raw_gender);
            request.setAttribute("address", raw_address);
            request.setAttribute("from", raw_from);
            request.setAttribute("to", raw_to);
            request.setAttribute("did", raw_did);

            //Forward to JSP
            request.getRequestDispatcher("../view/employee/search.jsp").forward(request, response);

        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

    @Override
    protected void doAuthorizedGet(HttpServletRequest req, HttpServletResponse resp, User account) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doAuthorizedPost(HttpServletRequest req, HttpServletResponse resp, User account) throws ServletException, IOException {
        processRequest(req, resp);
    }

}
