/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author Admin
 */
@WebServlet(name = "SearchPriceControl", urlPatterns = {"/search-price"})
public class SearchPriceControl extends HttpServlet {

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
        double min = Double.parseDouble(request.getParameter("min")); 
        double max = Double.parseDouble(request.getParameter("max")); 
        ProductDAO d = new ProductDAO();
        List<Product> listP = d.searchByPrice(min, max);
        final int size = 6;
        String page = request.getParameter("page");
        
        int count = d.countByPrice(min, max);
        int endPage = count / size;
        if (count % size != 0) {
            endPage++;
        }
        if (page == null) {
            page = "1";
        }
        int pTid = Integer.parseInt(page);
        List<Product> list2 = d.pagingProductByPrice(pTid, min, max);
        
        //b2 set data to jsp
        request.setAttribute("listP", list2);
        request.setAttribute("endPage", endPage);
        request.setAttribute("page", page);
        request.setAttribute("min", min);
        request.setAttribute("max", max);
          
         
        request.getRequestDispatcher("HomeSearchPrice.jsp").forward(request, response);
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
