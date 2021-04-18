package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "tintinhbao")
public class Tintinhbao implements Serializable {
    @Id
    @Column(name = "id", nullable = false, length = 100)
    private String id;
    @Column(name = "NoiDungTinhBao", nullable = true, length = 500)
    private String noiDungTinhBao;

    @ManyToOne
    @JoinColumn(name = "idToiPham", nullable = false)
    private Toipham toipham;
    @ManyToOne
    @JoinColumn(name = "idNguoiDan", nullable = false)
    private Nguoidan nguoidan;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }



    public String getNoiDungTinhBao() {
        return noiDungTinhBao;
    }

    public void setNoiDungTinhBao(String noiDungTinhBao) {
        this.noiDungTinhBao = noiDungTinhBao;
    }




    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tintinhbao that = (Tintinhbao) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;
        if (noiDungTinhBao != null ? !noiDungTinhBao.equals(that.noiDungTinhBao) : that.noiDungTinhBao != null)
            return false;


        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (noiDungTinhBao != null ? noiDungTinhBao.hashCode() : 0);

        return result;
    }


    public Toipham getToipham() {
        return toipham;
    }

    public void setToipham(Toipham toipham) {
        this.toipham = toipham;
    }


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
                ", toipham=" + toipham.getHovaTen() +
                ", nguoidan=" + nguoidan.getHovaTen() +
                '}';
    }
}
