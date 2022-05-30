/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext.DBContext {

    public List<Product> getAll() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(int productId) {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID where Product.ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public List<Product> sortProductByNameAsc() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID order by Product.ProductName";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> sortProductByNameDesc() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID order by Product.ProductName desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> sortProductByPriceAsc() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID order by Product.OriginalPrice";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> sortProductByPriceDesc() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID order by Product.OriginalPrice desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public static void main(String[] args) {
        ProductDAO pdao = new ProductDAO();
        List<Product> list = pdao.sortProductByNameAsc();
        for (Product o : list) {
            System.out.println(o);
        }
    }

}
