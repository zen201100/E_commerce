package entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "orders")
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private LocalDate date;
    private String note;
    private int totalProduct;
    private double totalPrice;
    @ManyToOne
    @JoinColumn(name = "customerID")
    private Customer customer;
    @OneToOne(mappedBy = "orders")
    private Transport transport;
    @OneToMany(mappedBy = "orders")
    private List<OrderDetails> orderDetails;
    @OneToOne(mappedBy = "orders")
    private Payment payment;

    public Orders() {
    }

    public Orders(int id, LocalDate date, String note, int totalProduct, double totalPrice, Customer customer, Transport transport, List<OrderDetails> orderDetails, Payment payment) {
        Id = id;
        this.date = date;
        this.note = note;
        this.totalProduct = totalProduct;
        this.totalPrice = totalPrice;
        this.customer = customer;
        this.transport = transport;
        this.orderDetails = orderDetails;
        this.payment = payment;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getTotalProduct() {
        return totalProduct;
    }

    public void setTotalProduct(int totalProduct) {
        this.totalProduct = totalProduct;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Transport getTransport() {
        return transport;
    }

    public void setTransport(Transport transport) {
        this.transport = transport;
    }

    public List<OrderDetails> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetails> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }
}
