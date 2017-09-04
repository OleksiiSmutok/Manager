package ua.oleksa.home.persistence.domain;

import org.apache.avro.reflect.Stringable;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.List;

/**
 * Created by Admin on 31.05.2017.
 */
@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Size(min = 1, message = "Field can not be empty")
    private String firstName;

    @Size(min = 1,message = "Field can not be empty")
    private String secondName;

    @NotNull
    @Size(min = 1, max = 30,message = "Field not be empty")
    @Pattern(regexp="^[a-z0-9](\\.?[a-z0-9]){5,}@gmail\\.com$",message = "Wrong format")
    private String email;

    @NotEmpty(message = "Field can not be empty")
    @Pattern(regexp="(^$|[0-9]{12})",message = "Wrong format")
    private String phone;

    @Size(min = 1,message = "Field can not be empty")
    private String login;

    @Size(min = 1,message = "Field can not be empty")
    private String password;

    private String photo;


    @OneToMany(mappedBy = "user",cascade = CascadeType.REMOVE)
    private List<Account>accounts;

    @OneToMany(mappedBy = "user",cascade = CascadeType.REMOVE)
    private List<Income>incomes;

    @OneToMany(mappedBy = "user",cascade = CascadeType.REMOVE)
    private List<Spending>spendings;

    @OneToMany(mappedBy = "user",cascade = CascadeType.REMOVE)
    private List<Category>categories;

    public User(String firstName, String secondName, String email, String phone, String login, String password) {
        this.firstName = firstName;
        this.secondName = secondName;
        this.email = email;
        this.phone = phone;
        this.login = login;
        this.password = password;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public List<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(List<Account> accounts) {
        this.accounts = accounts;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
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
        return "User{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", secondName='" + secondName + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", photo='" + photo + '\'' +
                '}';
    }
}
