package com.herokuapp.qctunes.dao.util;

public class SQLQuery {

    public static final String SQL_SELECT_ALL_USER = "SELECT username, " +
            "password, firstName, lastName, address, subscription, phone FROM qctunes.user";
    public static final String SQL_INSERT_USER = "INSERT INTO user (username, password, " +
            "firstName, lastName, address, subscription, phone) VALUES (?, ?, ?, ?, ?, ?, ?)";
    public static final String SQL_SELECT_USER = "SELECT * FROM qctunes.user WHERE username = ? " +
            "AND" +
            " password = ?";
}
