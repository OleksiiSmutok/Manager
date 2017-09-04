package ua.oleksa.home.persistence.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ua.oleksa.home.persistence.domain.User;

import java.util.List;

/**
 * Created by Admin on 02.06.2017.
 */
public interface UserService {

    void add(User user);

    void edit(int id,String firstName, String secondName, String email, String phone, String login, String password);

    void edit(User user);

    void delete(int id);

    void addPhoto(User user,MultipartFile photo);

    User findOne(int id);

    User findByLogin(String login);

    List<User>findAll();


}
