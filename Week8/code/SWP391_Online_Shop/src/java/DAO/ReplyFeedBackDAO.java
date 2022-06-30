/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Feedback;
import Model.ReplyFeedBack;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ReplyFeedBackDAO extends DBcontext.DBContext {

    public void addReplyFeedBack(ReplyFeedBack feedback) {
        String query = "INSERT INTO [dbo].[Feedback_Replies]\n"
                + "           ([FeedbackID]\n"
                + "           ,[UserID]\n"
                + "           ,[RepliesText])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, feedback.getFeedbackId());
            ps.setString(2, feedback.getUserId());
            ps.setString(3, feedback.getReply());
            ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

        }
    }
}
