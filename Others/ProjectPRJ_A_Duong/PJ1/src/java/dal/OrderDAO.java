package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.CartItem;
import model.Item;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.User;

/**
 *
 * @author asus
 */
public class OrderDAO extends DBContext{

    public int createReturnId(Order order) {
        String sql = "INSERT INTO [dbo].[Order]\n"
                + "           ([account_id]\n"
                + "           ,[totalmoney])\n"
                + "     VALUES\n"
                + "           (?,?)";
        try {            
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getUid());
            ps.setDouble(2, order.getTotalMoney());
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys(); //lấy key tự tăng
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            
        }
        return 0;
    }


       public int countProductByAccountID(int account_id) {
       
            String query = "SELECT COUNT(*) FROM [Order] WHERE account_id = ?";
            try {
               PreparedStatement ps = connection.prepareStatement(query);
                ps.setInt(1, account_id);
               ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    return rs.getInt(1);
                }
            } catch (Exception e) {
            }
        
        return 0;
    }
        public void addOrder(User u, CartItem cart,String fname,String lname,String phone,String address) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        try{
            //add vào bảng Order
            String sql="insert into [order] values(?,?,?)";
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, date);
            st.setInt(2, u.getId_user());
            st.setDouble(3, cart.getToTalMoney());
            st.executeUpdate();
            
            //lấy ra id của Order vừa add
            String sql1="select top 1 id from [Order] order by id desc";
            PreparedStatement st1=connection.prepareStatement(sql1);
            ResultSet rs=st1.executeQuery();
            
            //add vào bảng OrderLine
            if(rs.next()){
                int oid=rs.getInt(1);
               
                for(Item i:cart.getItems()){
                String sql2="insert into [orderline] values(?,?,?,?,?,?,?,?)";
                PreparedStatement st2=connection.prepareStatement(sql2);
                st2.setInt(1, oid);
                st2.setInt(2, i.getProduct().getId_pro());
                st2.setInt(3, i.getQuantity());
                st2.setDouble(4, i.getPrice());
                st2.setString(5, fname);
                 st2.setString(6, lname);
                 st2.setString(7, phone);
                  st2.setString(8, address);
                st2.executeUpdate();
            }
            }
            //update so luong trong bang Product sau khi ban
            String sql3 = "update Product set quantity = quantity - ? "
                        + "where id_pro = ?";
            PreparedStatement st3=connection.prepareStatement(sql3);
            for(Item i:cart.getItems()){
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getId_pro());
                st3.executeUpdate();
            }
            
        }catch(SQLException e){
            System.out.println(e);
        }
    }
   public int countOrder() {
        String query = "select COUNT (*) from [order] ";
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
   
       public List<Order> getBillByDay(){
        List<Order> list = new ArrayList<>();
        String sql = "select * from [Order] b "
                + "inner join [user] u on b.account_id = u.id_user where created_date = cast(getdate() as Date)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
              ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt("id_user"),rs.getString("username"),rs.getString("phone"),rs.getString("address"));              
                list.add(new Order(rs.getInt("id"), rs.getString("created_date"), rs.getInt("account_id"), rs.getDouble("totalMoney"),u));
            }
        } catch (Exception e) {
        }
        return list;
    }
       public List<Order> getBillInfo(){
        List<Order> list = new ArrayList<>();
        String sql = "select * from [Order] b "
                + "inner join [user] u on b.account_id = u.id_user";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
              ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt("id_user"),rs.getString("username"),rs.getString("phone"),rs.getString("address"));              
                list.add(new Order(rs.getInt("id"), rs.getString("created_date"), rs.getInt("account_id"), rs.getDouble("totalMoney"),u));
            }
        } catch (Exception e) {
        }
        return list;
    }
       public static void main(String[] args) {
        OrderDAO odao = new OrderDAO();
        List<Order> od = odao.getBillByDay();
           for (Order o : od) {
               System.out.println(o);
           }
    }
}
