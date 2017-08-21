package ua.oleksa.home.persistence.service;

import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.User;

import java.sql.Date;
import java.util.List;

/**
 * Created by Admin on 07.08.2017.
 */
public interface CategoryService {

    void add(Category category);

    void update(Category category);

    void update(int id,String name,String icon,Date date,User user);

    List<Category>findCategoryByUser(User user);

    Category findOne(int id);

    void delete(int id);

}
