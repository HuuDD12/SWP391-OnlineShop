/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Notification;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class NotificationDAO extends DBcontext.DBContext{
        String query = "INSERT INTO dbo.[Notifications] VALUES (?,?,?,0,GETDATE())";
        public void addNotification(Notification notification)  {
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, notification.getUserID());
            ps.setInt(2,notification.getOrderID());
            ps.setNString(3, notification.getContent());
            ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        finally{
            
        }
    }
}
