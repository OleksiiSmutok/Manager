package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.repository.CategoryRepo;
import ua.oleksa.home.persistence.service.CategoryService;

/**
 * Created by Admin on 07.08.2017.
 */
@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryRepo categoryRepo;

    @Override
    public void add(String name,User user) {
        Category category = new Category(name,user);
        categoryRepo.save(category);
    }
}
