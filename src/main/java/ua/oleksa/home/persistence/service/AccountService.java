package ua.oleksa.home.persistence.service;

import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.User;

import java.util.List;

/**
 * Created by Admin on 01.08.2017.
 */

public interface AccountService {

    void add(String name,double balance,User user);

    void update(int id,String name, double balance);

    void delete(int id);

    Account findOne(int id);

    List<Account>findAll();

    List<Account>findAccountByUser(User user);
}
