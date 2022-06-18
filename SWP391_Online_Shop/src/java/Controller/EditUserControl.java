/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserInfoDAO;
import Model.UserInfo;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author ADM
 */
@WebServlet(name = "EditUserControl", urlPatterns = {"/EditUserControl"})
@MultipartConfig
public class EditUserControl extends HttpServlet {

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
        String uid = request.getParameter("sid");
        UserInfoDAO udao = new UserInfoDAO();
        UserInfo a = udao.getAccountDetail(uid);        
        request.setAttribute("info", a);
        request.getRequestDispatcher("EditProfileUser.jsp").forward(request, response);
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
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String gender = request.getParameter("gender");
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
        String location = request.getParameter("location");
        String phone = request.getParameter("phone");
        int userid = Integer.parseInt(uid);
        int genderu = Integer.parseInt(gender);
        UserInfoDAO udao = new UserInfoDAO();
        String link ="";
        if("".equals(image)){          
            UserInfo info = new UserInfo(userid, imageu, first_name, last_name,genderu,birthday, email, location, phone);
            udao.UpdateUserInfo(info);
            
        }else {
            link = "resources\\img\\ImgUser\\" + image;
            UserInfo info = new UserInfo(userid, link, first_name, last_name,genderu,birthday, email, location, phone);
            String UploadPart = "C:/Users/ADM/OneDrive/Documents/NetBeansProjects/Online-Shop/web/resources/img/ImgUser/" + image ;
            try {
                FileOutputStream fos = new FileOutputStream(UploadPart);
                InputStream  is =  file.getInputStream();
                byte[] data = new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
                
            } catch (Exception e) {
            }
            udao.UpdateUserInfo(info);
            
        } 
        UserInfo a = udao.getAccountDetail(uid);        
        request.setAttribute("info", a);
        request.getRequestDispatcher("Profile.jsp").forward(request, response);
        
        
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
