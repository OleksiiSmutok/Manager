package ua.oleksa.home.persistence.service;



/**
 * Created by Admin on 05.08.2017.
 */
public interface IncomeService {

    void addIncome(String description,double sum);

    void update(int id,String description,double sum);
}
