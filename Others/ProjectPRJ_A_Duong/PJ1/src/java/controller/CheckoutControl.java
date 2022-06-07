/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.OrderDAO;
import dal.OrderDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.CartItem;
import model.Order;
import model.OrderDetail;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CheckoutControl", urlPatterns = {"/checkout"})
public class CheckoutControl extends HttpServlet {

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
        HttpSession session = request.getSession();
        Map<Integer, Cart> carts = (Map<Integer, Cart>) session.getAttribute("carts");
        User u = (User) request.getSession().getAttribute("acc");
        if (u == null) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        } else {
            if (carts == null) {
                carts = new LinkedHashMap<>();
            }
            double totalMoney = 0;
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                totalMoney += cart.getQuantity() * cart.getProduct().getPrice();

            }
            request.setAttribute("totalMoney", totalMoney);
            request.getRequestDispatcher("Checkout.jsp").forward(request, response);
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
        //co roi
        HttpSession session = request.getSession();
        User u = (User) request.getSession().getAttribute("acc");
        int productID = Integer.parseInt(request.getParameter("productId"));
        String Fname = request.getParameter("Fname");
        String Lname = request.getParameter("Lname");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        Map<Integer, Cart> carts = (Map<Integer, Cart>) session.getAttribute("carts");
        if (u == null) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        } else {
            if (carts == null) {
                carts = new LinkedHashMap<>();
            }
            double totalMoney = 0;
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                totalMoney += cart.getQuantity() * cart.getProduct().getPrice();

            }
            //lưu vào database

            //lưu Order
            Order order = new Order(u.getId_user(), totalMoney);
            int orderId = new OrderDAO().createReturnId(order);

            //lưu OrderDetail
            OrderDetail orderdetail = new OrderDetail(Fname, Lname, phone, address);
            new OrderDetailDAO().saveCart(orderId, carts, orderdetail);
            new OrderDetailDAO().updateQuantity(carts, productID);
            session.removeAttribute("carts");
            response.sendRedirect("Finish.jsp");
        }
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
