package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "operatingsystem")
public class OperatingSystem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String typeName;
    @OneToMany(mappedBy = "operatingSystem")
    private List<Product> products;

    public OperatingSystem() {
    }

    public OperatingSystem(int id, String typeName, List<Product> products) {
        this.id = id;
        this.typeName = typeName;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
