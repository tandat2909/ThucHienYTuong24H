package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "nguoidan")
public class Nguoidan implements Serializable {
    @Id
    @Column(name = "id", nullable = false, length = 100)
    private String id;
    @Column(name = "HovaTen", nullable = true, length = 45)
    private String hovaTen;
    @Column(name = "CCCD", nullable = true, length = 45)
    private String cccd;
    @Column(name = "trangthaixacthucnguoidan", nullable = false)
    private boolean trangthaixacthucnguoidan;
    @Column(name = "diachi", nullable = true, length = 100)
    private String diachi;

    @ManyToOne
    @JoinColumn(name = "account_id", nullable = false)
    private Account account;
    @OneToMany(mappedBy = "nguoidan")
    private List<Tintinhbao> tintinhbaos;


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



    public String getCccd() {
        return cccd;
    }

    public void setCccd(String cccd) {
        this.cccd = cccd;
    }


    public boolean getTrangthaixacthucnguoidan() {
        return trangthaixacthucnguoidan;
    }

    public void setTrangthaixacthucnguoidan(boolean trangthaixacthucnguoidan) {
        this.trangthaixacthucnguoidan = trangthaixacthucnguoidan;
    }



    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
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


        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (hovaTen != null ? hovaTen.hashCode() : 0);
        result = 31 * result + (cccd != null ? cccd.hashCode() : 0);
        result = 31 * result + (diachi != null ? diachi.hashCode() : 0);

        return result;
    }


    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }


    public List<Tintinhbao> getTintinhbaos() {
        return tintinhbaos;
    }

    public void setTintinhbaos(List<Tintinhbao> tintinhbaos) {
        this.tintinhbaos = tintinhbaos;
    }
}
