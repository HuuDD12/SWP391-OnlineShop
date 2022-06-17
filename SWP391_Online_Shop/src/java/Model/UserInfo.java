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
public class UserInfo {
    private int id;
    private int uid;
    private String uidImg;
    private String firstName;
    private String lastName;
    private int gender;
    private String email;
    private String address; 
    private String phonenum;

    public UserInfo() {
    }

    public UserInfo(int uid, String uidImg, String firstName, String lastName, int gender, String email, String address, String phonenum) {
        this.uid = uid;
        this.uidImg = uidImg;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.email = email;
        this.address = address;
        this.phonenum = phonenum;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUidImg() {
        return uidImg;
    }

    public void setUidImg(String uidImg) {
        this.uidImg = uidImg;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    @Override
    public String toString() {
        return "UserInfo{" + "id=" + id + ", uid=" + uid + ", uidImg=" + uidImg + ", firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender + ", email=" + email + ", address=" + address + ", phonenum=" + phonenum + '}';
    }

    
}
