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
public class SubCategory {
    private int subID;
    private String subName;
    private Category category;

    public SubCategory() {
    }

    public SubCategory(int subID, String subName, Category category) {
        this.subID = subID;
        this.subName = subName;
        this.category = category;
    }

    public int getSubID() {
        return subID;
    }

    public void setSubID(int subID) {
        this.subID = subID;
    }

    public String getSubName() {
        return subName;
    }

    public void setSubName(String subName) {
        this.subName = subName;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "SubCategory{" + "subID=" + subID + ", subName=" + subName + ", category=" + category + '}';
    }
    
}
