/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BannerDAO;
import Model.Banner;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author ADM
 */
@WebServlet(name = "EditbannerControl", urlPatterns = {"/EditbannerControl"})
public class EditbannerControl extends HttpServlet {

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
        String id  = request.getParameter("sid");
        BannerDAO dao = new BannerDAO();
        Banner a = dao.getAccountDetail(id);
        request.setAttribute("Banner", a);
        request.getRequestDispatcher("EditBannerManager.jsp").forward(request, response);
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
        Part file = request.getPart("image");
        String image = file.getSubmittedFileName();
        String sale = request.getParameter("sale");
        String id = request.getParameter("id");
        int bannerid = Integer.parseInt(id);
        BannerDAO dao = new BannerDAO();
        String link = "";

        link = "resources\\img\\ImgUser\\" + image;
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
        dao.UpdateBanner(link, sale,bannerid );
        response.sendRedirect("bannercontrol");
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
