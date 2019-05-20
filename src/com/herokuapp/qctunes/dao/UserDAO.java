package com.herokuapp.qctunes.dao;

import com.herokuapp.qctunes.beans.User;

import java.sql.SQLException;
import java.util.List;

public interface UserDAO {
    public List<User> findAll() throws SQLException;
    public User getUser(String username, String password) throws SQLException;
    public int addUser(User user) throws SQLException;
}
