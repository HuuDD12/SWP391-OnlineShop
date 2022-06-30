/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BrandDAO;
import DAO.ProductDAO;
import DAO.SubCategoryDAO;
import Model.Brand;
import Model.Product;
import Model.Subcategory;
import Model.UserInfo;
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
import javax.servlet.http.Part;

/**
 *
 * @author VAN ANH
 */
@WebServlet(name = "EditProductControl", urlPatterns = {"/editproduct"})
@MultipartConfig
public class EditProductControl extends HttpServlet {

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
            int pid = Integer.valueOf(request.getParameter("pid"));
            ProductDAO p = new ProductDAO();
            Product pro = p.getProductById(pid);
            BrandDAO b = new BrandDAO();
            SubCategoryDAO s = new SubCategoryDAO();
            List<Brand> listB = b.getAllBrand();
            List<Subcategory> listS = s.getAllSubCategory();
            request.setAttribute("pro", pro);
            request.setAttribute("listB", listB);
            request.setAttribute("listS", listS);
            request.getRequestDispatcher("EditProduct.jsp").forward(request, response);
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
        String uid = request.getParameter("uid");
        Part file = request.getPart("image");
        String image = file.getSubmittedFileName();
        String imageu = request.getParameter("imageu");
        String Product_name = request.getParameter("Product_name");
        String Description = request.getParameter("Description");
        Double Original_Price = Double.valueOf(request.getParameter("Original_Price"));
        Double Sale_Price = Double.valueOf(request.getParameter("Sale_Price"));
        int amount = Integer.valueOf(request.getParameter("amount"));
        String Subcategory = request.getParameter("Subcategory");
        String Brand = request.getParameter("Brand");
        int userid = Integer.parseInt(uid);
        int subCate = Integer.parseInt(Subcategory);
        int brand = Integer.parseInt(Brand);
        ProductDAO pdao = new ProductDAO();
        String link = "";

        if ("".equals(image)) {
            Product pro = new Product(userid, Product_name, Description, Original_Price, Sale_Price, subCate, amount, brand);
            Product product = new Product(userid, imageu);
            pdao.UpdateProductInfo(pro);
        } else {
            link = "resources\\img\\\\products\\" + image;
            Product pro = new Product(userid, Product_name, Description, Original_Price, Sale_Price, subCate, amount, brand);
            Product product = new Product(userid, link);
            String uploadPath = getServletContext().getRealPath("") + File.separator + link;
            //  String UploadPart = "C:/Users/ADM/OneDrive/Documents/NetBeansProjects/Online-Shop/web/resources/img/ImgUser/" + image ;
            try {
                try (FileOutputStream fos = new FileOutputStream(uploadPath)) {
                    InputStream is = file.getInputStream();
                    byte[] data = new byte[is.available()];
                    is.read(data);
                    fos.write(data);
                }

            } catch (IOException e) {
            }
            pdao.UpdateProductInfo(pro);
            pdao.UpdateProductImgInfo(product);
        }
        Product pro = pdao.getProductById(userid);
        request.setAttribute("pro", pro);
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
