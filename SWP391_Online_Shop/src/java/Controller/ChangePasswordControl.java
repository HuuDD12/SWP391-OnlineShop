/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "ChangePasswordControl", urlPatterns = {"/ChangePasswordControl"})
public class ChangePasswordControl extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ChangePasswordControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePasswordControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String username = request.getParameter("sid");
        request.setAttribute("username", username);    
        request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
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
        UserDAO dao = new UserDAO();
        String username = request.getParameter("username");
        String oldpass = request.getParameter("pass");
        String newpass = request.getParameter("newpass");
        String confirmpass = request.getParameter("confirmpass");
        int check = 0;
        int mess = 0;
        Account a = dao.checkAccExistbyPass(username, oldpass);
        if (a == null) {
            mess= 1;
            request.setAttribute("check", check);
            request.setAttribute("mess", mess);
            request.setAttribute("username", username);
            request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
        } else {
            if (newpass.equals(confirmpass)) {
                HttpSession session = request.getSession();
                 dao.UpdatePassWordUser(newpass, username, oldpass);
                session.removeAttribute("acc");
                session.removeAttribute("carts");
                response.sendRedirect("productlist");
            }else{
                mess = 2;
                request.setAttribute("check", check);
                request.setAttribute("mess", mess);
                request.setAttribute("username", username);
                request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
            }
        }


        
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
