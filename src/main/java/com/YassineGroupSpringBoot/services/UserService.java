package com.YassineGroupSpringBoot.services;

import com.YassineGroupSpringBoot.model.User;
import com.YassineGroupSpringBoot.repository.UserRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class UserService {


    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository=userRepository;
    }

    public void saveMyUser(User user ) {
        userRepository.save(user);
    }

    public List<User> showAllUsers(){
        List<User> users = new ArrayList<User>();
        for(User user : userRepository.findAll()) {
            users.add(user);
        }

        return users;
    }

    public void deleteMyUser(int id) {
        userRepository.delete(id);
    }

    public User editUser(int id) {
        return userRepository.findOne(id);
    }

    public User findByUsernameAndPassword(String username, String password) {
        return userRepository.findByUsernameAndPassword(username, password);
    }

}
