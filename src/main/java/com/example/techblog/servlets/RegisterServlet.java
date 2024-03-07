package com.example.techblog.servlets;



import com.example.techblog.dao.UserDao;
import com.example.techblog.entities.User;
import com.example.techblog.helper.ConnectionProvider;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@MultipartConfig
@WebServlet(name = "RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try (PrintWriter out = resp.getWriter()){

            // fetch all form data

            String check = req.getParameter("check");
            if(check==null){

                out.println("box not checked");
            }
            else {

                // baaki ka data yaha nikalna hai

                String name = req.getParameter("user_name");
                String email = req.getParameter("user_email");
                String password = req.getParameter("user_password");
                String gender = req.getParameter("gender");
                String about = req.getParameter("about");

                // create user object
                User user = new User(name,email,password,gender,about);

                // create a userdao object;

                UserDao dao = new UserDao(ConnectionProvider.getConnection());
                if(dao.saveUser(user)){
                    // save
                    out.println("done");
                }else {
                    out.println("error");
                }
            }

        }

    }
}
