package ua.oleksa.home.persistence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.oleksa.home.persistence.domain.Currency;

import java.util.List;

/**
 * Created by Admin on 17.08.2017.
 */
public interface CurrencyRepo extends JpaRepository<Currency,Integer> {

}
