package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Currency;
import ua.oleksa.home.persistence.repository.CurrencyRepo;
import ua.oleksa.home.persistence.service.CurrencyService;

import java.util.List;

/**
 * Created by Admin on 17.08.2017.
 */
@Service
public class CurrencyServiceImpl implements CurrencyService {

    @Autowired
    CurrencyRepo currencyRepo;

    @Override
    public List<Currency>findAll() {
        return currencyRepo.findAll();
    }

    @Override
    public Currency findOne(int id) {
        return currencyRepo.findOne(id);
    }
}
