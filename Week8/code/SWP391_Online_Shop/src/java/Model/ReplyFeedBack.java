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
public class ReplyFeedBack {
    private int id;
    private int feedbackId;
    private String userId;
    private String reply;

    public ReplyFeedBack() {
    }

    public ReplyFeedBack(int id, int feedbackId, String userId, String reply) {
        this.id = id;
        this.feedbackId = feedbackId;
        this.userId = userId;
        this.reply = reply;
    }

    public ReplyFeedBack(int feedbackId, String userId, String reply) {
        this.feedbackId = feedbackId;
        this.userId = userId;
        this.reply = reply;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(int feedbackId) {
        this.feedbackId = feedbackId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }
    
    
}
