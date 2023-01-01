package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "typephone")
public class TypePhone {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String typePhone;
    @OneToMany(mappedBy = "typePhone")
    private List<Product> products;

    public TypePhone() {
    }

    public TypePhone(int id, String typePhone, List<Product> products) {
        this.id = id;
        this.typePhone = typePhone;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypePhone() {
        return typePhone;
    }

    public void setTypePhone(String typePhone) {
        this.typePhone = typePhone;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
