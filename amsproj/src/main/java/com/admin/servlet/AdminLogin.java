package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            
            HttpSession session = req.getSession();
        
            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                session.setAttribute("adminObj", new User());
                resp.sendRedirect("admin/index.jsp");
            } else {
                // Set error message and forward to the login page
                req.setAttribute("errorMessage", "Error: Incorrect email or password. Please try again.");
                req.getRequestDispatcher("admin_login.jsp").forward(req, resp);
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
