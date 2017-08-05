package ua.oleksa.home.persistence.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Admin on 31.05.2017.
 */
@Entity
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private double balance;

    @OneToMany(mappedBy = "account",cascade = CascadeType.REMOVE)
    List<Income>incomes;

    @ManyToOne
    private User user;

    public Account(String name, double balance, User user) {
        this.name = name;
        this.balance = balance;
        this.user = user;
    }

    public Account() {
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

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Income> getIncomes() {
        return incomes;
    }

    public void setIncomes(List<Income> incomes) {
        this.incomes = incomes;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", balance=" + balance +
                ", incomes=" + incomes +
                ", user=" + user +
                '}';
    }
}
