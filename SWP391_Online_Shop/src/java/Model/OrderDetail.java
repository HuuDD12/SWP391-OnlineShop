/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class OrderDetail {
    private int id;
    private int orderId;
    private String productName;
    private double productPrice;
    private int quantity;
    private Product p;
    
    public OrderDetail() {
    }

    public OrderDetail(Product p) {
        this.p = p;
    }
    
    public OrderDetail(int id, int orderId, String productName, double productPrice, int quantity, Product p) {
        this.id = id;
        this.orderId = orderId;
        this.productName = productName;
        this.productPrice = productPrice;
        this.quantity = quantity;
        this.p = p;
    }

    public OrderDetail(int quantity, Product p) {
        this.quantity = quantity;
        this.p = p;
    }

    public OrderDetail(int orderId, double productPrice, int quantity, Product p) {
        this.orderId = orderId;
        this.productPrice = productPrice;
        this.quantity = quantity;
        this.p = p;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }
    
    

}
