package ua.oleksa.home.persistence.domain;

import javax.persistence.*;

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

    @ManyToOne
    private User user;

    public Income(String description, double sum, User user) {
        this.description = description;
        this.sum = sum;
        this.user = user;
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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Income{" +
                "id=" + id +
                ", description='" + description + '\'' +
                ", sum=" + sum +
                ", user=" + user +
                '}';
    }
}
