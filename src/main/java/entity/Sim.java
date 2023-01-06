package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "sim")
public class Sim {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String sim;
    @OneToMany(mappedBy = "sim")
    private List<Product> products;

    public Sim() {
    }

    public Sim(int id, String sim, List<Product> products) {
        this.id = id;
        this.sim = sim;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSim() {
        return sim;
    }

    public void setSim(String sim) {
        this.sim = sim;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
