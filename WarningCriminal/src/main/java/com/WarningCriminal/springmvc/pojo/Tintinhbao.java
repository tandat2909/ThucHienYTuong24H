package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "tintinhbao")
public class Tintinhbao implements Serializable {
    @Id
    @Column(name = "id", nullable = false, length = 100)
    private String id;
    private String noiDungTinhBao;
    private String idToiPham;
    private String idNguoiDan;
    private Toipham toipham;
    private Nguoidan nguoidan;

    @Id
    @GeneratedValue
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "NoiDungTinhBao", nullable = true, length = 500)
    public String getNoiDungTinhBao() {
        return noiDungTinhBao;
    }

    public void setNoiDungTinhBao(String noiDungTinhBao) {
        this.noiDungTinhBao = noiDungTinhBao;
    }

    @Basic
    @Column(name = "idToiPham", nullable = false, length = 100)
    public String getIdToiPham() {
        return idToiPham;
    }

    public void setIdToiPham(String idToiPham) {
        this.idToiPham = idToiPham;
    }

    @Basic
    @Column(name = "idNguoiDan", nullable = false, length = 100)
    public String getIdNguoiDan() {
        return idNguoiDan;
    }

    public void setIdNguoiDan(String idNguoiDan) {
        this.idNguoiDan = idNguoiDan;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tintinhbao that = (Tintinhbao) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (noiDungTinhBao != null ? !noiDungTinhBao.equals(that.noiDungTinhBao) : that.noiDungTinhBao != null)
            return false;
        if (idToiPham != null ? !idToiPham.equals(that.idToiPham) : that.idToiPham != null) return false;
        if (idNguoiDan != null ? !idNguoiDan.equals(that.idNguoiDan) : that.idNguoiDan != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (noiDungTinhBao != null ? noiDungTinhBao.hashCode() : 0);
        result = 31 * result + (idToiPham != null ? idToiPham.hashCode() : 0);
        result = 31 * result + (idNguoiDan != null ? idNguoiDan.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "idToiPham", referencedColumnName = "id", nullable = false)
    public Toipham getToipham() {
        return toipham;
    }

    public void setToipham(Toipham toipham) {
        this.toipham = toipham;
    }

    @ManyToOne
    @JoinColumn(name = "idNguoiDan", referencedColumnName = "id", nullable = false)
    public Nguoidan getNguoidan() {
        return nguoidan;
    }

    public void setNguoidan(Nguoidan nguoidan) {
        this.nguoidan = nguoidan;
    }

    @Override
    public String toString() {
        return "Tintinhbao{" +
                "id='" + id + '\'' +
                ", noiDungTinhBao='" + noiDungTinhBao + '\'' +
                ", idToiPham='" + idToiPham + '\'' +
                ", idNguoiDan='" + idNguoiDan + '\'' +
                ", toipham=" + toipham.getHovaTen() +
                ", nguoidan=" + nguoidan.getHovaTen() +
                '}';
    }
}
