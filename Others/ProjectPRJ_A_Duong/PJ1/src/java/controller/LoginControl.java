/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

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
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String rem = request.getParameter("rem");
        UserDAO u = new UserDAO();
        User acc = u.login(user, pass);
        User block = u.getAccBlock(user);
        if (block == null) {
            if (acc == null) {
                request.setAttribute("mess", "WRONG USERNAME OR PASSWORD");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("acc", acc);
                Cookie cuser = new Cookie("user", user);
                Cookie cpass = new Cookie("pass", pass);
                Cookie cremember = new Cookie("rem", rem);
                if (rem != null) {
                    //user click remember me-->set time cookies
                    //co nho , 1 ngay
                    cuser.setMaxAge(60 * 60 * 24);
                    cpass.setMaxAge(60 * 60 * 24);
                    cremember.setMaxAge(60 * 60 * 24);
                } else {
                    //khong nho , nen xoa no di
                    cuser.setMaxAge(0);
                    cpass.setMaxAge(0);
                    cremember.setMaxAge(0);

                }
                response.addCookie(cuser);
                response.addCookie(cpass);
                response.addCookie(cremember);
                response.sendRedirect("home");
            }
        } else {
            request.setAttribute("mess", "YOUR ACCOUNT BLOCKED");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
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
