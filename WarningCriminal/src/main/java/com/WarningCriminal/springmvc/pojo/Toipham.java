package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "toipham")
public class Toipham implements Serializable {
    private String id;
    private String hovaTen;
    private String ccid;
    private String hinhAnh;
    private Date ngaySinh;
    private String chiTietPhamToi;
    private boolean trangThaiBiBat;
    private String idMucDo;
    private List<Tintinhbao> tintinhbaos;
    private Mucdo mucdo;

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
    @Column(name = "HovaTen", nullable = false, length = 100)
    public String getHovaTen() {
        return hovaTen;
    }

    public void setHovaTen(String hovaTen) {
        this.hovaTen = hovaTen;
    }

    @Basic
    @Column(name = "CCID", nullable = false, length = 45)
    public String getCcid() {
        return ccid;
    }

    public void setCcid(String ccid) {
        this.ccid = ccid;
    }

    @Basic
    @Column(name = "hinhAnh", nullable = true, length = 300)
    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    @Basic
    @Column(name = "ngaySinh", nullable = true)
    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    @Basic
    @Column(name = "chiTietPhamToi", nullable = true, length = 500)
    public String getChiTietPhamToi() {
        return chiTietPhamToi;
    }

    public void setChiTietPhamToi(String chiTietPhamToi) {
        this.chiTietPhamToi = chiTietPhamToi;
    }

    @Basic
    @Column(name = "trangThaiBiBat", nullable = false)
    public boolean getTrangThaiBiBat() {
        return trangThaiBiBat;
    }

    public void setTrangThaiBiBat(boolean trangThaiBiBat) {
        this.trangThaiBiBat = trangThaiBiBat;
    }

    @Basic
    @Column(name = "idMucDo", nullable = false, length = 100)
    public String getIdMucDo() {
        return idMucDo;
    }

    public void setIdMucDo(String idMucDo) {
        this.idMucDo = idMucDo;
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
        if (!Objects.equals(idMucDo, toipham.idMucDo)) return false;

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
        result = 31 * result + (idMucDo != null ? idMucDo.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "toipham")
    public List<Tintinhbao> getTintinhbaos() {
        return tintinhbaos;
    }

    public void setTintinhbaos(List<Tintinhbao> tintinhbaos) {
        this.tintinhbaos = tintinhbaos;
    }

    @ManyToOne
    @JoinColumn(name = "idMucDo", referencedColumnName = "id", nullable = false)
    public Mucdo getMucdo() {
        return mucdo;
    }

    public void setMucdo(Mucdo mucdo) {
        this.mucdo = mucdo;
    }
}
