package com.WarningCriminal.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.*;

@Entity
@Table(name = "role")
public class Role  implements Serializable {
    @Id
    @Column(name = "id", nullable = false, length = 100)
    private String id;
    @Column(name = "name", nullable = false, length = 100)
    private String name;
    @Column(name = "description", nullable = true)
    private String description;
    @OneToMany(mappedBy = "role")
    private List<Account> accounts;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Role role = (Role) o;

        if (!Objects.equals(id, role.id)) return false;
        if (!Objects.equals(name, role.name)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + description.hashCode();
        return result;
    }


    public List<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(List<Account> accounts) {
        this.accounts = accounts;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
