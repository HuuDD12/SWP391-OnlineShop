/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BannerDAO;
import DAO.BlogDAO;
import DAO.CBannerDAO;
import DAO.CategoryDAO;
import DAO.OrderDetailDAO;
import Model.Account;
import Model.Category;
import Model.CategoryOrder;
import Model.OrderDetail;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ADM
 */
@WebServlet(name = "MKDashboardControl", urlPatterns = {"/mktdashboard"})
public class MKDashboardControl extends HttpServlet {

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
        Account acc = (Account) session.getAttribute("acc");
        BannerDAO dao = new BannerDAO();
        CBannerDAO cdao = new CBannerDAO();
        BlogDAO bdao = new BlogDAO();
        int countB = dao.getCountBanner();
        int countCB = cdao.getCountCBanner();
        int countBL = bdao.getCountBlog();
        OrderDetailDAO orderDetailDAO = new OrderDetailDAO();

        CategoryDAO cadao = new CategoryDAO();
        OrderDetailDAO o = new OrderDetailDAO();
        List<Category> listC = cadao.getAllCategory();
        List<OrderDetail> listSell = o.get3MostOderSell();

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
        request.setAttribute("listSell", listSell);
        request.setAttribute("listC", listC);
        request.setAttribute("countB", countB);
        request.setAttribute("countCB", countCB);
        request.setAttribute("countBL", countBL);
        request.getRequestDispatcher("MktDashboard.jsp").forward(request, response);
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
