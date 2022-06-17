/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.UserInfo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class UserInfoDAO extends DBcontext.DBContext {


    public void saveUserInfo(UserInfo acc) {
            String sql = "INSERT INTO [dbo].[User_info]\n"
                + "           ([UserID]\n"
                + "           ,[UserImg]\n"
                + "           ,[Firstname]\n"
                + "           ,[Lastname]\n"
                + "           ,[Gender]\n"
                + "           ,[Birthday]\n"
                + "           ,[Address]\n"
                + "           ,[PhoneNum])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, acc.getUid());
            ps.setString(2, acc.getUidImg());
            ps.setString(3, acc.getFirstName());
            ps.setString(4, acc.getLastName());
            ps.setInt(5, acc.getGender());
            ps.setString(6, acc.getBirthday());
            ps.setString(7, acc.getAddress());
            ps.setString(8, acc.getPhonenum());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public UserInfo getAccountDetail(String cid) {
        String sql = "select ui.*,u.email from User_info ui join Users u \n" +
"                on ui.UserID = u.UserID \n" +
"                join Role r on r.RoleID = u.RoleID\n" +
"                where u.UserID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new UserInfo(
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(10),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }

        return null;
    }
    public static void main(String[] args) {
        UserInfoDAO udao = new UserInfoDAO();
        UserInfo info = udao.getAccountDetail("1");
        System.out.println(info);
    }
}
