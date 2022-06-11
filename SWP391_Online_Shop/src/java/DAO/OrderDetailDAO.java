/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Cart;
import Model.OrderDetail;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class OrderDetailDAO extends DBcontext.DBContext {

    public void saveCart(int orderId, Map<Integer, Cart> carts) {

        String sql = "INSERT INTO [dbo].[Order_Detail]\n"
                + "           ([OrderID]\n"
                + "           ,[ProductName]\n"
                + "           ,[ProductPrice]\n"
                + "           ,[Quantity]\n"
                + "           ,[ProductID])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        Connection conn;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();

                ps.setString(2, cart.getProduct().getProductName());
                ps.setDouble(3, cart.getProduct().getOriginalPrice());
                ps.setInt(4, cart.getQuantity());
                ps.setInt(5, cart.getProduct().getProductID());
                ps.executeUpdate();
            }

        } catch (Exception ex) {
            Logger.getLogger(ShippingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public OrderDetail getMostProductSell() {
        String query = "select top 1 p.ProductName,sum(o.quantity) as sp from Order_Detail o inner join product p on p.ProductID=o.ProductID\n"
                + "group by o.ProductName,p.ProductName\n"
                + "order by sp desc ";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString("productName"));
                return new OrderDetail(rs.getInt(2), p);
            }
        } catch (Exception e) {
        }
        return null;
    }
}
