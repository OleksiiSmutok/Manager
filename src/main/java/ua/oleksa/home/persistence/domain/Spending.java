package ua.oleksa.home.persistence.domain;

import javax.persistence.*;

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

    public Spending(String description, double sum) {
        this.description = description;
        this.sum = sum;
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

    @Override
    public String toString() {
        return "Spending{" +
                "id=" + id +
                ", description='" + description + '\'' +
                ", sum=" + sum +
                '}';
    }
}
