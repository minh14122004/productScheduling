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
            //read parameters
            String raw_id = request.getParameter("id");
            String raw_name = request.getParameter("name");
            String raw_gender = request.getParameter("gender");
            String raw_address = request.getParameter("address");
            String raw_from = request.getParameter("from");
            String raw_to = request.getParameter("to");
            String raw_did = request.getParameter("did");

            //validate paramters
            // SQL Injection, XSS, OS Command Injection , business Rules
            //object binding
            Integer id = (raw_id != null && !raw_id.isBlank()) ? Integer.parseInt(raw_id) : null;
            String name = raw_name;
            Boolean gender = (raw_gender != null) && !raw_gender.equals("both") ? raw_gender.equals("male") : null;
            String address = raw_address;
            Date from = (raw_from != null && !raw_from.isBlank()) ? Date.valueOf(raw_from) : null;
            Date to = (raw_to != null && !raw_to.isBlank()) ? Date.valueOf(raw_to) : null;
            Integer did = (raw_did != null && !raw_did.equals("-1")) ? Integer.parseInt(raw_did) : null;

            EmployeeDAO dbEmp = new EmployeeDAO();
            DepartmentDAO dbDept = new DepartmentDAO();
            ArrayList<Employee> emps = dbEmp.search(id, name, gender, address, from, to, did);
            request.setAttribute("emps", emps);

            ArrayList<Department> depts = dbDept.list();
            request.setAttribute("depts", depts);

            request.getRequestDispatcher("../view/employee/search.jsp").forward(request, response);
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
