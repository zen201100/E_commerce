package entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private int quantity;
    private String size;
    private String ram;

    @ManyToOne
    @JoinColumn(name = "priceID")
    private Price price;
    @ManyToOne
    @JoinColumn(name = "capacityID")
    private Capacity capacity;
    @ManyToOne
    @JoinColumn(name = "providerID")
    private Providers providers;
    @ManyToOne
    @JoinColumn(name = "screenID")
    private Screen screen;
    @ManyToOne
    @JoinColumn(name = "operatingSystemID")
    private OperatingSystem operatingSystem;
    @ManyToOne
    @JoinColumn(name = "cameraID")
    private Camera camera;
    @ManyToOne
    @JoinColumn(name = "pinID")
    private PinAndSac pinAndSac;
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

    public Product(int id, String name, int quantity, String size, String ram, Price price, Capacity capacity, Providers providers, Screen screen, OperatingSystem operatingSystem, Camera camera, PinAndSac pinAndSac, Color color, TypePhone typePhone, CartItem cartItems) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.size = size;
        this.ram = ram;
        this.price = price;
        this.capacity = capacity;
        this.providers = providers;
        this.screen = screen;
        this.operatingSystem = operatingSystem;
        this.camera = camera;
        this.pinAndSac = pinAndSac;
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

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
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

    public Screen getScreen() {
        return screen;
    }

    public void setScreen(Screen screen) {
        this.screen = screen;
    }

    public OperatingSystem getOperatingSystem() {
        return operatingSystem;
    }

    public void setOperatingSystem(OperatingSystem operatingSystem) {
        this.operatingSystem = operatingSystem;
    }

    public Camera getCamera() {
        return camera;
    }

    public void setCamera(Camera camera) {
        this.camera = camera;
    }

    public PinAndSac getPinAndSac() {
        return pinAndSac;
    }

    public void setPinAndSac(PinAndSac pinAndSac) {
        this.pinAndSac = pinAndSac;
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
