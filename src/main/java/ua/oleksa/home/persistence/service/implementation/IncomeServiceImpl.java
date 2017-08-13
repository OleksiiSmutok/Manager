package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.Income;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.repository.IncomeRepo;
import ua.oleksa.home.persistence.service.IncomeService;

import java.sql.Date;
import java.util.List;

/**
 * Created by Admin on 05.08.2017.
 */
@Service
public class IncomeServiceImpl implements IncomeService {

    @Autowired
    IncomeRepo incomeRepo;


    @Override
    public void add(String description, double sum, Date date, User user, Account account) {
        Income income = new Income(description,sum,date,user,account);
        incomeRepo.save(income);
    }

    @Override
    public void update(int id, String description, double sum) {
        Income income = incomeRepo.findOne(id);
        income.setDescription(description);
        income.setSum(sum);
        incomeRepo.save(income);
    }

    @Override
    public List<Income> findIncomeByUser(User user) {
        return incomeRepo.findIncomeByUser(user);
    }


}
