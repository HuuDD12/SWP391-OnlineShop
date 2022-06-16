/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BlogDAO;
import Model.Account;
import Model.Blog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
@MultipartConfig(location="/updateblog", fileSizeThreshold=1024*1024, maxFileSize=1024*1024*5, maxRequestSize=1024*1024*5*5)
@WebServlet(name = "UpdateBlog", urlPatterns = {"/updateblog"})
public class UpdateBlog extends HttpServlet {

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
            out.println("<title>Servlet UpdateBlog</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateBlog at " + request.getContextPath() + "</h1>");
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
        int bid = Integer.parseInt(request.getParameter("bid"));
        BlogDAO bdao = new BlogDAO();
        Blog blog = bdao.getBlogByID(bid);
        request.setAttribute("blog", blog);
        request.getRequestDispatcher("UpdateBlog.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8"); 
//        try {
//            // get data from page Update
//            HttpSession session = request.getSession();
//            Account acc = (Account) session.getAttribute("acc");
//            String title = request.getParameter("title"); 
//            String content = request.getParameter("content");           
//            String imageLink = request.getParameter("img");
//            String author = request.getParameter("author");
//            int id = Integer.parseInt(request.getParameter("id"));
//            // set Blog data to database
//            BlogDAO dao = new BlogDAO();
//            dao.update(author, title, content, imageLink,acc.getUserId(), id);           
//            // Redirect to manage Blog after update successful
//            response.sendRedirect("bloglist");
//        } catch (Exception e) {
//            //response.sendRedirect("error.jsp");
//        }
            BlogDAO dao = new BlogDAO();
            Blog blog = new Blog();
            HttpSession session = request.getSession();
            Account acc = (Account) session.getAttribute("acc");
            Part filePart = request.getPart("BlogImgURL");
        if(!"".equals(filePart.getSubmittedFileName()))
        {
            String imgpath= "resources\\img\\banner\\";
            String filePath = getServletContext().getRealPath("") + File.separator + imgpath + blog.getImageLink();
            File file = new File(filePath); 
            if (file.exists() && !file.isDirectory()) { 
               file.delete();
            } 
            String fileName =  Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); 
            InputStream inputStream = filePart.getInputStream();
            String uploadPath = getServletContext().getRealPath("") + File.separator + imgpath;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            FileOutputStream outputStream = new FileOutputStream(uploadPath + 
            File.separator + fileName);
            int read = 0;
            final byte[] bytes = new byte[1024];
            while ((read = inputStream.read(bytes)) != -1) {
                outputStream.write(bytes, 0, read);
            }
            inputStream.close();
            outputStream.close();
            blog.setImageLink("resources\\img\\Blog\\"+filePart.getSubmittedFileName());
        }
        blog.setTitle(request.getParameter("title"));
        blog.setContent(request.getParameter("content"));
        blog.setAuthor(request.getParameter("author"));
        blog.setUserId(acc.getUserId());
        blog.setId(Integer.parseInt(request.getParameter("id")));
        dao.update(blog);
        response.sendRedirect("bloglist");
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
