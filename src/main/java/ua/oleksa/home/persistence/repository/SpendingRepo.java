package ua.oleksa.home.persistence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.oleksa.home.persistence.domain.Spending;

/**
 * Created by Admin on 02.06.2017.
 */
public interface SpendingRepo extends JpaRepository<Spending,Integer> {
}
