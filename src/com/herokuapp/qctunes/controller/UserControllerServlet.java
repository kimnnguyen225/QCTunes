package com.herokuapp.qctunes.controller;

import com.google.gson.Gson;
import com.herokuapp.qctunes.beans.User;
import com.herokuapp.qctunes.service.UserService;
import com.herokuapp.qctunes.service.UserServiceImplement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/UserControllerServlet")
public class UserControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserService userService;

    @Override
    public void init() throws ServletException {
        super.init();
    userService = new UserServiceImplement();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<User> list = userService.findAll();
        response.setContentType("Application/json");
        // Get the printwriter object from response to write the required json object to the output stream
        PrintWriter out = response.getWriter();

        Gson gson = new Gson();
        if(list.size()>0) {
            String jsonData = gson.toJson(list);
            out.print(jsonData);
        }
        out.close();
    }
}
