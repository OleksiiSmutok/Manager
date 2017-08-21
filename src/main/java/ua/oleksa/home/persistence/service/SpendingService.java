package ua.oleksa.home.persistence.service;

import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Spending;
import ua.oleksa.home.persistence.domain.User;

import java.sql.Date;
import java.util.List;

/**
 * Created by Admin on 08.08.2017.
 */
public interface SpendingService {

    void add(String description, double sum, Date date, Category category, Account account, User user);

    void delete(int id);

    Spending findOne(int id);

    List<Spending> findSpendingByUser(User user);

    List<Spending>findSpendingByCategory(Category category);

}
