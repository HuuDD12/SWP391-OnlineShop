/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Account;
import Model.Order;
import Model.OrderStatus;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBcontext.DBContext {

    public int createReturnId(Order order) {
        String sql = "INSERT INTO [dbo].[Orders]\n"
                + "           ([UserID]\n"
                + "           ,[TotalPrice]\n"
                + "           ,[Note]\n"
                + "           ,[Status]\n"
                + "           ,[Date]\n"
                + "           ,[ShippingID])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,GETDATE(),?)";
        Connection conn;
        try {
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getAccountId());
            ps.setDouble(2, order.getTotalPrice());
            ps.setString(3, order.getNote());
            ps.setInt(4, order.getStatus());
            ps.setInt(5, order.getShippingId());
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys(); //lấy key tự tăng
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(ShippingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Order> viewOrderWait(String id) {
        String sql = "select o.* from Orders o join Order_Status s\n"
                + "on o.Status = s.ID \n"
                + "where o.UserID = ?\n"
                + "and o.ShippingID = 1";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order p = new Order(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(7));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Order> viewOrderPack(String id) {
        String sql = "select o.* from Orders o join Order_Status s\n"
                + "on o.Status = s.ID \n"
                + "where o.UserID = ?\n"
                + "and o.ShippingID = 2";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order p = new Order(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(7));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Order> viewOrderDelivery(String id) {
        String sql = "select o.* from Orders o join Order_Status s\n"
                + "on o.Status = s.ID \n"
                + "where o.UserID = ?\n"
                + "and o.ShippingID = 3";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order p = new Order(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(7));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Order> viewOrderCancel(String id) {
        String sql = "select o.* from Orders o join Order_Status s\n"
                + "on o.Status = s.ID \n"
                + "where o.UserID = ?\n"
                + "and o.ShippingID = 4";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order p = new Order(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(7));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Order> viewOrderComplete(String id) {
        String sql = "select o.* from Orders o join Order_Status s\n"
                + "on o.Status = s.ID \n"
                + "where o.UserID = ?\n"
                + "and o.ShippingID = 5";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order p = new Order(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getInt(7));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int countOrder() {
        String query = "select COUNT (*) from [orders] ";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<Order> getBillByDay() {
        List<Order> list = new ArrayList<>();
        String sql = "SELECT * from Orders inner join Users on Orders.UserID = Users.UserID where [Date] = cast(getdate() as Date)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account u = new Account(rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13));
                list.add(new Order(rs.getInt(1), rs.getInt(2), rs.getDouble(3), rs.getString(4), rs.getInt(5),
                        rs.getString(6), rs.getInt(7), u));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Order> getAllBill() {
        List<Order> list = new ArrayList<>();
        String sql = "SELECT * from Orders inner join Users on Orders.UserID = Users.UserID \n"
                + "inner join Order_Status os on Orders.Status = os.ID";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account u = new Account(rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13));
                OrderStatus os = new OrderStatus(rs.getInt(14), rs.getString(15));
                list.add(new Order(rs.getInt(1), rs.getInt(2), rs.getDouble(3), rs.getString(4), rs.getInt(5),
                        rs.getString(6), rs.getInt(7), u, os));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        OrderDAO o = new OrderDAO();
        List<Order> list = o.getAllBill();
        for (Order order : list) {
            System.out.println(order);
        }
    }
}
