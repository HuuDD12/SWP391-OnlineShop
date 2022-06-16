/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Account;
import Model.UserInfo;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class UserInfoDAO extends DBcontext.DBContext {


    public void saveUserInfo(UserInfo acc) {
            String sql = "INSERT INTO [dbo].[User_info]\n"
                + "           ([UserID]\n"
                + "           ,[Firstname]\n"
                + "           ,[Lastname]\n"
                + "           ,[Address]\n"
                + "           ,[PhoneNum])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, acc.getUid());
            ps.setString(2, acc.getFirstName());
            ps.setString(3, acc.getLastName());
            ps.setString(4, acc.getAddress());
            ps.setString(5, acc.getPhonenum());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
