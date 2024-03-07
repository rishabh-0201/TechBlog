package com.example.techblog.servlets;

import com.example.techblog.dao.UserDao;
import com.example.techblog.entities.Message;
import com.example.techblog.entities.User;
import com.example.techblog.helper.ConnectionProvider;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

import static java.lang.System.out;

@WebServlet(name = "webServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try(PrintWriter out = resp.getWriter()){

            out.println("logged in");

            // login
            // get username and password

            String userEmail = req.getParameter("email");
            String userPassword = req.getParameter("password");

            UserDao dao = new UserDao(ConnectionProvider.getConnection());
            User u = dao.getUserByEmailAndPassword(userEmail,userPassword);

            if(u == null){

                // login
                //error
//                out.println("Invalid details... try again");

                Message msg = new Message("Invalid details...","error","alert-danger");
                HttpSession s = req.getSession();
                s.setAttribute("msg",msg);

                resp.sendRedirect("login.jsp");
            }


            else{

                // login success
                HttpSession s = req.getSession();
                s.setAttribute("currentUser",u);
                resp.sendRedirect("profile.jsp");

            }
        }

    }
}
