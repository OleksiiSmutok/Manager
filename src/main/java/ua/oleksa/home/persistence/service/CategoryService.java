package ua.oleksa.home.persistence.service;

import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Icon;
import ua.oleksa.home.persistence.domain.User;

import java.sql.Date;
import java.util.List;

/**
 * Created by Admin on 07.08.2017.
 */
public interface CategoryService {

    void add(String name, Date date, User user, Icon icon);

    void update(Category category);

    List<Category>findCategoryByUser(User user);

    Category findOne(int id);

    void delete(int id);

}
