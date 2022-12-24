package entity;

import javax.persistence.*;

@Entity
@Table(name = "customer")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int customerID;
    private String userName;
    private String password;
    private String email;
    private String fullName;
    private String address;
    private int phone;
}
