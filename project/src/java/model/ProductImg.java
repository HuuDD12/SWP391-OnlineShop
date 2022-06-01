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
public class ProductImg {
    private int productID;
    private String productImg;
    private Product product;

    public ProductImg() {
    }

    public ProductImg(int productID, String productImg, Product product) {
        this.productID = productID;
        this.productImg = productImg;
        this.product = product;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductImg() {
        return productImg;
    }

    public void setProductImg(String productImg) {
        this.productImg = productImg;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public String toString() {
        return "ProductImg{" + "productID=" + productID + ", productImg=" + productImg + ", product=" + product + '}';
    }
    
}
