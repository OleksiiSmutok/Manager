package ua.oleksa.home.persistence.service;

import ua.oleksa.home.persistence.domain.Category;
import ua.oleksa.home.persistence.domain.Icon;

import java.util.List;

/**
 * Created by Admin on 13.08.2017.
 */
public interface IconService {

    List<Icon>findAll();

    Icon findOne(int id);

}
