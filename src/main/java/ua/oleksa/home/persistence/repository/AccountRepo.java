package ua.oleksa.home.persistence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.oleksa.home.persistence.domain.Account;
import ua.oleksa.home.persistence.domain.User;

import java.util.List;

/**
 * Created by Admin on 02.06.2017.
 */
public interface AccountRepo extends JpaRepository<Account,Integer> {

    List<Account>findAccountByUser(User user);
}
