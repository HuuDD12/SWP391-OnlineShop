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
public class OrderDetail {
    private int  oid,pid;
    private int quantity;
    private double price;
    private String fname,lname,phone,address;
    Order o;
    Product p;
    public OrderDetail() {
    }

    public OrderDetail(int oid, int pid, int quantity, double price, String fname, String lname, String phone, String address, Order o, Product p) {
        this.oid = oid;
        this.pid = pid;
        this.quantity = quantity;
        this.price = price;
        this.fname = fname;
        this.lname = lname;
        this.phone = phone;
        this.address = address;
        this.o = o;
        this.p = p;
    }

    public OrderDetail(String fname, String lname, String phone, String address) {
        this.fname = fname;
        this.lname = lname;
        this.phone = phone;
        this.address = address;
    }
    
    
    
    
    public OrderDetail(int quantity, Product p) {
        this.quantity = quantity;
        this.p = p;
    }

   

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Order getO() {
        return o;
    }

    public void setO(Order o) {
        this.o = o;
    }

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    
   

   

  

    
}
