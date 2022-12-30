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
    private String color_one;
    private String color_two;
    private String color_t;
    private String color_f;
    @OneToMany(mappedBy = "color")
    private List<Product> products;

    public Color() {
    }

    public Color(int id, String color, String color_one, String color_two, String color_t, String color_f, List<Product> products) {
        this.id = id;
        this.color = color;
        this.color_one = color_one;
        this.color_two = color_two;
        this.color_t = color_t;
        this.color_f = color_f;
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

    public String getColor_one() {
        return color_one;
    }

    public void setColor_one(String color_one) {
        this.color_one = color_one;
    }

    public String getColor_two() {
        return color_two;
    }

    public void setColor_two(String color_two) {
        this.color_two = color_two;
    }

    public String getColor_t() {
        return color_t;
    }

    public void setColor_t(String color_t) {
        this.color_t = color_t;
    }

    public String getColor_f() {
        return color_f;
    }

    public void setColor_f(String color_f) {
        this.color_f = color_f;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
