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
public class Feedback {
    private int id;
    private String userId;
    private String feedbackDetail;
    private String date;
    private Account acc;
    public Feedback() {
    }

    public Feedback(int id, String userId, String feedbackDetail, String date, Account acc) {
        this.id = id;
        this.userId = userId;
        this.feedbackDetail = feedbackDetail;
        this.date = date;
        this.acc = acc;
    }

    public Feedback(int id, String userId, String feedbackDetail, String date) {
        this.id = id;
        this.userId = userId;
        this.feedbackDetail = feedbackDetail;
        this.date = date;
    }

    public Account getAcc() {
        return acc;
    }

    public void setAcc(Account acc) {
        this.acc = acc;
    }
    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Feedback(String userId, String feedbackDetail) {
        this.userId = userId;
        this.feedbackDetail = feedbackDetail;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFeedbackDetail() {
        return feedbackDetail;
    }

    public void setFeedbackDetail(String feedbackDetail) {
        this.feedbackDetail = feedbackDetail;
    }
    
}
