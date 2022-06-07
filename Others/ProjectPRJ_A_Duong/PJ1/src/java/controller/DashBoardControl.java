/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.OrderDAO;
import dal.OrderDetailDAO;
import dal.ProductDAO;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Order;
import model.OrderDetail;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "DashBoardControl", urlPatterns = {"/dashboard"})
public class DashBoardControl extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

        try {
            HttpSession session = request.getSession();
            User acc = (User) session.getAttribute("acc");
            if (acc.getRole().equals("1")) {
                ProductDAO dao = new ProductDAO();
                OrderDAO odao = new OrderDAO();
                UserDAO udao = new UserDAO();
                OrderDetailDAO oddao = new OrderDetailDAO();
                int count = dao.count();
                int countuser = udao.countUser();
                int countorder = odao.countOrder();
                int countproductlow = dao.CountProductLow();
                List<Order> billbyday = odao.getBillByDay();
                OrderDetail mostsell = oddao.getMostProductSell();
                request.setAttribute("most", mostsell);
                request.setAttribute("product", count);
                request.setAttribute("user", countuser);
                request.setAttribute("bill", countorder);
                request.setAttribute("low", countproductlow);
                request.setAttribute("billbyday", billbyday);
                request.getRequestDispatcher("DashBoard.jsp").forward(request, response);
            } else {
                response.sendRedirect("login");
            }
        } catch (Exception e) {

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
