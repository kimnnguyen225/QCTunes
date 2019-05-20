package com.herokuapp.qctunes.dao;

import com.herokuapp.qctunes.beans.User;
import com.herokuapp.qctunes.dao.util.ConnectionUtil;
import com.herokuapp.qctunes.dao.util.SQLQuery;

import java.net.ConnectException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAOImplement implements UserDAO{
    static Connection conn;
    static PreparedStatement ps;
    static ResultSet rs;

    @Override
    public List<User> findAll() throws SQLException {
        List<User> userList = new ArrayList<>();
        conn = ConnectionUtil.getNewConnection();
        ps = conn.prepareStatement(SQLQuery.SQL_SELECT_ALL_USER);
        rs = ps.executeQuery();

        while(rs.next()) {
            String username = rs.getString(1);
            String password = rs.getString(2);
            String firstName = rs.getString(3);
            String lastName = rs.getString(4);
            String address = rs.getString(5);
            Boolean subscription = rs.getBoolean(6);
            String phone = rs.getString(7);
            User user = new User(username, password, firstName, lastName, address,
                    subscription, phone);
            userList.add(user);
        }
        return userList;
    }

    @Override
    public User getUser(String username, String password) throws SQLException {
        User user = new User();

        try {
            conn = ConnectionUtil.getNewConnection();
            ps = conn.prepareStatement(SQLQuery.SQL_SELECT_USER);
            ps.setString(1, username);
            ps.setString(2,password);
            rs = ps.executeQuery();

            while(rs.next()) {
                user.setUsername(rs.getString(1));
                user.setPassword(rs.getString(2));
                user.setFirstName(rs.getString(3));
                user.setLastName(rs.getString(4));
                user.setAddress(rs.getString(5));
                user.setSubscription(rs.getBoolean(6));
                user.setPhone(rs.getString(7));
            }
            // conn.close();
        } catch (Exception e) {
            System.err.print(e);
        }
        return user;
    }

    @Override
    public int addUser(User user) throws SQLException {

        int status = 0;
        try {
            conn = ConnectionUtil.getNewConnection();
            ps = conn.prepareStatement(SQLQuery.SQL_INSERT_USER);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getFirstName());
            ps.setString(4, user.getLastName());
            ps.setString(5, user.getAddress());
            ps.setBoolean(6, user.isSubscription());
            ps.setString(7, user.getPhone());
            // execute the prepared statement insert
            status = ps.executeUpdate();
            // conn.close();
        } catch (Exception e) {
            // log exception
            throw e;
        }
        return status;
    }
}
