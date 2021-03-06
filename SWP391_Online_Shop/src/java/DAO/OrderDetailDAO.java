/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Cart;
import Model.CategoryOrder;
import Model.Order;
import Model.OrderDetail;
import Model.OrderStatus;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
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

    public List<OrderDetail> getOrderDetailProduct(int pid) {
        String query = "SELECT od.OrderID,p.ProductName,od.ProductPrice,od.Quantity,proi.ProductImgURL from  Order_Detail od\n"
                + "inner join Product p on od.ProductID = p.ProductID\n"
                + "inner join ProductImg proi on proi.ProductID = p.ProductID where od.OrderID = ?";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(2), rs.getString(5));
                OrderDetail od = new OrderDetail(rs.getInt(1), rs.getDouble(3), rs.getInt(4), p);
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
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
    public List<OrderDetail> get3MostOderSell() {
        String query = "select top 3 p.ProductName,p.SalePrice,Sum(o.Quantity) as Quantity from Order_Detail o inner join product p on p.ProductID=o.ProductID\n" +
"                join ProductImg pr on pr.ProductID = p.ProductID\n" +
"                group by o.ProductName,p.ProductName,p.SalePrice, o.Quantity";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getDouble(3));
                OrderDetail od = new OrderDetail(p);
                list.add(od);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<OrderDetail> getProductWaiting(int pid) {
        String query = "select p.ProductName,pr.ProductImgURL,p.OriginalPrice,p.SalePrice,o.Status from Order_Detail d join Orders o\n"
                + "on d.OrderID = o.ID\n"
                + "join Order_Status s on s.ID = o.status\n"
                + "join Users u on u.UserID = o.UserID\n"
                + "join Product p on p.ProductID = d.ProductID\n"
                + "join ProductImg pr on pr.ProductID = p.ProductID\n"
                + "where u.UserID = ? and s.ID = 1";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4));
                OrderStatus s = new OrderStatus(rs.getInt(5));
                OrderDetail od = new OrderDetail(p, s);
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<OrderDetail> getProductPacking(int pid) {
        String query = "select p.ProductName,pr.ProductImgURL,p.OriginalPrice,p.SalePrice from Order_Detail d join Orders o\n"
                + "on d.OrderID = o.ID\n"
                + "join Order_Status s on s.ID = o.status\n"
                + "join Users u on u.UserID = o.UserID\n"
                + "join Product p on p.ProductID = d.ProductID\n"
                + "join ProductImg pr on pr.ProductID = p.ProductID\n"
                + "where u.UserID = ? and s.ID = 2";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4));
                OrderDetail od = new OrderDetail(p);
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<OrderDetail> getProductDeliver(int pid) {
        String query = "select p.ProductName,pr.ProductImgURL,p.OriginalPrice,p.SalePrice from Order_Detail d join Orders o\n"
                + "on d.OrderID = o.ID\n"
                + "join Order_Status s on s.ID = o.status\n"
                + "join Users u on u.UserID = o.UserID\n"
                + "join Product p on p.ProductID = d.ProductID\n"
                + "join ProductImg pr on pr.ProductID = p.ProductID\n"
                + "where u.UserID = ? and s.ID = 3";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4));
                OrderDetail od = new OrderDetail(p);
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<OrderDetail> getProductCanceled(int pid) {
        String query = "select p.ProductName,pr.ProductImgURL,p.OriginalPrice,p.SalePrice from Order_Detail d join Orders o\n"
                + "on d.OrderID = o.ID\n"
                + "join Order_Status s on s.ID = o.status\n"
                + "join Users u on u.UserID = o.UserID\n"
                + "join Product p on p.ProductID = d.ProductID\n"
                + "join ProductImg pr on pr.ProductID = p.ProductID\n"
                + "where u.UserID = ? and s.ID = 4";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4));
                OrderDetail od = new OrderDetail(p);
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<OrderDetail> getProductComplete(int pid) {
        String query = "select p.ProductName,pr.ProductImgURL,p.OriginalPrice,p.SalePrice from Order_Detail d join Orders o\n"
                + "on d.OrderID = o.ID\n"
                + "join Order_Status s on s.ID = o.status\n"
                + "join Users u on u.UserID = o.UserID\n"
                + "join Product p on p.ProductID = d.ProductID\n"
                + "join ProductImg pr on pr.ProductID = p.ProductID\n"
                + "where u.UserID = ? and s.ID = 5";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4));

                OrderDetail od = new OrderDetail(p);
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<OrderDetail> getProductDelivering() {
        String query = "select p.ProductName,pr.ProductImgURL,p.OriginalPrice,p.SalePrice from Order_Detail d join Orders o\n"
                + "on d.OrderID = o.ID\n"
                + "join Order_Status s on s.ID = o.status\n"
                + "join Users u on u.UserID = o.UserID\n"
                + "join Product p on p.ProductID = d.ProductID\n"
                + "join ProductImg pr on pr.ProductID = p.ProductID\n"
                + "where u.UserID = ? and s.ID = 3";
        List<OrderDetail> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4));
                OrderDetail od = new OrderDetail(p);
                list.add(od);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public String totalPricePerMonth(int month) {
        String query = "select totalPrice from \n"
                + "                (select MONTH(date) as SalesMonth,\n"
                + "                SUM(od.ProductPrice) as totalPrice\n"
                + "                from [Orders] o , Order_Detail od\n"
                + "                where o.ID = od.orderID\n"
                + "                GROUP BY MONTH(date)) as t where t.SalesMonth = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, month);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String totalPrice = rs.getString("totalPrice");
                return totalPrice;
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }
    
    public int getMonth() {
        Date date = new Date();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        int month = localDate.getMonthValue();
        return month;
    }
    
    public CategoryOrder getTotalCategoryOrderByID(int ID) {
        String query = "select t.* from  \n" +
"                (select c.CategoryID,categoryName, COUNT(sc.categoryID) as totalCategoryOrder from Order_Detail od inner join product p \n" +
"                on p.productID = od.productID left join SubCategory sc on p.SubCategoryID = sc.SubCategoryID right join category c on sc.CategoryID = c.CategoryID\n" +
"                GROUP BY c.categoryID, c.categoryName) as t  \n" +
"                where t.categoryID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, ID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new CategoryOrder(rs.getInt("categoryID"),
                        rs.getString("categoryName"),
                        rs.getInt("totalCategoryOrder"));
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }
    public static void main(String[] args) {
        OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
        CategoryOrder co = orderDetailDAO.getTotalCategoryOrderByID(2);
        System.out.println(co);
    }
}
