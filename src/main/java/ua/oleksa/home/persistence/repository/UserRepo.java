package ua.oleksa.home.persistence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;
import ua.oleksa.home.persistence.domain.User;

import java.util.List;

/**
 * Created by Admin on 02.06.2017.
 */
@Transactional
public interface UserRepo extends JpaRepository<User,Integer> {

    User findByLogin(String login);

}
