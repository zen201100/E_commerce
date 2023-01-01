package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "capacity")
public class Capacity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String capacity;
    @OneToMany(mappedBy = "capacity")
    private List<Product> products;

    public Capacity() {
    }

    public Capacity(int id, String capacity, List<Product> products) {
        this.id = id;
        this.capacity = capacity;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
