package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "pin")
public class Pin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String pinandsac;
    @OneToMany(mappedBy = "pin")
    private List<Product> products;

    public Pin() {
    }

    public Pin(int id, String pinandsac, List<Product> products) {
        this.id = id;
        this.pinandsac = pinandsac;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPinandsac() {
        return pinandsac;
    }

    public void setPinandsac(String pinandsac) {
        this.pinandsac = pinandsac;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
