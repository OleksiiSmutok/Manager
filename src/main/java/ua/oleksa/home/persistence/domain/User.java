package ua.oleksa.home.persistence.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Admin on 31.05.2017.
 */
@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String firstName;
    private String secondName;
    private String email;
    private String phone;
    private String login;
    private String password;
    private String photo;
//    private String activationKey;
//    private String resetKey;
//    private boolean active;

    @OneToMany(mappedBy = "user")
    private List<Account>accounts;

    @OneToMany(mappedBy = "user")
    private List<Category>categories;

    @OneToMany(mappedBy = "user")
    private List<Income>incomes;

    @OneToMany(mappedBy = "user")
    private List<Spending>spendings;


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

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public List<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(List<Account> accounts) {
        this.accounts = accounts;
    }

//    public String getActivationKey() {
//        return activationKey;
//    }
//
//    public void setActivationKey(String activationKey) {
//        this.activationKey = activationKey;
//    }
//
//    public String getResetKey() {
//        return resetKey;
//    }
//
//    public void setResetKey(String resetKey) {
//        this.resetKey = resetKey;
//    }
//
//    public boolean isActive() {
//        return active;
//    }
//
//    public void setActive(boolean active) {
//        this.active = active;
//    }

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
//                ", activationKey='" + activationKey + '\'' +
//                ", resetKey='" + resetKey + '\'' +
//                ", active=" + active +
                ", accounts=" + accounts +
                ", categories=" + categories +
                ", incomes=" + incomes +
                ", spendings=" + spendings +
                '}';
    }
}
