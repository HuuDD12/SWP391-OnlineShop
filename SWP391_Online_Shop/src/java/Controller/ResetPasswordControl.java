/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.GmailAPI;
import DAO.UserDAO;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ResetPasswordControl", urlPatterns = {"/resetpassword"})
public class ResetPasswordControl extends HttpServlet {

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
            out.println("<title>Servlet ResetPasswordControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ResetPasswordControl at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
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
        GmailAPI gmail = new GmailAPI();

        try {
            String mailTo = request.getParameter("mail");
            Account u = dao.getUsersByEmail(mailTo);
            if (u == null) {
                request.setAttribute("warn", "The email did not exist, please try again!");
                request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
            } else {
                //FIX DEFAULT LENGTH OF PASSWORD 8 CHARACTORS
                int charactor = 8;
                String gmailFrom = "duongbato14@gmail.com";
                String password = "oholtguoeigmiidp";
                String subject = "Reset Password";
                String newPassword = dao.RandomPassword(charactor);
                // TO UPDATE PASSWORD
                dao.updatePassword(u.getUserId(), newPassword);

                String message = ("This is your new password: " + newPassword);
                //SEND NEW PASSWORD
              
                //send mail 
                gmail.send(mailTo, subject, message, gmailFrom, password);
                
                response.sendRedirect("LoginHere.jsp");

            }
        } catch (Exception ex) {
            request.setAttribute("warn", "The email did not exist, please try again!");
            request.getRequestDispatcher("ResetPassword.jsp").forward(request, response);
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
