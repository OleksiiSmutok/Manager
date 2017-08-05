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

    public Income(String description, double sum) {
        this.description = description;
        this.sum = sum;
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

    @Override
    public String toString() {
        return "Income{" +
                "id=" + id +
                ", description='" + description + '\'' +
                ", sum=" + sum +
                '}';
    }
}
