/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Category;
import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class CategoryDAO extends DBcontext.DBContext{
    public List<Category> getAllCategory() {
        String sql = "SELECT * from Category";
        List<Category> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                   Category c = new Category(rs.getInt(1), rs.getString(2));               
                    list.add(c);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public void InsertCategory(String cate_name) {
        String sql = "INSERT INTO [dbo].[Category]\n"
                + "           ([CategoryName])\n"
                + "     VALUES\n"
                + "           (?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cate_name);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteCategory(int cid) {
        String query = "delete from Category where CategoryID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, cid);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }
    
    public Category getCategoryById(int cid) {
        String sql = "select * from Category where CategoryID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(rs.getInt(1),
                        rs.getString(2)
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
