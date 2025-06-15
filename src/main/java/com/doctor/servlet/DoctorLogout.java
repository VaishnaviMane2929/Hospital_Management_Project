package com.doctor.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/doctorLogout")
public class DoctorLogout extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Get and invalidate the old session
        HttpSession oldSession = req.getSession(false);
        if (oldSession != null) {
            oldSession.removeAttribute("doctObj");
            oldSession.invalidate();
        }

        // Create new session and set success message
        HttpSession newSession = req.getSession(true);
        newSession.setAttribute("sucMsg", "Doctor logout successfully");

        // Redirect to login page
        resp.sendRedirect(req.getContextPath() + "/doctor_login.jsp");
    }
}
