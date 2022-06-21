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

/**
 *
 * @author VAN ANH
 */
@WebServlet(name = "HomeControl", urlPatterns = {"/HomeControl"})
public class HomeControl extends HttpServlet {

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

//            String id = request.getParameter("cid");
            String indexPage = request.getParameter("index");
            ProductDAO pr = new ProductDAO();
            SubCategoryDAO s = new SubCategoryDAO();
            CategoryDAO c = new CategoryDAO();
            BrandDAO b = new BrandDAO();
            OrderDetailDAO o = new OrderDetailDAO();
            
            List<Product> listTop5 = pr.getTop5Product();
            List<Category> listC = c.getAllCategory();
            List<Subcategory> listS = s.getAllSubCategory();
            //Subcategory a = s.getSubCategoryByID(id);
            List<Brand> listB = b.getAllBrand();
            List<OrderDetail> listSell = o.get3MostProductSell();

            

            if (indexPage == null) {
                indexPage = "1";
            }
            int index = Integer.parseInt(indexPage);
            int count = pr.count();
            int endPage = count / 6;
            if (count % 6 != 0) {
                endPage++;
            }
            List<Product> list6 = pr.pagingProductBy6(index);
            request.setAttribute("listP", list6);
            request.setAttribute("listSell", listSell);
            request.setAttribute("listC", listC);
            request.setAttribute("listTop5", listTop5);
            request.setAttribute("listS", listS);
            //request.setAttribute("a", a);
            request.setAttribute("listB", listB);
//            request.setAttribute("listP", listP);
//            request.setAttribute("listP", listPI);
            request.setAttribute("count", count);
            request.setAttribute("endP", endPage);
            request.setAttribute("tag", index);
            request.getRequestDispatcher("Homepage.jsp").forward(request, response);
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

