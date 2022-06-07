package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author asus
 */
@Builder
@ToString

public class Order {
    private int id;
    private String date;
    private int uid;
    private double totalMoney;
    private User u;
    public Order() {
    }

    public Order(int id, String date, int uid, double totalMoney, User u) {
        this.id = id;
        this.date = date;
        this.uid = uid;
        this.totalMoney = totalMoney;
        this.u = u;
    }

    public Order(int id, String date, int uid, double totalMoney) {
        this.id = id;
        this.date = date;
        this.uid = uid;
        this.totalMoney = totalMoney;
    }

    public Order(int uid, double totalMoney) {
        this.uid = uid;
        this.totalMoney = totalMoney;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public User getU() {
        return u;
    }

    public void setU(User u) {
        this.u = u;
    }
     
    
    
}
