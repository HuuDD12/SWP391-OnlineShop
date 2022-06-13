/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

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
public class NotificationDAO extends DBcontext.DBContext {

    public void addNotification(Notification notification) {
        String query = "INSERT INTO dbo.[Notifications] VALUES (?,?,?,0,GETDATE())";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, notification.getUserID());
            ps.setInt(2, notification.getOrderID());
            ps.setNString(3, notification.getContent());
            ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

        }
    }

    public ArrayList<Notification> getAllNotification(int id) {
        ArrayList<Notification> list = new ArrayList<>();
        String query = "SELECT * FROM dbo.[Notifications] WHERE UserID = ? ORDER BY [status] ASC, [time] DESC";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Notification(rs.getInt("id"), rs.getString("UserID"), rs.getInt("OrderID"), rs.getString("content"), rs.getInt("status"), rs.getString("time")));
            }
        } catch (SQLException e) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

        }
        return list;
    }

    public void markAsRead(int id, int notiId) {
        String query = "UPDATE dbo.Notifications set status=1 where UserID = ? and ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ps.setInt(2, notiId);
            ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(NotificationDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

        }
    }

    public static void main(String[] args) {
        NotificationDAO ndao = new NotificationDAO();
        List<Notification> list = ndao.getAllNotification(1);
        for (Notification notification : list) {
            System.out.println(notification);
        }
    }
}
