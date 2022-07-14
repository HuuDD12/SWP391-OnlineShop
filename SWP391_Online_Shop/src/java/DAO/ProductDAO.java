/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Cart;
import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBcontext.DBContext {

    public List<Product> getAll() {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "				MIN(p.Sale) as SalePercent,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "                dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t ";
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
                        rs.getDouble("SalePercent"),
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

    public List<Product> getTop3Product() {
        String sql = "SELECT top 3 * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t ";
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

    public Product getMaxPrice() {
        String sql = "SELECT top 1 * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "                dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t order by t.OriginalPrice desc ";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
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

    public Product getProductById(int productId) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  where t.ProductID = ?";
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
            System.out.println("Can't not be negative");
        }
        return null;
    }

    public List<Product> pagingProductBy6(int indexPage) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  "
                + "order by t.productID OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (indexPage - 1) * 6);
            //ps.setInt(2, entry);
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public List<Product> getTop5Product() {
        String sql = "select top 5 p.*,pr.ProductImgURL from Product p join ProductImg pr\n"
                + "on p.ProductID = pr.ProductID\n"
                + "order by p.ProductID desc";
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

    public List<Product> searchProductBySubCate(int subcate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  where t.SubCategoryID = ?";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, subcate);
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

    public List<Product> sortProductByNameAsc(int indexPage) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  order by t.ProductName \n"
                + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (indexPage - 1) * 6);
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

    public List<Product> sortProductByNameAscAndbrandcate(int indexPage, int brand, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.SubCategory c ON p.SubCategoryID = c.SubCategoryID\n"
                + "				JOIN dbo.Category ca on ca.CategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	AND c.CategoryID = ?		\n"
                + "				GROUP BY p.ProductID ) t  order by t.ProductName \n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, cate);
            ps.setInt(3, (indexPage - 1) * 6);
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

    public List<Product> sortProductByNameAscAndbrand(int indexPage, int brand) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	\n"
                + "				GROUP BY p.ProductID ) t  order by t.ProductName \n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, (indexPage - 1) * 6);
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

    public List<Product> sortProductByNameAscAndcate(int indexPage, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.SubCategory c ON p.SubCategoryID = c.SubCategoryID\n"
                + "				JOIN dbo.Category ca on ca.CategoryID = c.CategoryID	\n"
                + "				WHERE c.CategoryID = ?		\n"
                + "				GROUP BY p.ProductID ) t  order by t.ProductName \n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cate);
            ps.setInt(2, (indexPage - 1) * 6);
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

    public List<Product> sortProductByNameDesc(int indexPage) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  order by t.ProductName desc \n"
                + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (indexPage - 1) * 6);
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

    public List<Product> sortProductByNameDescAndbrandcate(int indexPage, int brand, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.SubCategory c ON p.SubCategoryID = c.SubCategoryID\n"
                + "				JOIN dbo.Category ca on ca.CategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	AND c.CategoryID = ?		\n"
                + "				GROUP BY p.ProductID ) t  order by t.ProductName desc \n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, cate);
            ps.setInt(3, (indexPage - 1) * 6);
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

    public List<Product> sortProductByNameDescAndbrand(int indexPage, int brand) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	\n"
                + "				GROUP BY p.ProductID ) t  order by t.ProductName desc \n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, (indexPage - 1) * 6);
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

    public List<Product> sortProductByNameDescAndcate(int indexPage, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.SubCategory c ON p.SubCategoryID = c.SubCategoryID\n"
                + "				JOIN dbo.Category ca on ca.CategoryID = c.CategoryID\n"
                + "				WHERE c.CategoryID = ?	\n"
                + "				GROUP BY p.ProductID ) t  order by t.ProductName desc \n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cate);
            ps.setInt(2, (indexPage - 1) * 6);
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

    public List<Product> sortProductByPriceAsc(int indexPage) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t order by t.SalePrice \n"
                + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (indexPage - 1) * 6);
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

    public List<Product> sortProductByPriceAscbrandcate(int indexPage, int brand, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	AND c.CategoryID = ?		\n"
                + "				GROUP BY p.ProductID ) t  order by t.SalePrice \n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, cate);
            ps.setInt(3, (indexPage - 1) * 6);
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

    public List<Product> sortProductByPriceAscbrand(int indexPage, int brand) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	\n"
                + "				GROUP BY p.ProductID ) t  order by t.SalePrice  \n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, (indexPage - 1) * 6);
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

    public List<Product> sortProductByPriceAsccate(int indexPage, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE c.CategoryID = ?		\n"
                + "				GROUP BY p.ProductID ) t  order by t.SalePrice \n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cate);
            ps.setInt(2, (indexPage - 1) * 6);
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

    public List<Product> sortProductByPriceDesc(int indexPage) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t order by t.SalePrice desc \n"
                + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (indexPage - 1) * 6);
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

    public List<Product> sortProductByPriceDescbrandcate(int indexPage, int brand, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	AND c.CategoryID = ?		\n"
                + "				GROUP BY p.ProductID ) t  order by t.SalePrice desc\n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, cate);
            ps.setInt(3, (indexPage - 1) * 6);
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

    public List<Product> sortProductByPriceDescbrand(int indexPage, int brand) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	\n"
                + "				GROUP BY p.ProductID ) t  order by t.SalePrice desc\n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, (indexPage - 1) * 6);
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

    public List<Product> sortProductByPriceDesccate(int indexPage, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE c.CategoryID = ?		\n"
                + "				GROUP BY p.ProductID ) t  order by t.SalePrice desc\n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cate);
            ps.setInt(2, (indexPage - 1) * 6);
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

    public List<Product> pagingProduct(int index) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  "
                + "order by t.productID OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 6);
            //ps.setInt(2, entry);
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public List<Product> pagingProductByBrand(int index, int brand) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?			\n"
                + "				GROUP BY p.ProductID ) t  order by t.ProductName desc\n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, (index - 1) * 6);
            //ps.setInt(2, entry);
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public List<Product> pagingProductByCateandbrand(int index, int brand, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	AND c.CategoryID = ?		\n"
                + "				GROUP BY p.ProductID ) t  order by t.ProductName desc\n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, brand);
            ps.setInt(2, cate);
            ps.setInt(3, (index - 1) * 6);
            //ps.setInt(2, entry);
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public List<Product> pagingProductByCate(int index, int cate) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.SubCategory c ON p.SubCategoryID = c.SubCategoryID\n"
                + "				JOIN dbo.Category ca on ca.CategoryID = c.CategoryID	\n"
                + "				WHERE  c.CategoryID = ?		\n"
                + "				GROUP BY p.ProductID ) t  order by t.ProductName desc\n"
                + "				OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cate);
            ps.setInt(2, (index - 1) * 6);
            //ps.setInt(2, entry);
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public int count() {
        String query = "SELECT count(*) FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t ";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {

        }
        return 0;
    }

    public int countBrandandSort(int brand) {
        String query = "SELECT count(*) FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.Category c ON p.SubCategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?			\n"
                + "				GROUP BY p.ProductID ) t";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, brand);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {

        }
        return 0;
    }

    public int countCategoryandSort(int cate) {
        String query = "SELECT count(*) FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.SubCategory c ON p.SubCategoryID = c.SubCategoryID\n"
                + "				JOIN dbo.Category ca on ca.CategoryID = c.CategoryID	\n"
                + "				WHERE c.CategoryID = ?			\n"
                + "				GROUP BY p.ProductID ) t";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, cate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {

        }
        return 0;
    }

    public int countBrandandCategoryandSort(int brand, int cate) {
        String query = "SELECT count(*) FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL ,MIN(c.CategoryID) AS CategoryID\n"
                + "				FROM dbo.Product p \n"
                + "				JOIN dbo.ProductImg ProI ON ProI.ProductID = p.ProductID\n"
                + "				JOIN dbo.SubCategory c ON p.SubCategoryID = c.SubCategoryID\n"
                + "				JOIN dbo.Category ca on ca.CategoryID = c.CategoryID	\n"
                + "				WHERE p.BrandID = ?	AND c.CategoryID = ?			\n"
                + "				GROUP BY p.ProductID ) t";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, brand);
            ps.setInt(2, cate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {

        }
        return 0;
    }

    public List<Product> searchByPrice(double min, double max) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t where t.SalePrice between ? and ?";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setDouble(1, min);
            ps.setDouble(2, max);
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductByBrand(String brandId) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  where t.BrandID = ?";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, brandId);
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> searchByName(String txtSearch) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t where t.ProductName like ? ";

        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> pagingProductSearchByName(int index, String txtSearch) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "                dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  where t.ProductName like ?\n"
                + "                order by t.productID OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, (index - 1) * 6);
            ps.setString(1, "%" + txtSearch + "%");
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public int countSearchByName(String name) {
        String query = "SELECT count(*) FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t where t.ProductName like ? ";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<Product> getTop3ListProByCat(String sid, int pid) {
        String sql = "SELECT top 4 * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "                dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t where t.SubCategoryID = ? and t.ProductID != ?";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, sid);
            ps.setInt(2, pid);
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
                        rs.getString("ProductImgURL"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int CountProductLow() {
        int count = 0;
        String sql = "SELECT COUNT(*) as 'count'\n"
                + "  FROM product where amount < 90 ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return count;
    }

    public List<Product> getProductBySellerName(String username) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "                MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "                dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t where t.sell_id = (select UserID from Users where Username = ?)";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
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

    public void deleteProduct(String cid) {
        String query = "delete from ProductImg where ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, cid);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void updateSale(int id, double sale) {
        String query = "UPDATE dbo.Product SET SalePrice = (OriginalPrice * (100 - ?)) /100.0 , Sale = ? WHERE ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setDouble(1, sale);
            ps.setDouble(2, sale);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

        }
    }

    public void UpdateProductInfo(Product p) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [ProductName] = ?\n"
                + "      ,[Description] = ?\n"
                + "      ,[OriginalPrice] = ?\n"
                + "      ,[SalePrice] = ?\n"
                + "      ,[SubCategoryID] = ?\n"
                + "      ,[Amount] = ?\n"
                + "      ,[BrandID] = ?\n"
                + " WHERE ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getProductName());
            ps.setString(2, p.getDescription());
            ps.setDouble(3, p.getOriginalPrice());
            ps.setDouble(4, p.getSalePrice());
            ps.setInt(5, p.getSubID());
            ps.setInt(6, p.getAmount());
            ps.setInt(7, p.getBrandID());
            ps.setInt(8, p.getProductID());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void UpdateProductImgInfo(Product p) {
        String sql = "UPDATE [dbo].[ProductImg]\n"
                + "   SET [ProductImgURL] = ?\n"
                + " WHERE ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getUrl());
            ps.setInt(2, p.getProductID());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void InsertProductInfo(Product p) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([ProductName]\n"
                + "           ,[Description]\n"
                + "           ,[OriginalPrice]\n"
                + "           ,[SalePrice]\n"
                + "           ,[SubCategoryID]\n"
                + "           ,[Amount]\n"
                + "           ,[BrandID])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getProductName());
            ps.setString(2, p.getDescription());
            ps.setDouble(3, p.getOriginalPrice());
            ps.setDouble(4, p.getSalePrice());
            ps.setInt(5, p.getSubID());
            ps.setInt(6, p.getAmount());
            ps.setInt(7, p.getBrandID());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void InsertProductImgInfo(Product p) {
        String sql = "INSERT INTO [dbo].[ProductImg]\n"
                + "           ([ProductImgURL])\n"
                + "     VALUES\n"
                + "           (?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getUrl());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void deleteProductImg(String cid) {
        String query = "delete from ProductImg where ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, cid);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void updateQuantity(Map<Integer, Cart> carts, int ProductID) {
        String query = "update Product set Amount = Amount - ? where ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setInt(1, cart.getQuantity());
                ps.setInt(2, cart.getProduct().getProductID());
                ps.executeUpdate();
            }
            

        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
    }
}
