package ua.oleksa.home.persistence.domain;

import javax.persistence.*;
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

    @ManyToOne
    private User user;

    @ManyToOne
    private Icon icon;

    @OneToMany(mappedBy = "category")
    private List<Spending>spendings;

    public Category(String name, double sum, User user) {
        this.name = name;
        this.sum = sum;
        this.user = user;
    }

    public Category(String name, User user, Icon icon) {
        this.name = name;
        this.user = user;
        this.icon = icon;
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

    public User getUser() {
        return user;
    }

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
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

    public Icon getIcon() {
        return icon;
    }

    public void setIcon(Icon icon) {
        this.icon = icon;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sum=" + sum +
                ", user=" + user +
                ", spendings=" + spendings +
                '}';
    }
}

