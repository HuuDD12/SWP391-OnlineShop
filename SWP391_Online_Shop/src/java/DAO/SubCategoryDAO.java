/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Category;
import Model.Subcategory;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class SubCategoryDAO extends DBcontext.DBContext {

    public List<Subcategory> getAllSubCategory() {
        String sql = "SELECT * FROM dbo.SubCategory";
        List<Subcategory> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Subcategory s = new Subcategory(rs.getInt(1), rs.getString(2), rs.getInt(3));
                list.add(s);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Subcategory> getSubByCateId(int cid) {
        String sql = "select * from SubCategory where CategoryID = ?";
        List<Subcategory> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Subcategory c = new Subcategory(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)
                );
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void InsertSubCateName(String subname, int cateid) {
        String sql = "INSERT INTO [dbo].[SubCategory]\n"
                + "           ([SubCategoryName]\n"
                + "           ,[CategoryID])\n"
                + "     VALUES\n"
                + "           (?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, subname);
            ps.setInt(2, cateid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void DeleteSubId(int subid) {
        String sql = "delete from SubCategory where SubCategoryID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, subid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
