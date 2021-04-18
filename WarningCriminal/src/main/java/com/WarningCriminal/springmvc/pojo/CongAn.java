package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "congan")
public class CongAn implements Serializable {
    @Id
    @Column(name = "id", nullable = false, length = 100)
    private String id;
    @Column(name = "HovaTen", nullable = false, length = 50)
    private String hovaTen;
    @Column(name = "soHieuQuanNhan", nullable = false, length = 50)
    private String soHieuQuanNhan;
    @Column(name = "email", nullable = true, length = 100)
    private String email;
    @Column(name = "sdt", nullable = true, length = 40)
    private String sdt;

    @ManyToOne
    @JoinColumn(name = "accountID", nullable = false)
    private Account account;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }



    public String getHovaTen() {
        return hovaTen;
    }

    public void setHovaTen(String hovaTen) {
        this.hovaTen = hovaTen;
    }


    public String getSoHieuQuanNhan() {
        return soHieuQuanNhan;
    }

    public void setSoHieuQuanNhan(String soHieuQuanNhan) {
        this.soHieuQuanNhan = soHieuQuanNhan;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
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


        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (hovaTen != null ? hovaTen.hashCode() : 0);
        result = 31 * result + (soHieuQuanNhan != null ? soHieuQuanNhan.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (sdt != null ? sdt.hashCode() : 0);

        return result;
    }


    public Account getAccount() {
        return account;
    }

    public void setAccount(Account accountByAccountId) {
        this.account = accountByAccountId;
    }
}
