package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Spending;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.repository.SpendingRepo;
import ua.oleksa.home.persistence.service.SpendingService;

import java.sql.Date;
import java.util.List;

/**
 * Created by Admin on 08.08.2017.
 */
@Service
public class SpendingServiceImpl implements SpendingService {

    @Autowired
    SpendingRepo spendingRepo;

    @Override
    public void add(String description, double sum, Date date, Category category, Account account, User user) {
        Spending spending = new Spending(description,sum,date,category,account,user);
        spendingRepo.save(spending);
    }

    @Override
    public void delete(int id) {
        spendingRepo.delete(id);
    }

    @Override
    public Spending findOne(int id) {
        return spendingRepo.findOne(id);
    }

    @Override
    public List<Spending> findSpendingByUser(User user) {
        return spendingRepo.findSpendingByUser(user);
    }

    @Override
    public List<Spending> findSpendingByCategory(Category category) {
        return spendingRepo.findSpendingByCategory(category);
    }
}
