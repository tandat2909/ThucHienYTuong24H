package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "account")
public class Account implements Serializable {
    @Id
    @Column(name = "id", nullable = false, length = 100)
    private String id;
    @Column(name = "userName", nullable = false, length = 50)
    private String userName;
    @Column(name = "pw", nullable = false, length = 300)
    private String pw;
    @Column(name = "status", nullable = false)
    private boolean status;
    @Column(name = "roleID", nullable = false, length = 100)
    private String roleId;
    @ManyToOne
    @JoinColumn(name = "roleID", nullable = false,insertable = false,updatable = false)
    private Role role;
    @OneToMany(mappedBy = "account")
    private List<Nguoidan> nguoidans;
    @OneToMany(mappedBy = "account")
    private List<CongAn> congAns;
    @Transient
    private String confirmPw;

    public String getConfirmPw() {
        return confirmPw;
    }

    public void setConfirmPw(String confirmPw) {
        this.confirmPw = confirmPw;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }


    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }


    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Account account = (Account) o;

        if (status != account.status) return false;
        if (!Objects.equals(id, account.id)) return false;
        if (!Objects.equals(userName, account.userName)) return false;
        if (!Objects.equals(pw, account.pw)) return false;
        if (!Objects.equals(roleId, account.roleId)) return false;

        return true;
    }



    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }


    public List<Nguoidan> getNguoidans() {
        return nguoidans;
    }

    public void setNguoidans(List<Nguoidan> nguoidans) {
        this.nguoidans = nguoidans;
    }


    public List<CongAn> getCongAns() {
        return congAns;
    }

    public void setCongAns(List<CongAn> congAns) {
        this.congAns = congAns;
    }
}
