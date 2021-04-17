package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "mucdo")
public class Mucdo implements Serializable {
    private String id;
    private String tenMucDo;
    private List<Toipham> toiphams;

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
    @Column(name = "tenMucDo", nullable = false, length = 100)
    public String getTenMucDo() {
        return tenMucDo;
    }

    public void setTenMucDo(String tenMucDo) {
        this.tenMucDo = tenMucDo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Mucdo mucdo = (Mucdo) o;

        if (!Objects.equals(id, mucdo.id)) return false;
        if (!Objects.equals(tenMucDo, mucdo.tenMucDo)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (tenMucDo != null ? tenMucDo.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "mucdo")
    public List<Toipham> getToiphams() {
        return toiphams;
    }

    public void setToiphams(List<Toipham> toiphams) {
        this.toiphams = toiphams;
    }
}
