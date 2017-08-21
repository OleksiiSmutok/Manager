package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.repository.CategoryRepo;
import ua.oleksa.home.persistence.service.CategoryService;

import java.sql.Date;
import java.util.List;

/**
 * Created by Admin on 07.08.2017.
 */
@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryRepo categoryRepo;

    @Override
    public void add(Category category) {
        categoryRepo.save(category);
    }

    @Override
    public void update(Category category) {
        categoryRepo.save(category);
    }

    @Override
    public void update(int id, String name, String icon, Date date, User user) {
        Category category = categoryRepo.findOne(id);
        category.setName(name);
        category.setIcon(icon);
        category.setDate(date);
        category.setUser(user);
        categoryRepo.save(category);
    }

    @Override
    public List<Category> findCategoryByUser(User user) {
        return categoryRepo.findCategoryByUser(user);
    }

    @Override
    public Category findOne(int id) {
        return categoryRepo.findOne(id);
    }

    @Override
    public void delete(int id) {
        categoryRepo.delete(id);
    }

}
