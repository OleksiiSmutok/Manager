package ua.oleksa.home.persistence.domain;

import javax.persistence.*;
import java.sql.Date;
import java.util.List;

/**
 * Created by Admin on 31.05.2017.
 */
@Entity
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private double sum;
    private String icon;
    private Date date;

    @ManyToOne
    private User user;

    @OneToMany(mappedBy = "category",cascade = CascadeType.REMOVE)
    private List<Spending>spendings;

    public Category(String name, double sum, User user) {
        this.name = name;
        this.sum = sum;
        this.user = user;
    }

    public Category(String name, String icon, Date date, User user) {
        this.name = name;
        this.icon = icon;
        this.date = date;
        this.user = user;
    }

    public Category() {
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

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
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

    public List<Spending> getSpendings() {
        return spendings;
    }

    public void setSpendings(List<Spending> spendings) {
        this.spendings = spendings;
    }


    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sum=" + sum +
                ", icon='" + icon + '\'' +
                ", date=" + date +
                ", user=" + user +
                ", spendings=" + spendings +
                '}';
    }
}

