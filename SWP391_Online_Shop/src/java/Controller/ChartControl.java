/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.CategoryDAO;
import DAO.OrderDetailDAO;
import Model.Category;
import Model.CategoryOrder;
import Model.Subcategory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADM
 */
@WebServlet(name = "ChartControl", urlPatterns = {"/ChartControl"})
public class ChartControl extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
            int month = orderDetailDAO.getMonth();
            CategoryDAO cdao = new CategoryDAO();
            List<Category> listC = cdao.getAllCategory();
            String totalPriceMonth1 = orderDetailDAO.totalPricePerMonth(1);
            String totalPriceMonth2 = orderDetailDAO.totalPricePerMonth(2);
            String totalPriceMonth3 = orderDetailDAO.totalPricePerMonth(3);
            String totalPriceMonth4 = orderDetailDAO.totalPricePerMonth(4);
            String totalPriceMonth5 = orderDetailDAO.totalPricePerMonth(5);
            String totalPriceMonth6 = orderDetailDAO.totalPricePerMonth(6);
            String totalPriceMonth7 = orderDetailDAO.totalPricePerMonth(7);
            String totalPriceMonth8 = orderDetailDAO.totalPricePerMonth(8);
            String totalPriceMonth9 = orderDetailDAO.totalPricePerMonth(9);
            String totalPriceMonth10 = orderDetailDAO.totalPricePerMonth(10);
            String totalPriceMonth11 = orderDetailDAO.totalPricePerMonth(11);
            String totalPriceMonth12 = orderDetailDAO.totalPricePerMonth(12);
            CategoryOrder categoryOrder1 = orderDetailDAO.getTotalCategoryOrderByID(1);
            CategoryOrder categoryOrder2 = orderDetailDAO.getTotalCategoryOrderByID(2);
            CategoryOrder categoryOrder3 = orderDetailDAO.getTotalCategoryOrderByID(3);
            CategoryOrder categoryOrder4 = orderDetailDAO.getTotalCategoryOrderByID(4);
            CategoryOrder categoryOrder5 = orderDetailDAO.getTotalCategoryOrderByID(5);
            request.setAttribute("categoryOrder1", categoryOrder1);
            request.setAttribute("categoryOrder2", categoryOrder2);
            request.setAttribute("categoryOrder3", categoryOrder3);
            request.setAttribute("categoryOrder4", categoryOrder4);
            request.setAttribute("categoryOrder5", categoryOrder5);
            request.setAttribute("totalPriceMonth1", totalPriceMonth1);
            request.setAttribute("totalPriceMonth2", totalPriceMonth2);
            request.setAttribute("totalPriceMonth3", totalPriceMonth3);
            request.setAttribute("totalPriceMonth4", totalPriceMonth4);
            request.setAttribute("totalPriceMonth5", totalPriceMonth5);
            request.setAttribute("totalPriceMonth6", totalPriceMonth6);
            request.setAttribute("totalPriceMonth7", totalPriceMonth7);
            request.setAttribute("totalPriceMonth8", totalPriceMonth8);
            request.setAttribute("totalPriceMonth9", totalPriceMonth9);
            request.setAttribute("totalPriceMonth10", totalPriceMonth10);
            request.setAttribute("totalPriceMonth11", totalPriceMonth11);
            request.setAttribute("totalPriceMonth12", totalPriceMonth12);
            request.setAttribute("listC", listC);
            request.getRequestDispatcher("ChartManager.jsp").forward(request, response);
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
