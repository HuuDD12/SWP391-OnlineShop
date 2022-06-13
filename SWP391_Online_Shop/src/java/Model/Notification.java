/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class Notification {
    private int id;
    private String UserID;
    private int OrderID;
    private String content;
    private int status;
    private String time;

    public Notification() {
    }

    public Notification(int id, String UserID, int OrderID, String content, int status, String time) {
        this.id = id;
        this.UserID = UserID;
        this.OrderID = OrderID;
        this.content = content;
        this.status = status;
        this.time = time;
    }

    public Notification(String UserID, int OrderID, String content) {
        this.UserID = UserID;
        this.OrderID = OrderID;
        this.content = content;
    }

    

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    
    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Notification{" + "id=" + id + ", UserID=" + UserID + ", OrderID=" + OrderID + ", content=" + content + ", status=" + status + ", time=" + time + '}';
    }

    
}
