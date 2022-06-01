/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Brand;
import model.Category;
import model.Order_Status;
import model.Orders;
import model.Product;
import model.ProductImg;
import model.Role;
import model.SubCategory;
import model.User_info;
import model.Users;

/**
 *
 * @author dell
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    /*Product*/
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select p.*,s.SubCategoryName,c.*,b.BrandName from Product p join SubCategory s \n"
                + "on p.SubCategoryID = s.SubCategoryID\n"
                + "join Brand b on b.BrandID = p.BrandID\n"
                + "join Category c on c.CategoryID = s.CategoryID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5),
                        new SubCategory(rs.getInt(6), rs.getString(9),
                                new Category(rs.getInt(10), rs.getString(11))), rs.getInt(7), new Brand(rs.getInt(8), rs.getString(12))));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public ProductImg getProductByID(String id) {
        String query = "select i.*,p.*,s.SubCategoryName,c.*,b.BrandName from Product p join SubCategory s \n"
                + "on p.SubCategoryID = s.SubCategoryID\n"
                + "join Brand b on b.BrandID = p.BrandID\n"
                + "join Category c on c.CategoryID = s.CategoryID\n"
                + "join ProductImg i on i.ProductID = p.ProductID\n"
                + "where p.ProductID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return (new ProductImg(rs.getInt(1), rs.getString(2), new Product(rs.getInt(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7),
                        new SubCategory(rs.getInt(8), rs.getString(11),
                                new Category(rs.getInt(12), rs.getString(13))), rs.getInt(9), new Brand(rs.getInt(10), rs.getString(14)))));
            }
        } catch (Exception e) {

        }
        return null;
    }

    /*ProductImg*/
    public List<ProductImg> getAllProductImg() {
        List<ProductImg> list = new ArrayList<>();
        String query = "select i.*,p.*,s.SubCategoryName,c.*,b.BrandName from Product p join SubCategory s \n"
                + "on p.SubCategoryID = s.SubCategoryID\n"
                + "join Brand b on b.BrandID = p.BrandID\n"
                + "join Category c on c.CategoryID = s.CategoryID\n"
                + "join ProductImg i on i.ProductID = p.ProductID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductImg(rs.getInt(1), rs.getString(2), new Product(rs.getInt(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7),
                        new SubCategory(rs.getInt(8), rs.getString(11),
                                new Category(rs.getInt(12), rs.getString(13))), rs.getInt(9), new Brand(rs.getInt(10), rs.getString(14)))));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public List<ProductImg> getAllProductImgSearchByCateName(String txtSearch) {
        List<ProductImg> list = new ArrayList<>();
        String query = "select * from Category c join SubCategory s\n"
                + "on c.CategoryID = s.CategoryID\n"
                + "join Product p \n"
                + "on p.SubCategoryID = s.SubCategoryID\n"
                + "join Brand b on b.BrandID = p.BrandID\n"
                + "join ProductImg pr on pr.ProductID = p.ProductID\n"
                + "where p.ProductName like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, '%' + txtSearch + '%');
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ProductImg(rs.getInt(1), rs.getString(2), new Product(rs.getInt(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7),
                        new SubCategory(rs.getInt(8), rs.getString(11),
                                new Category(rs.getInt(12), rs.getString(13))), rs.getInt(9), new Brand(rs.getInt(10), rs.getString(14)))));
            }

        } catch (Exception e) {
        }
        return list;
    }

    /*SubCategory*/
    public List<SubCategory> getAllSubCategory() {
        List<SubCategory> list = new ArrayList<>();
        String query = "select c.*,s.SubCategoryID,s.SubCategoryName from Category c join SubCategory s\n"
                + "on s.CategoryID = c.CategoryID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new SubCategory(rs.getInt(3), rs.getString(4), new Category(rs.getInt(1), rs.getString(2))));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public SubCategory getSubCategoryByID(String id) {
        String query = "select c.*,s.SubCategoryID,s.SubCategoryName from Category c join SubCategory s\n"
                + "on s.CategoryID = c.CategoryID\n"
                + "where c.CategoryID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new SubCategory(rs.getInt(3), rs.getString(4), new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {

        }
        return null;
    }

    /*Brand*/
    public List<Brand> getAllBrand() {
        List<Brand> list = new ArrayList<>();
        String query = "select * from Brand";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Brand(rs.getInt(1), rs.getString(2)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    /*Users*/
    public List<Users> getAllUsers() {
        List<Users> list = new ArrayList<>();
        String query = "select * from Users u join Role r\n"
                + "on u.RoleID = r.RoleID\n"
                + "where u.RoleID = 3";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        new Role(rs.getInt(5), rs.getString(7)), rs.getInt(6)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    /*Order*/
    public List<Orders> getAllProductByUsers() {
        List<Orders> list = new ArrayList<>();
        String query = "select o.*,os.Name,u.Username,u.Password,u.email,r.*,u.isBlock from Order_Status os join Orders o\n"
                + "on os.ID = o.Status\n"
                + "join Users u \n"
                + "on u.UserID = o.UserID\n"
                + "join Role r\n"
                + "on r.RoleID = u.RoleID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Orders(rs.getInt(1),
                        new Users(rs.getInt(2), rs.getString(8), rs.getString(9), rs.getString(10), new Role(rs.getInt(11), rs.getString(12)), rs.getInt(13)),
                        rs.getDouble(3), rs.getString(4), new Order_Status(rs.getInt(5), rs.getString(7)), rs.getString(6)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    /*User_info*/
    public User_info getAccountDetail(String cid) {
        String query = "select ui.*,u.Username,u.Password,u.email,u.isBlock,r.* from User_info ui join Users u\n"
                + "on ui.UserID = u.UserID\n"
                + "join Role r on r.RoleID = u.RoleID\n"
                + "where u.UserID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User_info(rs.getInt(1),
                        new Users(rs.getInt(2), rs.getString(7), rs.getString(8), rs.getString(9), new Role(rs.getInt(11), rs.getString(12)), rs.getInt(10)),
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public void UpdateInfor(String firstName, String secondName, String phoneNumber, String address, String id) {
        String query = "UPDATE [dbo].[User_info]\n"
                + "   set \n"
                + "      [Firstname] = ?\n"
                + "      ,[Lastname] = ?\n"
                + "      ,[Address] = ?\n"
                + "      ,[PhoneNum] =?\n"
                + " WHERE UserID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, firstName);
            ps.setString(2, secondName);
            ps.setString(3, address);
            ps.setString(4, phoneNumber);
            ps.setString(5, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public Users login(String username, String pass) {
        String query = "select u.*,r.RoleName from Users u join Role r\n"
                + "on u.RoleID = r.RoleID\n"
                + " where Username=? and [Password]=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), new Role(rs.getInt(5), rs.getString(7)), rs.getInt(6));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Orders> list = dao.getAllProductByUsers();
        for (Orders o : list) {
            System.out.println(o);
        }
    }

}
