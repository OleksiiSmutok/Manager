package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Icon;
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
    public void add(String name, Date date,User user, Icon icon) {
        Category category = new Category(name,date,user,icon);
        categoryRepo.save(category);
    }

    @Override
    public void update(Category category) {
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
