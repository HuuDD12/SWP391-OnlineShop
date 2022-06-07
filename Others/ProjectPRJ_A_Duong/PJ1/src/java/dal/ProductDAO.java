package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author asus
 */
public class ProductDAO extends DBContext {

    public List<Product> getAll() {
        String sql = "select * from product order by id_pro desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //get list of product from category id
    public List<Product> getListProByCat(String id) {
        String sql = "select * from product where id_cat='" + id + "'";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getTop3ListProByCat(String cid, int pid) {
        String sql = "select top 3 * from product where id_cat= ? and id_pro != ?  ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cid);
            ps.setInt(2, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    //get newest product
    public Product getLast() {
        String sql = "select top 1 *from product\n"
                + "order by id_pro desc";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                return p;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    //get product byid
    public List<Product> getLast3Product() {
        List<Product> list = new ArrayList<>();
        String sql = "select top 3 *from product\n"
                + "order by id_pro asc";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public Product getProductById(int id) {
        String sql = "select * from product where id_pro=?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                return p;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;

    }

    public List<Product> searchByName(String txtSearch) {
        String sql = "select*from product where name_pro like ? ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> searchByPrice(double min, double max) {
        String sql = "select*from product where price between ? and ? order by price";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setDouble(1, min);
            ps.setDouble(2, max);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getListProBySellID(int id) {
        String sql = "select * from product where sell_ID=?";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product(
                        rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void delete(int id) {
        String sql = "delete from product where id_pro = ?\n"
                + "delete from OrderLine where pid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    //check exist id

    public boolean existedPro(int id) {
        String sql = "select * from product where id_pro=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("e");
        }
        return false;
    }

    //get page product
    public List<Product> pagingProduct(int index) {
        String sql = "select * from product order by id_pro OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public List<Product> pagingProductByName(int index, String name) {
        String sql = "select * from product where name_pro like ? order by id_pro OFFSET ? ROWS FETCH NEXT 2 ROWS ONLY ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, (index - 1) * 2);
            ps.setString(1, "%" + name + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    //get total page
    public int count() {
        String query = "select COUNT (*) from product ";
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

    public int countByCid(String cid) {
        String query = "select COUNT (*) from product where id_cat = ? ";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public int countProductBySeller(int SellerID) {

        String query = "SELECT COUNT(*) FROM Product WHERE sell_ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, SellerID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }

        return 0;
    }

    public List<Product> pagingManagerProduct(int index, int SellerID) {
        List<Product> list = new ArrayList<>();
        if (SellerID == 0) {
            list = pagingProduct(index);
        } else {
            String query = "SELECT * FROM Product WHERE sell_ID = ? ORDER BY id_pro OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
            try {
                PreparedStatement ps = connection.prepareStatement(query);
                ps.setInt(1, SellerID);
                ps.setInt(2, (index - 1) * 6);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt("id_pro"),
                            rs.getInt("id_cat"),
                            rs.getString("name_pro"),
                            rs.getString("images"),
                            rs.getInt("quantity"),
                            rs.getDouble("price"),
                            rs.getString("supplier"),
                            rs.getString("infor"),
                            rs.getInt("sell_ID")));
                }
            } catch (Exception e) {
            }
        }
        return list;
    }

    public int countBySearchName(String name) {
        String query = "select COUNT (*) from product where name_pro like ?";
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

    public int countByPrice(double min, double max) {
        String query = "select COUNT (*) from product where price between ? and ? ";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ps.setDouble(1, min);
            ps.setDouble(2, max);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<Product> pagingProductByPrice(int index, double min, double max) {
        String sql = "select * from product where price between ? and ? order by price OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(3, (index - 1) * 6);
            ps.setDouble(1, min);
            ps.setDouble(2, max);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> pagingProductBySortLow(int index) {
        String sql = "select * from product order by price OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> pagingProductBySortHigh(int index) {
        String sql = "select * from product order by price desc OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> pagingProductByCat(int index, String cid) {
        String sql = "select * from product where id_cat = ? order by id_pro OFFSET ? ROWS FETCH NEXT 5 ROWS ONLY ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, (index - 1) * 5);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
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
                + "  FROM product where quantity < 5 ";
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

    //add new product
    public void addPro(
            int id_pro, int id_cat, String name_pro, String images, int quantity, double price, String supplier, String infor, int sell_id) {
        String sql = "INSERT [dbo].[product] ([id_pro], [id_cat], [name_pro], [images], [quantity], [price], [supplier], [infor],[sell_ID]) VALUES(?,?,?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, id_pro);
            ps.setInt(2, id_cat);
            ps.setString(3, name_pro);
            ps.setString(4, images);
            ps.setInt(5, quantity);
            ps.setDouble(6, price);
            ps.setString(7, supplier);
            ps.setString(8, infor);
            ps.setInt(9, sell_id);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int update(Product d) {
        String sql = "update product set id_cat=?"
                + ",name_pro=?,images=?,quantity=?,price=?,supplier=?,infor=?,sell_ID=? where id_pro=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(9, d.getId_pro());
            st.setInt(1, d.getId_cat());

            st.setString(2, d.getName_pro());
            st.setString(3, d.getImages());
            st.setInt(4, d.getQuantity());
            st.setDouble(5, d.getPrice());
            st.setString(6, d.getSupplier());
            st.setString(7, d.getInfor());
            st.setInt(8, d.getSell_ID());
            return st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

  
    public static void main(String[] args) {
        ProductDAO d = new ProductDAO();
        List<Product> list = d.pagingProductBySortLow(1);
        for (Product o : list) {
            System.out.println(o);
        }

    }

    public List<Product> getAllProductBySortLow() {
        String sql = "select * from product order by price";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
     public List<Product> getAllProductBySortHigh() {
        String sql = "select * from product order by price desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("id_pro"),
                        rs.getInt("id_cat"),
                        rs.getString("name_pro"),
                        rs.getString("images"),
                        rs.getInt("quantity"),
                        rs.getDouble("price"),
                        rs.getString("supplier"),
                        rs.getString("infor"),
                        rs.getInt("sell_ID"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
