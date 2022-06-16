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
public class BlogDAO extends DBcontext.DBContext {

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
                hotBlogList.add(new Blog(rs.getInt("ID"), rs.getString("Author"), rs.getString("Title"), rs.getString("Content"), rs.getString("imageLink"), rs.getString("userId")));
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
                blogList.add(new Blog(rs.getInt("ID"), rs.getString("Author"), rs.getString("Title"), rs.getString("Content"), rs.getString("imageLink"), rs.getString("userId")));
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

    public void add(Blog blog) {
        query = "INSERT INTO [dbo].[Blogs]\n"
                + "           ([Author]\n"
                + "           ,[Title]\n"
                + "           ,[Content]\n"
                + "           ,[imageLink]\n"
                + "           ,[UserId])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, blog.getAuthor());
            ps.setString(2, blog.getTitle());
            ps.setString(3, blog.getContent());
            ps.setString(4, blog.getImageLink());
            ps.setString(5, blog.getUserId());
            ps.executeUpdate();
        } catch (SQLException e) {
        }

    }

    public void update(Blog blog) {
        query = "UPDATE [dbo].[Blogs]\n"
                + "   SET [Author] = ?\n"
                + "      ,[Title] = ?\n"
                + "      ,[Content] = ?\n"
                + "      ,[imageLink] = ?\n"
                + "      ,[UserId] = ?\n"
                + " WHERE ID = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, blog.getAuthor());
            ps.setString(2, blog.getTitle());
            ps.setString(3, blog.getContent());
            ps.setString(4, blog.getImageLink());
            ps.setString(5, blog.getUserId());
            ps.setInt(6, blog.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void delete(int id) {
        query = "Delete FROM Blogs WHERE ID = ?";

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
