package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "congan")
public class CongAn implements Serializable {
    private String id;
    private String hovaTen;
    private String soHieuQuanNhan;
    private String email;
    private String sdt;
    private String accountId;
    private Account account;

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
    @Column(name = "HovaTen", nullable = false, length = 50)
    public String getHovaTen() {
        return hovaTen;
    }

    public void setHovaTen(String hovaTen) {
        this.hovaTen = hovaTen;
    }

    @Basic
    @Column(name = "soHieuQuanNhan", nullable = false, length = 50)
    public String getSoHieuQuanNhan() {
        return soHieuQuanNhan;
    }

    public void setSoHieuQuanNhan(String soHieuQuanNhan) {
        this.soHieuQuanNhan = soHieuQuanNhan;
    }

    @Basic
    @Column(name = "email", nullable = true, length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "sdt", nullable = true, length = 40)
    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    @Basic
    @Column(name = "accountID", nullable = false, length = 100)
    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CongAn police = (CongAn) o;

        if (!Objects.equals(id, police.id)) return false;
        if (!Objects.equals(hovaTen, police.hovaTen)) return false;
        if (!Objects.equals(soHieuQuanNhan, police.soHieuQuanNhan))
            return false;
        if (!Objects.equals(email, police.email)) return false;
        if (!Objects.equals(sdt, police.sdt)) return false;
        if (!Objects.equals(accountId, police.accountId)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (hovaTen != null ? hovaTen.hashCode() : 0);
        result = 31 * result + (soHieuQuanNhan != null ? soHieuQuanNhan.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (sdt != null ? sdt.hashCode() : 0);
        result = 31 * result + (accountId != null ? accountId.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "accountID", referencedColumnName = "id", nullable = false)
    public Account getAccount() {
        return account;
    }

    public void setAccount(Account accountByAccountId) {
        this.account = accountByAccountId;
    }
}
