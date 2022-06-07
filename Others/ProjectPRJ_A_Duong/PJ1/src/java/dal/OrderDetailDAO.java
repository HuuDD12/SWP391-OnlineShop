/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.User;

/**
 *
 * @author Admin
 */
public class OrderDetailDAO extends DBContext {

    public void saveCart(int orderId, Map<Integer, Cart> carts, OrderDetail orderdetail) {

        String sql = "INSERT INTO [dbo].[OrderLine]\n"
                + "           ([oid]\n"
                + "           ,[pid]\n"
                + "           ,[quantity]\n"
                + "           ,[price]\n"
                + "           ,[FirstName]\n"
                + "           ,[LastName]\n"
                + "           ,[Phone]\n"
                + "           ,[Address])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?)";
        try {

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();

                ps.setInt(2, cart.getProduct().getId_pro());
                ps.setInt(3, cart.getQuantity());
                ps.setDouble(4, cart.getProduct().getPrice());
                ps.setString(5, orderdetail.getFname());
                ps.setString(6, orderdetail.getLname());
                ps.setString(7, orderdetail.getPhone());
                ps.setString(8, orderdetail.getAddress());
                ps.executeUpdate();
            }

        } catch (Exception ex) {

        }

    }

    public List<OrderDetail> getAllBuyHistory(int account_id) {
        List<OrderDetail> list = new ArrayList<>();
        String query = "select * from OrderLine inner join [Order] on OrderLine.oid = [Order].id inner join product on OrderLine.pid = product.id_pro where account_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);

            ps.setInt(1, account_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Product p = new Product(rs.getInt("id_pro"), rs.getString("name_pro"), rs.getString("images"));
                Order o = new Order(rs.getInt("id"), rs.getString("created_date"), rs.getInt("account_id"), rs.getDouble("totalMoney"));
                list.add(new OrderDetail(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDouble(4), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), o, p));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void updateQuantity(Map<Integer, Cart> carts, int ProductID) {
        String query = "update product set quantity = quantity - ? where id_pro = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setInt(1, cart.getQuantity());
                ps.setInt(2, ProductID);
                ps.executeUpdate();
            }
        } catch (Exception e) {
        }
    }

    public OrderDetail getMostProductSell() {
        String query = "select top 1 p.name_pro,sum(o.quantity) as sp from OrderLine o inner join product p on p.id_pro=o.pid \n"
                + "group by o.pid,p.name_pro\n"
                + "order by sp desc ";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString("name_pro"));               
                return new OrderDetail(rs.getInt(2), p);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        OrderDetailDAO dao = new OrderDetailDAO();
        OrderDetail list = dao.getMostProductSell();
        System.out.println(list);
    }
}
