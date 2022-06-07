/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.ProductDAO;
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
import model.Product;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AddToCartControl", urlPatterns = {"/add-to-cart"})
public class AddToCartControl extends HttpServlet {

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
       
        int productId = Integer.parseInt(request.getParameter("pid"));
        ProductDAO pdao = new ProductDAO();
        //map key:productId | value:cart
        HttpSession session = request.getSession();
        User u = (User) request.getSession().getAttribute("acc");
        Map<Integer,Cart> carts = (Map<Integer,Cart>) session.getAttribute("carts");

        if(carts==null){
            carts = new LinkedHashMap<>();
        }
        //1.Lấy product với id phù hợp
        //Có 2 TH
         //TH1: Sản phẩm chưa có trên giỏ hàng -> Thêm nó vào giỏ hàng(Add Product to session)
        //TH2: Sản phẩm đã có trên giỏ hàng -> Cập nhật lại số lượng sản phẩm trên giỏ hàng(Update Product in session)
        if(carts.containsKey(productId)){ //sản phẩm đã có trên giỏ hàng
            int oldQuantity = carts.get(productId).getQuantity();
            carts.get(productId).setQuantity(oldQuantity+1);
        }else{//sản phẩm chưa có trên giỏ hàng
            Product product = pdao.getProductById(productId);
            carts.put(productId, new Cart(product, 1));
        }
        //lưu carts lên session
         session.setAttribute("carts", carts);
         String urlHistory = (String) session.getAttribute("UrlHistory");
         if(urlHistory!=null){
             urlHistory = "home";
         }
         response.sendRedirect(urlHistory);
        
        
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
