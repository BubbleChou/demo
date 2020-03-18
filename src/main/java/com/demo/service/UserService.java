package com.demo.service;

import com.demo.bean.User;

import java.util.List;

public interface UserService {
    User findUserById(Integer id);

    List<User> findAll();

    boolean deleteUser(Integer id);

    Integer updateUser(User user);

    void saveUser(User user);

}
