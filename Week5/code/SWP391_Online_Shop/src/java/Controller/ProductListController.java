    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BrandDAO;
import DAO.CategoryDAO;
import DAO.ProductDAO;
import DAO.SubCategoryDAO;
import Model.Brand;
import Model.Category;
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
 * @author Admin
 */
@WebServlet(name = "ProductListController", urlPatterns = {"/productlist"})
public class ProductListController extends HttpServlet {

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
        final int size = 6;
        ProductDAO pdao = new ProductDAO();
        CategoryDAO cdao = new CategoryDAO();
        List<Category> listC = cdao.getAllCategory();
        SubCategoryDAO sdao = new SubCategoryDAO();
        List<Subcategory> listS = sdao.getAllSubCategory();
        List<Product> listTop3 = pdao.getTop3Product();
        String page = request.getParameter("page");
        BrandDAO bdao = new BrandDAO();
        List<Brand> listB = bdao.getAllBrand();
        int count = pdao.count();
        int endPage = count / size;
        if (count % size != 0) {
            endPage++;
        }
        if (page == null) {
            page = "1";
        }
        List<Product> listP = pdao.getAll();
        int pTid = Integer.parseInt(page);
        List<Product> list = pdao.pagingProduct(pTid);
        request.setAttribute("listP", list);
        session.setAttribute("listB", listB);
        request.setAttribute("endPage", endPage);
        request.setAttribute("page", page);
        session.setAttribute("listTop3", listTop3);
        session.setAttribute("listC", listC);
        session.setAttribute("listS", listS);
        request.getRequestDispatcher("productlist.jsp").forward(request, response);
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
