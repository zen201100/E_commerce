package entity;

import javax.persistence.*;

@Entity
@Table(name = "payment")
public class Payment {
    @Id
    private int id;
    private  String paymentType;
    private double amount;
    @OneToOne
    @JoinColumn(name = "orderID")
    private Orders orders;

    public Payment() {
    }


    public Payment(int id, String paymentType, double amount, Orders orders) {
        this.id = id;
        this.paymentType = paymentType;
        this.amount = amount;
        this.orders = orders;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }
}
