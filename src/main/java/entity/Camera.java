package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "camera")
public class Camera {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String cameraBefore;
    private String cameraAfter;
    private String chip;
    @OneToMany(mappedBy = "camera")
    private List<Product> products;

    public Camera() {
    }

    public Camera(int id, String cameraBefore, String cameraAfter, String chip, List<Product> products) {
        this.id = id;
        this.cameraBefore = cameraBefore;
        this.cameraAfter = cameraAfter;
        this.chip = chip;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCameraBefore() {
        return cameraBefore;
    }

    public void setCameraBefore(String cameraBefore) {
        this.cameraBefore = cameraBefore;
    }

    public String getCameraAfter() {
        return cameraAfter;
    }

    public void setCameraAfter(String cameraAfter) {
        this.cameraAfter = cameraAfter;
    }

    public String getChip() {
        return chip;
    }

    public void setChip(String chip) {
        this.chip = chip;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
