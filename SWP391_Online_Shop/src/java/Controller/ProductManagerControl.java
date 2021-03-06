/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BrandDAO;
import DAO.CategoryDAO;
import DAO.OrderDetailDAO;
import DAO.ProductDAO;
import DAO.SubCategoryDAO;
import Model.Brand;
import Model.Category;
import Model.OrderDetail;
import Model.Product;
import Model.Subcategory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VAN ANH
 */
@WebServlet(name = "ProductManagerControl", urlPatterns = {"/productmanager"})
public class ProductManagerControl extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            response.setContentType("text/html;charset=UTF-8");
            HttpSession session = request.getSession();
            
            ProductDAO pdao = new ProductDAO();
            CategoryDAO cdao = new CategoryDAO();
            List<Category> listC = cdao.getAllCategory();
            SubCategoryDAO sdao = new SubCategoryDAO();
            List<Subcategory> listS = sdao.getAllSubCategory();
            List<Product> list = pdao.getAll();
            String page = request.getParameter("page");
            BrandDAO bdao = new BrandDAO();
            List<Brand> listB = bdao.getAllBrand();
            
            
            session.setAttribute("listB", listB);
            
            
            session.setAttribute("list", list);
            session.setAttribute("listC", listC);
            session.setAttribute("listS", listS);
            
            request.getRequestDispatcher("ProductManager.jsp").forward(request, response);
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
