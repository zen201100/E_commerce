package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "color")
public class Color {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String color;
    @OneToMany(mappedBy = "color")
    private List<Product> products;

    public Color() {
    }

    public Color(int id, String color, List<Product> products) {
        this.id = id;
        this.color = color;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
