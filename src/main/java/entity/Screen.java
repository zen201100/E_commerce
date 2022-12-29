package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "screen")
public class Screen {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String screen;
    private String screenSize;
    @OneToMany(mappedBy = "screen")
    private List<Product> products;

    public Screen() {
    }

    public Screen(int id, String screen, String screenSize, List<Product> products) {
        this.id = id;
        this.screen = screen;
        this.screenSize = screenSize;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getScreen() {
        return screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }

    public String getScreenSize() {
        return screenSize;
    }

    public void setScreenSize(String screenSize) {
        this.screenSize = screenSize;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
