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
import Model.CBanner;
import java.sql.Statement;
/**
 *
 * @author ADM
 */
public class CBannerDAO extends DBcontext.DBContext {
    
    public int createReturnId(String img,String Title,String desc) {
        String sql = "INSERT INTO [dbo].[CBanner]\n"
                + "           ([Img]\n"
                + "           ,[Title]\n"
                + "           ,[desc])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, img);
            ps.setString(2, Title);
            ps.setString(3, desc);
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public List<CBanner> getAllCBanner() {
        List<CBanner> list = new ArrayList<>();
        String sql = "select * from [CBanner]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CBanner r = new CBanner(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4));
                list.add(r);
            }

        } catch (SQLException e) {
        }
        return list;
    }

    public int getCountCBanner() {
        String query = "select count(*) from [CBanner]";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public void UpdateCBanner(String img,String title,String desc, int id) {
        String query = "UPDATE [CBanner]\n"
                + "  SET [Img] = ?,\n"
                + "  [Title] = ?,\n"
                + "  [desc] = ?\n"
                + "  WHERE [ID] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, img);
            ps.setString(2, title);
            ps.setString(3, desc);
            ps.setInt(4, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    public void DeleteCBanner(int id) {
        String query = "DELETE FROM [CBanner] WHERE [ID] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);      
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    public CBanner getAccountDetail(String cid) {
        String sql = "select * from [CBanner] WHERE [ID] = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new CBanner(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));
            }
        } catch (SQLException e) {
        }

        return null;
    }

    public static void main(String[] args) {
        CBannerDAO dao = new CBannerDAO();
        CBanner a = dao.getAccountDetail("4");
        System.out.println(a);
    }
}

