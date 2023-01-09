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
    private double price;
    private String image;

    @ManyToOne
    @JoinColumn(name = "capacityID")
    private Capacity capacity;
    @ManyToOne
    @JoinColumn(name = "providerID")
    private Providers providers;
    @ManyToOne
    @JoinColumn(name = "cameraID")
    private Camera camera;
    @ManyToOne
    @JoinColumn(name = "simID")
    private Sim sim;
    @ManyToOne
    @JoinColumn(name = "pinID")
    private Pin pin;
    @ManyToOne
    @JoinColumn(name = "colorID")
    private Color color;
    @ManyToOne
    @JoinColumn(name = "typePhoneID")
    private TypePhone typePhone;
    @OneToOne(mappedBy = "product")
    private CartItem cartItems;

    public Product() {
    }

    public Product(int id, String name, int quantity, String size, double price, String image, Capacity capacity, Providers providers, Camera camera, Sim sim, Pin pin, Color color, TypePhone typePhone, CartItem cartItems) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.size = size;
        this.price = price;
        this.image = image;
        this.capacity = capacity;
        this.providers = providers;
        this.camera = camera;
        this.sim = sim;
        this.pin = pin;
        this.color = color;
        this.typePhone = typePhone;
        this.cartItems = cartItems;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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

    public Camera getCamera() {
        return camera;
    }

    public void setCamera(Camera camera) {
        this.camera = camera;
    }

    public Sim getSim() {
        return sim;
    }

    public void setSim(Sim sim) {
        this.sim = sim;
    }

    public Pin getPin() {
        return pin;
    }

    public void setPin(Pin pin) {
        this.pin = pin;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public TypePhone getTypePhone() {
        return typePhone;
    }

    public void setTypePhone(TypePhone typePhone) {
        this.typePhone = typePhone;
    }

    public CartItem getCartItems() {
        return cartItems;
    }

    public void setCartItems(CartItem cartItems) {
        this.cartItems = cartItems;
    }
}
