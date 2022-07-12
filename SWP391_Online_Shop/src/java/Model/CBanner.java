/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ADM
 */
public class CBanner {
    private int cbannerId;
    private String cbannerImg;
    private String cbannerTitle;
    private String cbannerdesc;
    private int cbannerActive;

    public CBanner(int cbannerId, String cbannerImg, String cbannerTitle, String cbannerdesc, int cbannerActive) {
        this.cbannerId = cbannerId;
        this.cbannerImg = cbannerImg;
        this.cbannerTitle = cbannerTitle;
        this.cbannerdesc = cbannerdesc;
        this.cbannerActive = cbannerActive;
    }

    public CBanner() {
    }

    @Override
    public String toString() {
        return "CBanner{" + "cbannerId=" + cbannerId + ", cbannerImg=" + cbannerImg + ", cbannerTitle=" + cbannerTitle + ", cbannerdesc=" + cbannerdesc + ", cbannerActive=" + cbannerActive + '}';
    }

    public int getCbannerId() {
        return cbannerId;
    }

    public void setCbannerId(int cbannerId) {
        this.cbannerId = cbannerId;
    }

    public String getCbannerImg() {
        return cbannerImg;
    }

    public void setCbannerImg(String cbannerImg) {
        this.cbannerImg = cbannerImg;
    }

    public String getCbannerTitle() {
        return cbannerTitle;
    }

    public void setCbannerTitle(String cbannerTitle) {
        this.cbannerTitle = cbannerTitle;
    }

    public String getCbannerdesc() {
        return cbannerdesc;
    }

    public void setCbannerdesc(String cbannerdesc) {
        this.cbannerdesc = cbannerdesc;
    }

    public int getCbannerActive() {
        return cbannerActive;
    }

    public void setCbannerActive(int cbannerActive) {
        this.cbannerActive = cbannerActive;
    }

    

    
    
    
}
