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
 * @author ADM
 */
public class RoleDAO extends DBcontext.DBContext{
    public List<Role> getAllRole() {
        List<Role> list = new ArrayList<>();
        String sql = "select * from Role ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {  
                Account acc = new  Account("", "", "", "", rs.getInt(1), 0);   
                Role r = new Role(acc, rs.getString(2));
                list.add(r);
            }

        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        RoleDAO u = new RoleDAO();
        List<Role> list = u.getAllRole();
        for (Role o : list) {
            System.out.println(o);
        }
    }
}
