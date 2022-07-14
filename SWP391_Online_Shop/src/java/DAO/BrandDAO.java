/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Brand;
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
public class BrandDAO extends DBcontext.DBContext {

    public List<Brand> getAllBrand() {
        String sql = "SELECT * FROM dbo.Brand";
        List<Brand> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Brand s = new Brand(rs.getInt(1), rs.getString(2));
                list.add(s);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Brand getBrandById(int cid) {
        String sql = "select * from Brand where BrandID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Brand(rs.getInt(1),
                        rs.getString(2)
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void UpdateBrand(int uid, String brandName) {
        String sql = "UPDATE [dbo].[Brand]\n"
                + "   SET [BrandName] = ?\n"
                + " WHERE BrandID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, brandName);
            ps.setInt(2, uid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void InsertBrand(String brandname) {
        String sql = "INSERT INTO [dbo].[Brand]\n"
                + "           ([BrandName])\n"
                + "     VALUES\n"
                + "           (?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, brandname);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteBrand(int cid) {
        String query = "delete from Brand where BrandID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, cid);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

}
