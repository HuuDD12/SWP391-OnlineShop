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
public class User_info {
    private int ID;
    private Users users;
    private String firstName;
    private String secondName;
    private String address;
    private String phone;

    public User_info() {
    }

    public User_info(int ID, Users users, String firstName, String secondName, String address, String phone) {
        this.ID = ID;
        this.users = users;
        this.firstName = firstName;
        this.secondName = secondName;
        this.address = address;
        this.phone = phone;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "User_info{" + "ID=" + ID + ", users=" + users + ", firstName=" + firstName + ", secondName=" + secondName + ", address=" + address + ", phone=" + phone + '}';
    }
    
}
