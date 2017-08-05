package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.repository.AccountRepo;
import ua.oleksa.home.persistence.service.AccountService;

/**
 * Created by Admin on 04.08.2017.
 */
@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountRepo accountRepo;


    @Override
    public void add(String name, double balance) {
        Account account = new Account();
        account.setName(name);
        account.setBalance(balance);
        accountRepo.save(account);
    }

    @Override
    public void edit(int id, String name, double balance) {
        Account account = accountRepo.findOne(id);
        account.setName(name);
        account.setBalance(balance);
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
}
