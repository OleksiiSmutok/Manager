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


    @OneToMany(mappedBy = "user",cascade = CascadeType.REMOVE)
    private List<Account>accounts;


    @OneToMany(mappedBy = "user")
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
                ", accounts=" + accounts +
                ", categories=" + categories +
                '}';
    }
}
