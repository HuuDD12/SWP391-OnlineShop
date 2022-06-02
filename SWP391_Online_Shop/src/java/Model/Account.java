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
public class Account {
    private String userId;
    private String username;
    private String password;
    private String email;
    private int RoleId;
    private int block;
    private String code;
    public Account() {
    }

    public Account(String userId, String username, String password, String email, int RoleId, int block) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.email = email;
        this.RoleId = RoleId;
        this.block = block;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Account(String username, String password, String email, int RoleId, int block, String code) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.RoleId = RoleId;
        this.block = block;
        this.code = code;
    }

    
    public Account(String username, String password, String email, int RoleId, int block) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.RoleId = RoleId;
        this.block = block;
    }
    
    

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRoleId() {
        return RoleId;
    }

    public void setRoleId(int RoleId) {
        this.RoleId = RoleId;
    }

    public int getBlock() {
        return block;
    }

    public void setBlock(int block) {
        this.block = block;
    }
    
    
    
    
}
