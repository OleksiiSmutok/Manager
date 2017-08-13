package ua.oleksa.home.persistence.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.oleksa.home.persistence.domain.Icon;

import java.util.List;

/**
 * Created by Admin on 13.08.2017.
 */
public interface IconRepo extends JpaRepository<Icon,Integer> {
}
