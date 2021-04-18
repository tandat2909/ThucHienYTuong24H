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
    @Column(name = "CCID", nullable = true, length = 45)
    private String ccid;
    @Column(name = "hinhAnh", nullable = true, length = 300)
    private String hinhAnh;
    @Column(name = "ngaySinh", nullable = true)
    private Date ngaySinh;
    @Column(name = "chiTietPhamToi", nullable = true, length = 500)
    private String chiTietPhamToi;
    @Column(name = "trangThaiBiBat", nullable = false)
    private boolean trangThaiBiBat;
    private String gioitinh;
    private String noisinh;
    private String hokhauthuongtru;
    private String quoctich;
    private String dantoc;
    private String hotenbo;
    private String hotenme;
    private String mauda;
    private String chieucao;
    private String dacdiemmaitoc;
    private String dacdiemlongmay;
    private String dacdiemmui;
    private String dacdiemtai;
    private String dacdiemmat;
    private String dacdiemkhac;
    private String toidanh;
    private String heloaitoidanh;
    private String phamvitruyna;
    private String quyetdinhtruyna;
    private String donviraquyetdinh;
    private String baochodonvi;



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

    public boolean isTrangThaiBiBat() {
        return trangThaiBiBat;
    }

    public String getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getNoisinh() {
        return noisinh;
    }

    public void setNoisinh(String noisinh) {
        this.noisinh = noisinh;
    }

    public String getHokhauthuongtru() {
        return hokhauthuongtru;
    }

    public void setHokhauthuongtru(String hokhauthuongtru) {
        this.hokhauthuongtru = hokhauthuongtru;
    }

    public String getQuoctich() {
        return quoctich;
    }

    public void setQuoctich(String quoctich) {
        this.quoctich = quoctich;
    }

    public String getDantoc() {
        return dantoc;
    }

    public void setDantoc(String dantoc) {
        this.dantoc = dantoc;
    }

    public String getHotenbo() {
        return hotenbo;
    }

    public void setHotenbo(String hotenbo) {
        this.hotenbo = hotenbo;
    }

    public String getHotenme() {
        return hotenme;
    }

    public void setHotenme(String hotenme) {
        this.hotenme = hotenme;
    }

    public String getMauda() {
        return mauda;
    }

    public void setMauda(String mauda) {
        this.mauda = mauda;
    }

    public String getChieucao() {
        return chieucao;
    }

    public void setChieucao(String chieucao) {
        this.chieucao = chieucao;
    }

    public String getDacdiemmaitoc() {
        return dacdiemmaitoc;
    }

    public void setDacdiemmaitoc(String dacdiemmaitoc) {
        this.dacdiemmaitoc = dacdiemmaitoc;
    }

    public String getDacdiemlongmay() {
        return dacdiemlongmay;
    }

    public void setDacdiemlongmay(String dacdiemlongmay) {
        this.dacdiemlongmay = dacdiemlongmay;
    }

    public String getDacdiemmui() {
        return dacdiemmui;
    }

    public void setDacdiemmui(String dacdiemmui) {
        this.dacdiemmui = dacdiemmui;
    }

    public String getDacdiemtai() {
        return dacdiemtai;
    }

    public void setDacdiemtai(String dacdiemtai) {
        this.dacdiemtai = dacdiemtai;
    }

    public String getDacdiemmat() {
        return dacdiemmat;
    }

    public void setDacdiemmat(String dacdiemmat) {
        this.dacdiemmat = dacdiemmat;
    }

    public String getDacdiemkhac() {
        return dacdiemkhac;
    }

    public void setDacdiemkhac(String dacdiemkhac) {
        this.dacdiemkhac = dacdiemkhac;
    }

    public String getToidanh() {
        return toidanh;
    }

    public void setToidanh(String toidanh) {
        this.toidanh = toidanh;
    }

    public String getHeloaitoidanh() {
        return heloaitoidanh;
    }

    public void setHeloaitoidanh(String heloaitoidanh) {
        this.heloaitoidanh = heloaitoidanh;
    }

    public String getPhamvitruyna() {
        return phamvitruyna;
    }

    public void setPhamvitruyna(String phamvitruyna) {
        this.phamvitruyna = phamvitruyna;
    }

    public String getQuyetdinhtruyna() {
        return quyetdinhtruyna;
    }

    public void setQuyetdinhtruyna(String quyetdinhtruyna) {
        this.quyetdinhtruyna = quyetdinhtruyna;
    }

    public String getDonviraquyetdinh() {
        return donviraquyetdinh;
    }

    public void setDonviraquyetdinh(String donviraquyetdinh) {
        this.donviraquyetdinh = donviraquyetdinh;
    }

    public String getBaochodonvi() {
        return baochodonvi;
    }

    public void setBaochodonvi(String baochodonvi) {
        this.baochodonvi = baochodonvi;
    }

    @Override
    public String toString() {
        return "Toipham{" +
                "id='" + id + '\'' +
                ", hovaTen='" + hovaTen + '\'' +
                ", ccid='" + ccid + '\'' +
                ", hinhAnh='" + hinhAnh + '\'' +
                ", ngaySinh=" + ngaySinh +
                ", chiTietPhamToi='" + chiTietPhamToi + '\'' +
                ", trangThaiBiBat=" + trangThaiBiBat +
                '}';
    }
}
