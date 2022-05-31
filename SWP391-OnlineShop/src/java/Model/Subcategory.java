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
public class Subcategory {
    private int subcate_id;
    private String subcate_name;
    private int cate_id;

    public Subcategory() {
    }

    public Subcategory(int subcate_id, String subcate_name, int cate_id) {
        this.subcate_id = subcate_id;
        this.subcate_name = subcate_name;
        this.cate_id = cate_id;
    }

    public int getSubcate_id() {
        return subcate_id;
    }

    public void setSubcate_id(int subcate_id) {
        this.subcate_id = subcate_id;
    }

    public String getSubcate_name() {
        return subcate_name;
    }

    public void setSubcate_name(String subcate_name) {
        this.subcate_name = subcate_name;
    }

    public int getCate_id() {
        return cate_id;
    }

    public void setCate_id(int cate_id) {
        this.cate_id = cate_id;
    }
    
    
}
