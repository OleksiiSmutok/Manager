package ua.oleksa.home.persistence.domain;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Admin on 01.06.2017.
 */
@Entity
public class Spending {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String description;
    private double sum;
    private Date date;

    @ManyToOne
    private Category category;

    @ManyToOne
    private Account account;

    @ManyToOne
    private User user;

    public Spending(String description, double sum, Date date, Category category, Account account, User user) {
        this.description = description;
        this.sum = sum;
        this.date = date;
        this.category = category;
        this.account = account;
        this.user = user;
    }

    public Spending() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Spending{" +
                "id=" + id +
                ", description='" + description + '\'' +
                ", sum=" + sum +
                ", date=" + date +
                ", category=" + category +
                ", account=" + account +
                ", user=" + user +
                '}';
    }
}
