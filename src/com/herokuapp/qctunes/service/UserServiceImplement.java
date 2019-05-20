package com.herokuapp.qctunes.service;

import com.herokuapp.qctunes.beans.User;
import com.herokuapp.qctunes.dao.UserDAO;
import com.herokuapp.qctunes.dao.UserDAOImplement;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserServiceImplement implements UserService {

    private UserDAO userDAO = new UserDAOImplement();

    @Override
    public List<User> findAll() {

        List<User> list = new ArrayList<>();
        try {
            list = userDAO.findAll();
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }

    @Override
    public int addUser(User user) throws SQLException {
        int status = 0;
        try {
            status = userDAO.addUser(user);
        } catch (Exception e) {
            System.err.print(e);
        }
        return status;
    }

    @Override
    public User getUser(String username, String password) {
        return null;
    }
}
