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
public class CategoryOrder {
    private int categoryID;
    private String categoryName;
    private int totalCategoryOrder;

    public CategoryOrder() {
    }

    public CategoryOrder(int categoryID, String categoryName, int totalCategoryOrder) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.totalCategoryOrder = totalCategoryOrder;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getTotalCategoryOrder() {
        return totalCategoryOrder;
    }

    public void setTotalCategoryOrder(int totalCategoryOrder) {
        this.totalCategoryOrder = totalCategoryOrder;
    }

    @Override
    public String toString() {
        return "CategoryOrder{" + "categoryID=" + categoryID + ", categoryName=" + categoryName + ", totalCategoryOrder=" + totalCategoryOrder + '}';
    }
}
