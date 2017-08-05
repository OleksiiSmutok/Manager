package ua.oleksa.home.persistence.service;

import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Account;

/**
 * Created by Admin on 01.08.2017.
 */

public interface AccountService {

    void add(String name,double balance);

    void edit(int id,String name, double balance);

    void delete(int id);

    Account findOne(int id);
}
