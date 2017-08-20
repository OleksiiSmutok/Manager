package ua.oleksa.home.persistence.service;

import ua.oleksa.home.persistence.domain.Currency;

import java.util.List;

/**
 * Created by Admin on 17.08.2017.
 */
public interface CurrencyService {

    List<Currency>findAll();

    Currency findOne(int id);
}
