package com.example.techblog.servlets;

import com.example.techblog.entities.Message;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "LogoutServlet", urlPatterns = "/logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession s = req.getSession();
        s.removeAttribute("currentUser");
        Message m = new Message("Logout Successfully","success","alert-success");
        s.setAttribute("msg",m);
        resp.sendRedirect("login.jsp");

    }
}
