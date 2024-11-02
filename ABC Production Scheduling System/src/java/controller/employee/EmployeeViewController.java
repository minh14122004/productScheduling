/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.employee;

import controller.accesscontrol.BaseRBACController;
import dal.EmployeeDAO;
import entity.Employee;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class EmployeeViewController extends BaseRBACController {

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
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String role = request.getParameter("role");
        String department = request.getParameter("department");
        String salaryMinStr = request.getParameter("salaryMin");
        String salaryMaxStr = request.getParameter("salaryMax");

        Long salaryMin = null;
        Long salaryMax = null;

        // Kiểm tra và chuyển đổi salaryMin
        if (salaryMinStr != null && !salaryMinStr.isEmpty()) {
            try {
                salaryMin = Long.parseLong(salaryMinStr);
            } catch (NumberFormatException e) {
                salaryMin = null; // Hoặc log lỗi nếu cần thiết
            }
        }

        // Kiểm tra và chuyển đổi salaryMax
        if (salaryMaxStr != null && !salaryMaxStr.isEmpty()) {
            try {
                salaryMax = Long.parseLong(salaryMaxStr);
            } catch (NumberFormatException e) {
                salaryMax = null; // Hoặc log lỗi nếu cần thiết
            }
        }
        EmployeeDAO db = new EmployeeDAO();
        ArrayList<Employee> emps;

        if ((name == null || name.isEmpty())
                && (gender == null || gender.isEmpty())
                && (address == null || address.isEmpty())
                && (role == null || role.isEmpty())
                && (department == null || department.isEmpty())
                && (salaryMin == null || salaryMin != 0)
                && (salaryMax == null || salaryMax != 0)) {
            // Hiển thị toàn bộ danh sách nhân viên
            emps = db.list();
        } else {
            // Hiển thị kết quả sau khi lọc
            emps = db.filterEmployees(name, gender, address, role, department, salaryMin, salaryMax);
        }
        request.setAttribute("emps", emps);
        request.getRequestDispatcher("../view/employee/list.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    @Override
    protected void doAuthorizedGet(HttpServletRequest req, HttpServletResponse resp, User account) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doAuthorizedPost(HttpServletRequest req, HttpServletResponse resp, User account) throws ServletException, IOException {
        processRequest(req, resp);
    }

}
