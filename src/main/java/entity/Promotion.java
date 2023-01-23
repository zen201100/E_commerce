package entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "promotion")
public class Promotion {
    @Id
    private int id;
    private int amount;
    private LocalDate dateStart;
    private LocalDate dateEnd;
    @OneToMany(mappedBy = "promotion")
    private List<Product> products;

    public Promotion() {
    }

    public Promotion(int id, int amount, LocalDate dateStart, LocalDate dateEnd, List<Product> products) {
        this.id = id;
        this.amount = amount;
        this.dateStart = dateStart;
        this.dateEnd = dateEnd;
        this.products = products;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public LocalDate getDateStart() {
        return dateStart;
    }

    public void setDateStart(LocalDate dateStart) {
        this.dateStart = dateStart;
    }

    public LocalDate getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(LocalDate dateEnd) {
        this.dateEnd = dateEnd;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
