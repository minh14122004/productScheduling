/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.plan;

import controller.accesscontrol.BaseRBACController;
import dal.DepartmentDAO;
import dal.PlanDAO;
import dal.ProductDAO;
import dal.TotalDAO;
import entity.Department;
import entity.Plan;
import entity.PlanCampain;
import entity.Product;
import entity.Total;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Nguyễn Quang Minh
 */
public class ProductPlanController extends BaseRBACController {

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
        TotalDAO totalDB = new TotalDAO();
        ArrayList<Total> manu = totalDB.list();
        request.setAttribute("manufacture", manu);
        request.getRequestDispatcher("../view/manufacture/ProductionTotal.jsp").forward(request, response);

    }

    @Override
    protected void doAuthorizedGet(HttpServletRequest req, HttpServletResponse resp, User account) throws ServletException, IOException {
        ProductDAO daoProduct = new ProductDAO();
        DepartmentDAO daoDept = new DepartmentDAO();

        req.setAttribute("products", daoProduct.list());
        req.setAttribute("depts", daoDept.get("WS"));

        req.getRequestDispatcher("../view/plan/productionPlan.jsp").forward(req, resp);
    }

    @Override
    protected void doAuthorizedPost(HttpServletRequest req, HttpServletResponse resp, User account) throws ServletException, IOException {

        Plan plan = new Plan();
        Department dept = new Department();

        plan.setPlanName(req.getParameter("name"));
        plan.setStartDate(Date.valueOf(req.getParameter("start")));
        plan.setEndDate(Date.valueOf(req.getParameter("to")));
        dept.setdID(Integer.parseInt(req.getParameter("did")));
        plan.setDept(dept);

        String[] pids = req.getParameterValues("pid");
        for (String pid : pids) {
            PlanCampain planC = new PlanCampain();
            Product product = new Product();

            product.setpID(Integer.parseInt(pid));
            planC.setProduct(product);
            planC.setPlan(plan);

            String raw_quantity = req.getParameter("quantity" + pid);
            String raw_cost = req.getParameter("cost" + pid);

            planC.setQuantity(raw_quantity != null && raw_quantity.length() > 0 ? Integer.parseInt(raw_quantity) : 0);
            planC.setCost(raw_cost != null && raw_cost.length() > 0 ? Float.parseFloat(raw_cost) : 0);

            if (planC.getQuantity() > 0 && planC.getCost() > 0) {
                plan.getCampains().add(planC);
            }

        }

        if (plan.getCampains().size() > 0) {
            //insert
            PlanDAO db = new PlanDAO();
            db.insert(plan);
            resp.getWriter().println("your plan has been added!");
        } else {
            resp.getWriter().println("your plan does not have any products / campains");
        }

    }
}
