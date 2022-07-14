/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BrandDAO;
import DAO.ProductDAO;
import DAO.SubCategoryDAO;
import Model.Account;
import Model.Brand;
import Model.Product;
import Model.Subcategory;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author VAN ANH
 */
@WebServlet(name = "Addproduct", urlPatterns = {"/addproduct"})
@MultipartConfig
public class Addproduct extends HttpServlet {

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
            BrandDAO bdao = new BrandDAO();
            SubCategoryDAO sdao = new SubCategoryDAO();
            List<Brand> listB = bdao.getAllBrand();
            List<Subcategory> listS = sdao.getAllSubCategory();

            request.setAttribute("listB", listB);
            request.setAttribute("listS", listS);
            request.getRequestDispatcher("Addproduct.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("acc");
        String img = request.getParameter("img");
        String Product_name = request.getParameter("Product_name");
        String Description = request.getParameter("Description");
        Double Original_Price = Double.parseDouble(request.getParameter("Original_Price"));
        Double salePercent = Double.parseDouble((request.getParameter("salePercent")));
        int amount = Integer.parseInt((request.getParameter("amount")));
        String Subcategory = request.getParameter("Subcategory");
        String Brand = request.getParameter("Brand");       
        int subCate = Integer.parseInt(Subcategory);
        int brand = Integer.parseInt(Brand);
        ProductDAO pdao = new ProductDAO();
        Product p = new Product(Product_name, Description, Original_Price, (Original_Price * (100 - salePercent)) / 100, salePercent, subCate, amount, brand, Integer.parseInt(acc.getUserId()));
        pdao.AddProduct(p);
        pdao.AddProductImg(Product_name, img);
        
        
        //request.getRequestDispatcher(".jsp").forward(request, response);
        response.sendRedirect("productmanager");
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
