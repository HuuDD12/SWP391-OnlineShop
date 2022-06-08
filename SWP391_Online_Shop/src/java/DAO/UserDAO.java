/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Account;
import Model.Role;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Pham Anh Duc
 */
public class UserDAO extends DBcontext.DBContext{

    public void signup(Account acc) {
        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ([Username]\n"
                + "           ,[Password]\n"
                + "           ,[email]\n"
                + "           ,[RoleID]\n"
                + "           ,[isBlock])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, acc.getUsername());
            ps.setString(2, acc.getPassword());
            ps.setString(3, acc.getEmail());
            ps.setInt(4, acc.getRoleId());
            ps.setInt(5, acc.getBlock());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public Account checkAccExist(String username) {
        String sql = "SELECT * from Users where Username = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Account( 
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4), 
                        rs.getInt(5), 
                        rs.getInt(6));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public List<Role> getAllUser() {
        List<Role> list = new ArrayList<>();
        String sql = "select u.*,r.RoleName from Users u inner join role r on u.RoleID = r.RoleID ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {  
                Account acc = new  Account( 
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4), 
                        rs.getInt(5), 
                        rs.getInt(6));   
                Role r = new Role(acc, rs.getString(7));
                list.add(r);
            }

        } catch (Exception e) {
        }
        return list;
    }
    
    
    
    public static void main(String[] args) {
        UserDAO u = new UserDAO();
        List<Role> list = u.getAllUser();
        for (Role o : list) {
            System.out.println(o);
        }
    }
}
