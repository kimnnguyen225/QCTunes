package com.herokuapp.qctunes.service;

import com.herokuapp.qctunes.beans.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {

    public List<User> findAll();
    public int addUser(User user) throws SQLException;
    public User getUser(String username, String password);
}
