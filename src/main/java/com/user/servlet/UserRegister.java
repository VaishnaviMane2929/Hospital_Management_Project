package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.dbConnection;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullname= req.getParameter("fullname");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			User u=new User(fullname,email,password);
			
			UserDao dao=new UserDao(dbConnection.getConn());
			
			HttpSession session = req.getSession();
			
			
			boolean f=dao.register(u);
			if (f) {
				
				session.setAttribute("sucMsg", "Register succesfully");
				resp.sendRedirect("signUp.jsp");
			}
			else {
				session.setAttribute("errorMsg", "something wrong on server");
				resp.sendRedirect("signUp.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
