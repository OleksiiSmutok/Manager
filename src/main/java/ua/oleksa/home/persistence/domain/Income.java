package ua.oleksa.home.persistence.domain;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Admin on 01.06.2017.
 */
@Entity
public class Income {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String description;
    private double sum;
    private Date date;

    @JsonIgnore
    @ManyToOne
    private User user;

    @JsonIgnore
    @ManyToOne
    private Account account;

    public Income(String description, double sum, Date date, User user, Account account) {
        this.description = description;
        this.sum = sum;
        this.date = date;
        this.user = user;
        this.account = account;
    }

    public Income(String description, double sum, Date date) {
        this.description = description;
        this.sum = sum;
        this.date = date;
    }

    public Income() {
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
        return "Income{" +
                "id=" + id +
                ", description='" + description + '\'' +
                ", sum=" + sum +
                ", date=" + date +
                '}';
    }
}
