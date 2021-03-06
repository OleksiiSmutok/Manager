package ua.oleksa.home.persistence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Spending;
import ua.oleksa.home.persistence.domain.User;

import java.util.List;

/**
 * Created by Admin on 02.06.2017.
 */
public interface SpendingRepo extends JpaRepository<Spending,Integer> {

    List<Spending>findSpendingByUser(User user);

    List<Spending>findSpendingByCategory(Category category);
}
