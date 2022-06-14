/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Account;
import Model.Feedback;
import Model.Notification;
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
public class FeedbackDAO extends DBcontext.DBContext {

    public void addFeedback(Feedback feedback) {
        String query = "INSERT INTO [dbo].[Feedback]\n"
                + "           ([UserID]\n"
                + "           ,[FeedbackDetail]\n"
                + "           ,[created_date])\n"
                + "     VALUES\n"
                + "           (?,?,GETDATE())";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, feedback.getUserId());
            ps.setString(2, feedback.getFeedbackDetail());
            ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

        }
    }
    
        public List<Feedback> getAllFeedback() {
        List<Feedback> list = new ArrayList<>();
        String query = "SELECT Feedback.*, Users.Username from Feedback inner join Users on Feedback.UserID = Users.UserID";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getString(5));
                list.add(new Feedback(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),acc));
            }
        } catch (SQLException e) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

        }
        return list;
    }
        
    public Feedback getFeedbackById(int id) {
        String query = "SELECT Feedback.*, Users.Username from Feedback inner join Users on Feedback.UserID = Users.UserID where Feedback.ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getString(5));
                return new Feedback(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),acc);
            }
        } catch (SQLException e) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

        }
        return null;
    }
}
