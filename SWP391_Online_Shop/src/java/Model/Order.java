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
public class Order {

    private int id;
    private int accountId;
    private double totalPrice;
    private String note;
    private int status;
    private String createdDate;
    private int shippingId;
    private Account acc;
    private Shipping s;
    private OrderStatus os;

    public Order() {
    }

    public Order(int id, int accountId, double totalPrice, int status, String note, String createdDate, int shippingId) {
        this.id = id;
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.status = status;
        this.note = note;
        this.createdDate = createdDate;
        this.shippingId = shippingId;
    }

    public Order(int id, int accountId, double totalPrice, int status, String note, String createdDate, int shippingId, Account acc, Shipping s) {
        this.id = id;
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.status = status;
        this.note = note;
        this.createdDate = createdDate;
        this.shippingId = shippingId;
        this.acc = acc;
        this.s = s;
    }

    public Order(int id, int accountId, double totalPrice, String note, int status, String createdDate, int shippingId, Account acc, OrderStatus os) {
        this.id = id;
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.note = note;
        this.status = status;
        this.createdDate = createdDate;
        this.shippingId = shippingId;
        this.acc = acc;
        this.os = os;
    }

    public Order(String createdDate) {
        this.createdDate = createdDate;
    }

    public OrderStatus getOs() {
        return os;
    }

    public void setOs(OrderStatus os) {
        this.os = os;
    }

    public Order(int id, int accountId, double totalPrice, int status, String note, String createdDate, int shippingId, Account acc, OrderStatus os) {
        this.id = id;
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.status = status;
        this.note = note;
        this.createdDate = createdDate;
        this.shippingId = shippingId;
        this.acc = acc;
        this.os = os;
    }

    public Shipping getS() {
        return s;
    }

    public void setS(Shipping s) {
        this.s = s;
    }

    public Order(int id, int accountId, double totalPrice, String note, int status, String createdDate, int shippingId, Account acc) {
        this.id = id;
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.status = status;
        this.note = note;
        this.createdDate = createdDate;
        this.shippingId = shippingId;
        this.acc = acc;
    }

    public Account getAcc() {
        return acc;
    }

    public void setAcc(Account acc) {
        this.acc = acc;
    }

    public Order(int accountId, double totalPrice, int status, String note, int shippingId) {
        this.accountId = accountId;
        this.totalPrice = totalPrice;
        this.status = status;
        this.note = note;
        this.shippingId = shippingId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
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

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public int getShippingId() {
        return shippingId;
    }

    public void setShippingId(int shippingId) {
        this.shippingId = shippingId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
