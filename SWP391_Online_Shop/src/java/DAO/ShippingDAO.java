/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.OrderDetail;
import Model.Product;
import Model.Shipping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ShippingDAO extends DBcontext.DBContext {

    public int createReturnId(Shipping shipping) {
        String sql = "INSERT INTO [dbo].[ShipInfo]\n"
                + "           ([CustomerName]\n"
                + "           ,[ShippingAddress]\n"
                + "           ,[PhoneNum])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, shipping.getName());
            ps.setString(2, shipping.getAddress());
            ps.setString(3, shipping.getPhone());
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

    public List<Shipping> getProductDelivering() {
        String query = "select si.CustomerName,si.ShippingAddress,si.PhoneNum,p.ProductName,p.SalePrice from Order_Detail d join Orders o\n"
                + "on d.OrderID = o.ID\n"
                + "join Order_Status s on s.ID = o.status\n"
                + "join Users u on u.UserID = o.UserID\n"
                + "join Product p on p.ProductID = d.ProductID\n"
                + "join ProductImg pr on pr.ProductID = p.ProductID\n"
                + "join ShipInfo si on si.ID = o.ShippingID\n"
                + "where s.ID = 3";
        List<Shipping> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                //Product p = new Product(rs.getString(4),rs.getDouble(5));
                Shipping od = new Shipping(rs.getString(1), rs.getString(2), rs.getString(3),
                        new Product(rs.getString(4), rs.getDouble(5)));
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public int countDelivering() {
        String query = "select count(*) from Orders o join Order_Status os\n"
                + "on o.Status = os.ID\n"
                + "where os.ID = 3";
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

    public int countCompleted() {
        String query = "select count(*) from Orders o join Order_Status os\n"
                + "on o.Status = os.ID\n"
                + "where os.ID = 5";
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

    public static void main(String[] args) {
        ShippingDAO o = new ShippingDAO();
        List<Shipping> od = o.getProductDelivering();
        for (Shipping Shipping : od) {
            System.out.println(Shipping);
        }
    }
}
