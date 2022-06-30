/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Comment;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class CommentDAO extends DBcontext.DBContext {

    public void insert(String name, String email, String feedback, int id,double star) {
        try {
            String sql = "INSERT INTO [dbo].[Comment]\n"
                    + "           ([Name]\n"
                    + "           ,[Email]\n"
                    + "           ,[CommentDate]\n"
                    + "           ,[CommentDetail]\n"
                    + "           ,[ProductId]\n"
                    + "           ,[Star])\n"
                    + "     VALUES\n"
                    + "           (?,?,GETDATE(),?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, email);;
            stm.setString(3, feedback);
            stm.setInt(4, id);
            stm.setDouble(5, star);

            stm.executeUpdate();
        } catch (SQLException ex) {

        }
    }

    public ArrayList<Comment> getComment(int ProID) {
        ArrayList<Comment> list = new ArrayList<>();
        try {
            String sql = "SELECT * from comment where productid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, ProID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Comment f = new Comment(rs.getString(2), rs.getString(3), rs.getString(5), rs.getDate(4), rs.getInt(6), rs.getDouble(7));
                list.add(f);
            }

        } catch (SQLException ex) {

        }
        return list;
    }

    public static void main(String[] args) {
        CommentDAO dao = new CommentDAO();
        List<Comment> list = dao.getComment(2);
        for (Comment comment : list) {
            System.out.println(comment);
        }
    }
}
