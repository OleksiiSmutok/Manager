package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Icon;
import ua.oleksa.home.persistence.repository.IconRepo;
import ua.oleksa.home.persistence.service.IconService;

import java.util.List;

/**
 * Created by Admin on 13.08.2017.
 */
@Service
public class IconServiceImpl implements IconService {

    @Autowired
    IconRepo iconRepo;

    @Override
    public List<Icon> findAll() {
        return iconRepo.findAll();
    }

    @Override
    public Icon findOne(int id) {
        return iconRepo.findOne(id);
    }

}
