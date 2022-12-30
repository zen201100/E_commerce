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
    private String capacity_one;
    private String capacity_two;
    @OneToMany(mappedBy = "capacity")
    private List<Product> products;

    public Capacity() {
    }

    public Capacity(int id, String capacity, String capacity_one, String capacity_two, List<Product> products) {
        this.id = id;
        this.capacity = capacity;
        this.capacity_one = capacity_one;
        this.capacity_two = capacity_two;
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

    public String getCapacity_one() {
        return capacity_one;
    }

    public void setCapacity_one(String capacity_one) {
        this.capacity_one = capacity_one;
    }

    public String getCapacity_two() {
        return capacity_two;
    }

    public void setCapacity_two(String capacity_two) {
        this.capacity_two = capacity_two;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
