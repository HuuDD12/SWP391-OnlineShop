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
public class ProductDAO extends DBcontext.DBContext {

    public List<Product> getAll() {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
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
            System.out.println(e);
        }
        return null;
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

    public List<Product> sortProductByNameAsc() {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  order by t.ProductName";
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
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t  order by t.ProductName desc";
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
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t order by t.OriginalPrice";
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
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t order by t.OriginalPrice desc";
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
            ps.setInt(1, (index - 1) * 3);
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
        } catch (Exception e) {

        }
        return 0;
    }

    public List<Product> searchByPrice(double min, double max) {
        String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
                + "MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n"
                + "MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n"
                + "MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n"
                + "MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n"
                + "dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t where t.OriginalPrice between ? and ?";
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

    public static void main(String[] args) {
        ProductDAO pdao = new ProductDAO();
        List<Product> list = pdao.searchByName("bo");
        for (Product product : list) {
            System.out.println(product);
        }
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

    public List<Product> getTop3ListProByCat(String sid, int pid) {
        String sql = "SELECT top 3 * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n"
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
       String sql = "SELECT * FROM (SELECT p.ProductID,MIN(p.ProductName) AS ProductName,MIN(p.Description) AS Description,\n" +
"                MIN(p.OriginalPrice) AS OriginalPrice,MIN(p.SalePrice) AS SalePrice,\n" +
"                MIN(p.SubCategoryID) AS SubCategoryID,MIN(p.Amount) AS Amount,\n" +
"                MIN(p.BrandID) AS BrandID,MIN(p.sell_id) AS sell_id,\n" +
"                MIN(ProI.ProductImgURL) AS ProductImgURL FROM \n" +
"                dbo.Product p JOIN  dbo.ProductImg ProI ON ProI.ProductID = p.ProductID GROUP BY p.ProductID ) t where t.sell_id = (select UserID from Users where Username = ?)";
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
}
