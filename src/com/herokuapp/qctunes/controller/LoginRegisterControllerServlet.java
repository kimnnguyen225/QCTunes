package com.herokuapp.qctunes.controller;

import com.herokuapp.qctunes.beans.User;
import com.herokuapp.qctunes.dao.UserDAO;
import com.herokuapp.qctunes.dao.UserDAOImplement;
import com.herokuapp.qctunes.service.UserService;
import com.herokuapp.qctunes.service.UserServiceImplement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(urlPatterns = "/loginRegisterUrl")
public class LoginRegisterControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDAO userDAO = new UserDAOImplement();

        String uName = "" + request.getParameter("un");
        String pw = "" + request.getParameter("pw");
        String fName = "" + request.getParameter("firstName");
        String lName = "" + request.getParameter("lastName");
        String addr = "" + request.getParameter("address");
        String phone = "" + request.getParameter("phone");
        String inputValue = request.getParameter("submit"); //name="submit"

        User user = null;
        try {
            user = userDAO.getUser(uName, pw);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // System.out.println(user.getUsername() + user.getPassword());
        // value= "Login" on login.jsp & value = "Register" on register.jsp
        if (inputValue.equals("Login") && user != null && user.getFirstName() != null && user.getLastName() != null) {
            request.setAttribute("nameMessage", user.getFirstName() + user.getLastName());
            request.getRequestDispatcher("user-account.jsp").forward(request, response);
        } else if (inputValue.equals("Register")) {
            //user.setUserId(request.getParameter(null));
            assert user != null;
            user.setUsername(uName);
            user.setPassword(pw);
            user.setFirstName(fName);
            user.setLastName(lName);
            user.setAddress(addr);
            user.setPhone(phone);
            try {
                userDAO.addUser(user);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            request.setAttribute("successMessage","Registration Successful! Please login to " +
                    "continue");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.setAttribute("dataNotFoundMessage","Data Not Found, " +
                    "please try to login again or register for a QC-Tunes account");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
