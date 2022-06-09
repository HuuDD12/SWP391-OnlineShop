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
public class BrandDAO extends DBcontext.DBContext{
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
}
