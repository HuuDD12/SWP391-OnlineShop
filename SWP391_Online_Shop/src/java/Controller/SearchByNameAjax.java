/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ProductDAO;
import Model.Product;
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
 * @author Admin
 */
@WebServlet(name = "SearchByNameAjax", urlPatterns = {"/searchAjax"})
public class SearchByNameAjax extends HttpServlet {

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
        String txtSearch = request.getParameter("txt");
        ProductDAO pdao = new ProductDAO();
        List<Product> list = pdao.searchByName(txtSearch);
        PrintWriter out = response.getWriter();
        for (Product o : list) {
            out.println("<div class=\"product col-md-4 col-sm-6 col-xs-12\">\n"
                    + "                                    <div class=\"product-item\">\n"
                    + "                                        <div class=\"pi-img-wrapper\">\n"
                    + "                                            <img src=\"" + o.getUrl()+ "\" class=\"img-responsive\" alt=\"Berry Lace Dress\">\n"
                    + "                                            <div>\n"
                    + "\n"
                    + "                                                <a href=\"#product-pop-up\" class=\"btn btn-default fancybox-fast-view\">View</a>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                        <h3><a href=\"shop-item.html\">" + o.getProductName() + "</a></h3>\n"
                    + "                                        <div class=\"pi-price\">" + o.getOriginalPrice() + "</div>\n"
                    + "                                        <a href=\"add-to-cart?pid=" + o.getProductID() + "\" class=\"btn btn-default add2cart\">Add to cart</a>\n"
                    + "                                    </div>\n"
                    + "                                </div>");
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
