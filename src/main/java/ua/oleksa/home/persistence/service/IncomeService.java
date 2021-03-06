package ua.oleksa.home.persistence.service;


import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Income;
import ua.oleksa.home.persistence.domain.User;

import java.sql.Date;
import java.util.List;

/**
 * Created by Admin on 05.08.2017.
 */
public interface IncomeService {

    void add(String description, double sum, Date date, User user, Account account);

    void update(int id,String description,double sum);

    Income findOne(int id);

    void delete(int id);

    List<Income>findAll();

    List<Income> findIncomeByUser(User user);

}
