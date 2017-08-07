package ua.oleksa.home.persistence.service;


import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Income;
import ua.oleksa.home.persistence.domain.User;

import java.util.List;

/**
 * Created by Admin on 05.08.2017.
 */
public interface IncomeService {

    void add(String description,double sum,User user,Account account);

    void update(int id,String description,double sum);

    List<Income> findIncomeByUser(User user);
}
