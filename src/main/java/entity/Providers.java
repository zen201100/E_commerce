package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "providers")
public class Providers {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String providerName;
    @OneToMany(mappedBy = "providers")
    private List<Product> products;

    public Providers() {
    }

    public Providers(int id, String providerName, List<Product> products) {
        this.id = id;
        this.providerName = providerName;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProviderName() {
        return providerName;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
