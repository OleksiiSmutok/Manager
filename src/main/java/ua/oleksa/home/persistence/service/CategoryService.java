package ua.oleksa.home.persistence.service;

import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.User;

import java.util.List;

/**
 * Created by Admin on 07.08.2017.
 */
public interface CategoryService {

    void add(String name, User user);

    List<Category>findCategoryByUser(User user);
}
