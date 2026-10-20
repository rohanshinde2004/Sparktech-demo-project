
package com.sparktech;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Demo credentials only. Replace with database authentication.
        if ("admin".equals(username) && "Admin@123".equals(password)) {

            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);

            response.sendRedirect(
                request.getContextPath() + "/dashboard.jsp");
        } else {
            response.sendRedirect(
                request.getContextPath() + "/login.jsp?error=1");
        }
    }
}
