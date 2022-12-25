package entity;

import javax.persistence.*;
import java.time.LocalDate;
@Entity
@Table(name = "order")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private LocalDate date;
    private String note;
    private double totalPrice;
}
