package ua.oleksa.home.persistence.domain;

import javax.persistence.*;
import java.sql.Date;
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
    private Date date;

    @ManyToOne
    private User user;

    @ManyToOne
    private Currency currency;

    @OneToMany(mappedBy = "account")
    private List<Income>incomes;

    @OneToMany(mappedBy = "account")
    private List<Spending>spendings;

    public Account(String name, double balance, Date date, User user, Currency currency) {
        this.name = name;
        this.balance = balance;
        this.date = date;
        this.user = user;
        this.currency = currency;
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency currency) {
        this.currency = currency;
    }

    public List<Income> getIncomes() {
        return incomes;
    }

    public void setIncomes(List<Income> incomes) {
        this.incomes = incomes;
    }

    public List<Spending> getSpendings() {
        return spendings;
    }

    public void setSpendings(List<Spending> spendings) {
        this.spendings = spendings;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", balance=" + balance +
                ", date=" + date +
                ", user=" + user +
                ", currency=" + currency +
                ", incomes=" + incomes +
                ", spendings=" + spendings +
                '}';
    }
}
