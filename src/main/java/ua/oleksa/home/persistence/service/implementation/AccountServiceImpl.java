package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Currency;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.repository.AccountRepo;
import ua.oleksa.home.persistence.service.AccountService;

import java.sql.Date;
import java.util.List;

/**
 * Created by Admin on 04.08.2017.
 */
@Service
public class AccountServiceImpl implements AccountService {

   @Autowired
    AccountRepo accountRepo;

    @Override
    public void add(String name, double balance, Date date,User user, Currency currency) {
        Account account = new Account(name,balance,date,user,currency);
        accountRepo.save(account);
    }

    @Override
    public void update(int id, String name, double balance) {
        Account account = accountRepo.findOne(id);
        account.setName(name);
        account.setBalance(balance);
        accountRepo.save(account);
    }

    @Override
    public void update(Account account) {
        accountRepo.save(account);
    }

    @Override
    public void delete(int id) {
        accountRepo.delete(id);
    }

    @Override
    public Account findOne(int id) {
        return accountRepo.findOne(id);
    }

    @Override
    public List<Account> findAll() {
        return accountRepo.findAll();
    }

    @Override
    public List<Account> findAccountByUser(User user) {
        return accountRepo.findAccountByUser(user);
    }
}
