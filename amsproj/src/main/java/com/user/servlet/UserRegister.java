package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String fullName=req.getParameter("fullname");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			User u = new User(fullName,email,password);
			
			UserDao dao = new UserDao(DBConnect.getConn());
			
			HttpSession session = req.getSession();
			
			
			
			 if (email.isEmpty() || password.isEmpty()) {
	                req.setAttribute("errorMessage", "Error: Email and password are required fields.");
	                req.getRequestDispatcher("admin_login.jsp").forward(req, resp);
	                return;
	            }
	            
	            // Check if email contains only digits (numeric)
	            if (email.matches("\\d+")) {
	                req.setAttribute("errorMessage", "Error: Email cannot be numeric.");
	                req.getRequestDispatcher("admin_login.jsp").forward(req, resp);
	                return;
	            }
			
			
			
			boolean f=dao.register(u);
			if(f) {
				
				session.setAttribute("sucmsg", "Register Succesfully");
				
				resp.sendRedirect("signup.jsp?success=true");
			}
			else {
				session.setAttribute("errormsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp?error=true");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
