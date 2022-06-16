/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Model.Blog;

/**
 *
 * @author Ottelia
 */
public class BlogDAO extends DBcontext.DBContext{
    PreparedStatement ps = null;
    ResultSet rs = null;
    String query = "";

    public ArrayList<Blog> getHotBlogs() {
        //Product with most amount
        ArrayList<Blog> hotBlogList = new ArrayList<>();
         query = "select top 3 * from Blog\n"
                + "order by id desc";
        try {
            ps = connection.prepareStatement(query);
             rs = ps.executeQuery();
            while (rs.next()) {
                hotBlogList.add(new Blog(rs.getInt("ID"), rs.getString("Author"), rs.getString("Title"), rs.getString("Content"), rs.getString("imageLink")));
            }
        } catch (SQLException e) {
        }
        return hotBlogList;
    }

    public ArrayList<Blog> getAllBlogs() {
        ArrayList<Blog> blogList = new ArrayList<>();
        try {

            query = "select * from Blogs";
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                blogList.add(new Blog(rs.getInt("ID"), rs.getString("Author"), rs.getString("Title"), rs.getString("Content"), rs.getString("imageLink")));
            }
        } catch (SQLException e) {
        }
        return blogList;
    }

    public Blog getBlogByID(int id) {
        query = "SELECT * FROM Blogs WHERE ID = ?";
        try {
 
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Blog(rs.getInt("ID"), rs.getString("Author"), rs.getString("Title"), rs.getString("Content"), rs.getString("imageLink"));
            }
        } catch (SQLException e) {
        }

        return null;
    }

    public void add(String author, String title, String content, String imageLink) {
        query = "INSERT INTO Blogs VALUES (?,?,?,?)";
        try { 
            ps = connection.prepareStatement(query);
            ps.setString(1, author);
            ps.setString(2, title);
            ps.setString(3, content);
            ps.setString(4, imageLink);
            ps.executeUpdate();
        } catch (SQLException e) {
        }

    }

    public void update(String author, String title, String content, String imageLink, int id) {
          query = "update Blogs set Author= ? , Title =?, Content= ?, imageLink= ?  where ID =?";
        try { 
            ps = connection.prepareStatement(query);
            ps.setString(1, author);
            ps.setString(2, title);
            ps.setString(3, content);
            ps.setString(4, imageLink);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void delete(int id) {
        query = "Delete FROM Blog WHERE ID = ?";

        try { 
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
   
    }
    public static void main(String[] args) {
        BlogDAO dao = new BlogDAO();
        List<Blog> list = dao.getAllBlogs();
        for (Blog blog : list) {
             System.out.println(list);
        }
    }
}

