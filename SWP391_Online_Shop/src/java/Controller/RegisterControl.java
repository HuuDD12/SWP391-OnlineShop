/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import Model.Account;
import DAO.SendEmail;
import DAO.UserInfoDAO;
import Model.UserInfo;
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
 * @author Admin
 */
@WebServlet(name = "RegisterControl", urlPatterns = {"/register"})
public class RegisterControl extends HttpServlet {

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
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            String email = request.getParameter("email");
            String repass = request.getParameter("repass");
            UserInfoDAO uidao= new UserInfoDAO();
            UserDAO u = new UserDAO();
            Account acc = u.checkAccExist(user);
            if (acc == null) {
                if (!pass.equals(repass)) {
                    request.setAttribute("message", "Repass must be equal password");
                    request.getRequestDispatcher("Register.jsp").forward(request, response);
                } else {
                    SendEmail sm = new SendEmail();
                    String code = sm.getRandom();
                    acc = new Account(user, pass, email, 3, 0, code);
                    //call the send email method
                    //boolean test = sm.sendEmail(acc);

                    //check if the email send successfully
//                    if (test) {
//                        HttpSession session = request.getSession();
//                        session.setAttribute("authcode", acc);
//                        response.sendRedirect("verify.jsp");
//                    } else {
//                        out.println("Failed to send verification email");
//                    }
                    int uid = new UserDAO().createReturnId(acc);
                    UserInfo info = new UserInfo(uid, "", "", "", "");
                    uidao.saveUserInfo(info);
                    response.sendRedirect("productlist");
                }
            } else {
                request.setAttribute("message", "Username is existed");
                request.getRequestDispatcher("Register.jsp").forward(request, response);
            }
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
        request.getRequestDispatcher("Register.jsp").forward(request, response);
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
