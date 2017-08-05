package ua.oleksa.home.persistence.service.implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ua.oleksa.home.persistence.domain.User;
import ua.oleksa.home.persistence.repository.UserRepo;
import ua.oleksa.home.persistence.service.UserService;

import javax.transaction.Transactional;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Admin on 02.06.2017.
 */
@Service
public class UserServiceImpl implements UserService,UserDetailsService {

    @Autowired
    private UserRepo userRepo;

    @Transactional
    @Override
    public void add(User user) {
        userRepo.save(user);
    }

    @Override
    public void edit(int id,String firstName, String secondName, String email, String phone, String login, String password) {
        User user = userRepo.findOne(id);
        user.setFirstName(firstName);
        user.setSecondName(secondName);
        user.setEmail(email);
        user.setPhone(phone);
        user.setLogin(login);
        user.setPassword(password);
        userRepo.save(user);
    }

    @Override
    public void delete(int id) {
        userRepo.delete(id);
    }

    @Override
    public void addPhoto(User user, MultipartFile photo) {
        double random = Math.random()*5000;
        File file = new File("C:\\Users\\Admin\\IdeaProjects\\Manager\\src\\main\\webapp\\resources\\img\\"+random+"."+photo.getContentType().split("/")[1]);

        try {
            file.createNewFile();
            photo.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        user.setPhoto(random+"."+photo.getContentType().split("/")[1]);
        userRepo.save(user);
    }

    @Override
    public User findOne(int id) {
        return userRepo.findOne(id);
    }

    @Override
    public User findByLogin(String login) {
        return userRepo.findByLogin(login);
    }

    @Override
    public List<User> findAll() {
        return userRepo.findAll();
    }

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        User user = userRepo.findByLogin(login);
        List<GrantedAuthority> authorities= new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
        return new org.springframework.security.core.userdetails.User(user.getLogin(),user.getPassword(),authorities);
    }
}
