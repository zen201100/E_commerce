package entity;

import javax.persistence.*;

@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private int quantity;
    private String size;

    @ManyToOne
    @JoinColumn(name = "priceID")
    private Price price;
    @ManyToOne
    @JoinColumn(name = "capacityID")
    private Capacity capacity;
    @ManyToOne
    @JoinColumn(name = "providerID")
    private Providers providers;

    public Product() {
    }

    public Product(int id, String name, int quantity, String size, Price price, Capacity capacity, Providers providers) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.size = size;
        this.price = price;
        this.capacity = capacity;
        this.providers = providers;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public Price getPrice() {
        return price;
    }

    public void setPrice(Price price) {
        this.price = price;
    }

    public Capacity getCapacity() {
        return capacity;
    }

    public void setCapacity(Capacity capacity) {
        this.capacity = capacity;
    }

    public Providers getProviders() {
        return providers;
    }

    public void setProviders(Providers providers) {
        this.providers = providers;
    }
}
