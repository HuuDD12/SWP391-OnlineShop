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
import java.util.ArrayList;
import java.util.List;
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

    public OrderDetail OrderDetailProduct(int pid) {
        String query = "SELECT od.OrderID,p.ProductName,od.ProductPrice,od.Quantity,proi.ProductImgURL from  Order_Detail od\n"
                + "inner join Product p on od.ProductID = p.ProductID\n"
                + "inner join ProductImg proi on proi.ProductID = p.ProductID where od.OrderID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(2), rs.getString(5));
                return new OrderDetail(rs.getInt(1), rs.getDouble(3), rs.getInt(4), p);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<OrderDetail> get3MostProductSell() {
        String query = "select top 3 p.ProductName,pr.ProductImgURL,p.SalePrice from Order_Detail o inner join product p on p.ProductID=o.ProductID\n"
                + "join ProductImg pr on pr.ProductID = p.ProductID\n"
                + "group by o.ProductName,p.ProductName,pr.ProductImgURL,p.SalePrice";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getDouble(3));
                OrderDetail od = new OrderDetail(p);
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        OrderDetailDAO o = new OrderDetailDAO();
        List<OrderDetail> od = o.get3MostProductSell();
        for (OrderDetail orderDetail : od) {
            System.out.println(orderDetail);
        }
    }
}
