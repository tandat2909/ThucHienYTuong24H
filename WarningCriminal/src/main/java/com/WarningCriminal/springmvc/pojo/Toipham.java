package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "toipham")
public class Toipham implements Serializable {

    @Id
    @Column(name = "id", nullable = false, length = 100)
    private String id;
    @Column(name = "HovaTen", nullable = false, length = 100)
    private String hovaTen;
    @Column(name = "CCID", nullable = false, length = 45)
    private String ccid;
    @Column(name = "hinhAnh", nullable = true, length = 300)
    private String hinhAnh;
    @Column(name = "ngaySinh", nullable = true)
    private Date ngaySinh;
    @Column(name = "chiTietPhamToi", nullable = true, length = 500)
    private String chiTietPhamToi;
    @Column(name = "trangThaiBiBat", nullable = false)
    private boolean trangThaiBiBat;

    @OneToMany(mappedBy = "toipham")
    private List<Tintinhbao> tintinhbaos;
    @ManyToOne
    @JoinColumn(name = "idMucDo", nullable = false)
    private Mucdo mucdo;

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

    public String getCcid() {
        return ccid;
    }

    public void setCcid(String ccid) {
        this.ccid = ccid;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getChiTietPhamToi() {
        return chiTietPhamToi;
    }

    public void setChiTietPhamToi(String chiTietPhamToi) {
        this.chiTietPhamToi = chiTietPhamToi;
    }

    public boolean getTrangThaiBiBat() {
        return trangThaiBiBat;
    }

    public void setTrangThaiBiBat(boolean trangThaiBiBat) {
        this.trangThaiBiBat = trangThaiBiBat;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Toipham toipham = (Toipham) o;

        if (trangThaiBiBat != toipham.trangThaiBiBat) return false;
        if (!Objects.equals(id, toipham.id)) return false;
        if (!Objects.equals(hovaTen, toipham.hovaTen)) return false;
        if (!Objects.equals(ccid, toipham.ccid)) return false;
        if (!Objects.equals(hinhAnh, toipham.hinhAnh)) return false;
        if (!Objects.equals(ngaySinh, toipham.ngaySinh)) return false;
        if (!Objects.equals(chiTietPhamToi, toipham.chiTietPhamToi))
            return false;


        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (hovaTen != null ? hovaTen.hashCode() : 0);
        result = 31 * result + (ccid != null ? ccid.hashCode() : 0);
        result = 31 * result + (hinhAnh != null ? hinhAnh.hashCode() : 0);
        result = 31 * result + (ngaySinh != null ? ngaySinh.hashCode() : 0);
        result = 31 * result + (chiTietPhamToi != null ? chiTietPhamToi.hashCode() : 0);

        return result;
    }


    public List<Tintinhbao> getTintinhbaos() {
        return tintinhbaos;
    }

    public void setTintinhbaos(List<Tintinhbao> tintinhbaos) {
        this.tintinhbaos = tintinhbaos;
    }


    public Mucdo getMucdo() {
        return mucdo;
    }

    public void setMucdo(Mucdo mucdo) {
        this.mucdo = mucdo;
    }
}
