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
import Model.Banner;
import java.sql.Statement;
/**
 *
 * @author ADM
 */
public class BannerDAO extends DBcontext.DBContext {
    
    public int createReturnId(String img,String Title) {
        String sql = "INSERT INTO [dbo].[Banner]\n"
                + "           ([Img]\n"
                + "           ,[Title])\n"
                + "     VALUES\n"
                + "           (?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, img);
            ps.setString(2, Title);
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
    
    public List<Banner> getAllBanner() {
        List<Banner> list = new ArrayList<>();
        String sql = "select * from [Banner]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Banner r = new Banner(rs.getInt(1), rs.getString(2), rs.getInt(3));
                list.add(r);
            }

        } catch (SQLException e) {
        }
        return list;
    }

    public int getCountBanner() {
        String query = "select count(*) from [Banner]";
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

    public void UpdateBanner(String img,String title, int id) {
        String query = "UPDATE [Banner]\n"
                + "  SET [Img] = ?,\n"
                + "  [Title] = ?\n"
                + "  WHERE [ID] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, img);
            ps.setString(2, title);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    public void DeleteBanner(int id) {
        String query = "DELETE FROM [Banner] WHERE [ID] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);      
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    public Banner getAccountDetail(String cid) {
        String sql = "select * from [Banner] WHERE [ID] = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Banner(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        } catch (SQLException e) {
        }

        return null;
    }

    public static void main(String[] args) {
        BannerDAO dao = new BannerDAO();
        Banner a =dao.getAccountDetail("11");
        System.out.println(a);
    }
}
