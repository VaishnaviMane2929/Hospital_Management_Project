package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.UserDao;
import com.db.dbConnection;
import com.entity.Doctor;
import com.entity.User;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		 String email = req.getParameter("email");
	        String password = req.getParameter("password");

	        HttpSession session = req.getSession();
	        
	        DoctorDao dao=new DoctorDao(dbConnection.getConn());
	        Doctor doctor=dao.login(email, password);
	       
	        if (doctor != null) {
	            session.setAttribute("doctObj",doctor);
	            resp.sendRedirect("doctor/indesx.jsp"); // fixed typo here
	        } else {
				session.setAttribute("errorMsg", "invalid email & password");
				resp.sendRedirect("doctor_login.jsp");
			}
	}
	

}
