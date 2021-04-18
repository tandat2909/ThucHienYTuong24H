package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "sysconfig")
public class Sysconfig implements Serializable {

    private String key;
    private String value;

    @Id
    @Column(name = "key", nullable = false, length = 100)
    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    @Column(name = "value", nullable = false, length = 100)
    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Sysconfig sysconfig = (Sysconfig) o;

        if (!Objects.equals(key, sysconfig.key)) return false;
        if (!Objects.equals(value, sysconfig.value)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = key != null ? key.hashCode() : 0;
        result = 31 * result + (value != null ? value.hashCode() : 0);
        return result;
    }
}
