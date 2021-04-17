package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "account")
public class Account implements Serializable {
    private String id;
    private String userName;
    private String pw;
    private boolean status;
    private String roleId;
    private Role role;
    private Set<Nguoidan> nguoidans;
    private Set<CongAn> congAns;
    @Transient
    private String confirmPw;

    public String getConfirmPw() {
        return confirmPw;
    }

    public void setConfirmPw(String confirmPw) {
        this.confirmPw = confirmPw;
    }

    @Id
    @GeneratedValue
    @Column(name = "id", nullable = false, length = 100)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "userName", nullable = false, length = 50)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "pw", nullable = false, length = 300)
    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    @Basic
    @Column(name = "status", nullable = false)
    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Basic
    @Column(name = "roleID", nullable = false, length = 100)
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

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        result = 31 * result + (pw != null ? pw.hashCode() : 0);

        result = 31 * result + (roleId != null ? roleId.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "roleID", referencedColumnName = "id", nullable = false)
    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @OneToMany(mappedBy = "account")
    public Set<Nguoidan> getNguoidans() {
        return nguoidans;
    }

    public void setNguoidans(Set<Nguoidan> nguoidans) {
        this.nguoidans = nguoidans;
    }

    @OneToMany(mappedBy = "account")
    public Set<CongAn> getCongAns() {
        return congAns;
    }

    public void setCongAns(Set<CongAn> congAns) {
        this.congAns = congAns;
    }
}
