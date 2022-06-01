/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author dell
 */
public class Orders {
    private int order_id;
    private Users users;
    private double totalPrice;
    private String note;
    private Order_Status order_status;
    private String date;

    public Orders() {
    }

    public Orders(int order_id, Users users, double totalPrice, String note, Order_Status order_status, String date) {
        this.order_id = order_id;
        this.users = users;
        this.totalPrice = totalPrice;
        this.note = note;
        this.order_status = order_status;
        this.date = date;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Order_Status getOrder_status() {
        return order_status;
    }

    public void setOrder_status(Order_Status order_status) {
        this.order_status = order_status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Oders{" + "order_id=" + order_id + ", users=" + users + ", totalPrice=" + totalPrice + ", note=" + note + ", order_status=" + order_status + ", date=" + date + '}';
    }
    
    
}
