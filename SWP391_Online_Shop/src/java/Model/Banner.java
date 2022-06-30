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
public class Banner {
    private int bannerId;
    private String bannerImg;
    private int bannerImgSale;

    public Banner() {
    }

    public Banner(String bannerImg, int bannerImgSale) {
        this.bannerImg = bannerImg;
        this.bannerImgSale = bannerImgSale;
    }

    public Banner(int bannerId, String bannerImg, int bannerImgSale) {
        this.bannerId = bannerId;
        this.bannerImg = bannerImg;
        this.bannerImgSale = bannerImgSale;
    }
    

    public int getBannerId() {
        return bannerId;
    }

    public void setBannerId(int bannerId) {
        this.bannerId = bannerId;
    }

    public String getBannerImg() {
        return bannerImg;
    }

    public void setBannerImg(String bannerImg) {
        this.bannerImg = bannerImg;
    }

    public int getBannerImgSale() {
        return bannerImgSale;
    }

    public void setBannerImgSale(int bannerImgSale) {
        this.bannerImgSale = bannerImgSale;
    }

    
    
    
}
