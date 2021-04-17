package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "nguoidan")
public class Nguoidan implements Serializable {
    private String id;
    private String hovaTen;
    private String cccd;
    private boolean trangthaixacthucnguoidan;
    private String diachi;
    private String accountId;
    private Account account;
    private List<Tintinhbao> tintinhbaos;

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
    @Column(name = "HovaTen", nullable = true, length = 45)
    public String getHovaTen() {
        return hovaTen;
    }

    public void setHovaTen(String hovaTen) {
        this.hovaTen = hovaTen;
    }

    @Basic
    @Column(name = "CCCD", nullable = true, length = 45)
    public String getCccd() {
        return cccd;
    }

    public void setCccd(String cccd) {
        this.cccd = cccd;
    }

    @Basic
    @Column(name = "trangthaixacthucnguoidan", nullable = false)
    public boolean getTrangthaixacthucnguoidan() {
        return trangthaixacthucnguoidan;
    }

    public void setTrangthaixacthucnguoidan(boolean trangthaixacthucnguoidan) {
        this.trangthaixacthucnguoidan = trangthaixacthucnguoidan;
    }

    @Basic
    @Column(name = "diachi", nullable = true, length = 100)
    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    @Basic
    @Column(name = "account_id", nullable = false, length = 100)
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

        Nguoidan nguoidan = (Nguoidan) o;

        if (trangthaixacthucnguoidan != nguoidan.trangthaixacthucnguoidan) return false;
        if (!Objects.equals(id, nguoidan.id)) return false;
        if (!Objects.equals(hovaTen, nguoidan.hovaTen)) return false;
        if (!Objects.equals(cccd, nguoidan.cccd)) return false;
        if (!Objects.equals(diachi, nguoidan.diachi)) return false;
        if (!Objects.equals(accountId, nguoidan.accountId)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (hovaTen != null ? hovaTen.hashCode() : 0);
        result = 31 * result + (cccd != null ? cccd.hashCode() : 0);
        result = 31 * result + (diachi != null ? diachi.hashCode() : 0);
        result = 31 * result + (accountId != null ? accountId.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "account_id", referencedColumnName = "id", nullable = false)
    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    @OneToMany(mappedBy = "nguoidan")
    public List<Tintinhbao> getTintinhbaos() {
        return tintinhbaos;
    }

    public void setTintinhbaos(List<Tintinhbao> tintinhbaos) {
        this.tintinhbaos = tintinhbaos;
    }
}
