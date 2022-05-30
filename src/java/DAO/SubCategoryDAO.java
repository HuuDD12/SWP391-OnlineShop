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
public class SubCategoryDAO extends DBContext.DBContext{
    public List<Subcategory> getAllSubCategory() {
        String sql = "SELECT * FROM dbo.SubCategory";
        List<Subcategory> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                   Subcategory s = new Subcategory(rs.getInt(1), rs.getString(2),rs.getInt(3));               
                    list.add(s);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
