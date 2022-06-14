/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import Model.Role;
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
@WebServlet(name = "UserListControl", urlPatterns = {"/userlist"})
public class UserListControl extends HttpServlet {

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
        UserDAO udao = new UserDAO();
        String indexpage = request.getParameter("index");
        String Search = request.getParameter("Search");
        if (Search == null){
            Search = "";
        }
        if(indexpage == null){
            indexpage= "1";
        }
        int index = Integer.parseInt(indexpage);
        int count = udao.getCountUserSearch(Search);
        int endpage = count /5;
        if(count % 5 != 0){
            endpage++;
        }
        List<Role> list = udao.SearchUserByName(Search,index);     
        request.setAttribute("Total", count);      
        request.setAttribute("endPage", endpage);      
        request.setAttribute("tag", index);
        request.setAttribute("List", list);
        request.getRequestDispatcher("UserListAdmin.jsp").forward(request, response);
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
        UserDAO udao = new UserDAO();
        String indexpage = request.getParameter("index");
        String Search = request.getParameter("Search");
        if (Search == null){
            Search = "";
        }
        if(indexpage == null){
            indexpage= "1";
        }
        int index = Integer.parseInt(indexpage);
        int count = udao.getCountUserSearch(Search);
        int endpage = count /5;
        if(count % 5 != 0){
            endpage++;
        }
        List<Role> list = udao.SearchUserByName(Search,index);     
        request.setAttribute("Total", count);      
        request.setAttribute("endPage", endpage);      
        request.setAttribute("tag", index);
        request.setAttribute("List", list);
        request.getRequestDispatcher("UserListAdmin.jsp").forward(request, response);
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
