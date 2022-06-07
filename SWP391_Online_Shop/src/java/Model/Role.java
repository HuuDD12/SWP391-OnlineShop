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
public class Role {
    private Account account;
    private String roleName;

    public Role() {
    }

    public Role(Account account, String roleName) {
        this.account = account;
        this.roleName = roleName;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return "Role{" + "account=" + account + ", roleName=" + roleName + '}';
    }
    
    
    
    
    
}
