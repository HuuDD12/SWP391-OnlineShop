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
public class Product {
    private int productID;
    private String productName;
    private String description;
    private double originalPrice;
    private double salePrice;
    private double salePercent;
    private int subID;
    private int amount;
    private int brandID;
    private int sell_id;
    private String url;
    
    public Product() {
    }

    public Product(int productID, String productName, String description, double originalPrice, double salePrice, int subID, int amount, int brandID, int sell_id, String url) {
        this.productID = productID;
        this.productName = productName;
        this.description = description;
        this.originalPrice = originalPrice;
        this.salePrice = salePrice;
        this.subID = subID;
        this.amount = amount;
        this.brandID = brandID;
        this.sell_id = sell_id;
        this.url = url;
    }

    public Product(int productID, String productName, String description, double originalPrice, double salePrice, double salePercent, int subID, int amount, int brandID, int sell_id, String url) {
        this.productID = productID;
        this.productName = productName;
        this.description = description;
        this.originalPrice = originalPrice;
        this.salePrice = salePrice;
        this.salePercent = salePercent;
        this.subID = subID;
        this.amount = amount;
        this.brandID = brandID;
        this.sell_id = sell_id;
        this.url = url;
    }

    public double getSalePercent() {
        return salePercent;
    }

    public void setSalePercent(double salePercent) {
        this.salePercent = salePercent;
    }
    
    public Product(String productName) {
        this.productName = productName;
    }

    public Product(String productName, String url) {
        this.productName = productName;
        this.url = url;
    }
    
    
    
   
    

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(double originalPrice) {
        this.originalPrice = originalPrice;
    }

    public double getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(double salePrice) {
        this.salePrice = salePrice;
    }

    public int getSubID() {
        return subID;
    }

    public void setSubID(int subID) {
        this.subID = subID;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    public int getSell_id() {
        return sell_id;
    }

    public void setSell_id(int sell_id) {
        this.sell_id = sell_id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", description=" + description + ", originalPrice=" + originalPrice + ", salePrice=" + salePrice + ", subID=" + subID + ", amount=" + amount + ", brandID=" + brandID + ", sell_id=" + sell_id + ", url=" + url + '}';
    }

    
    
    
    
    
    
    
}
