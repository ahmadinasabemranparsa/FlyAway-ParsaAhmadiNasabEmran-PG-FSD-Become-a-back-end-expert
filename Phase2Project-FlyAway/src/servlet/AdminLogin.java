package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static String password = "password";
	public static String email = "admin@flyaway.com";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String email = request.getParameter("emailEntered");
		String password = request.getParameter("passwordEntered");
		if (email.equals(AdminLogin.email) && password.equals(AdminLogin.password)) {
			out.println("You have LoggedIn");
			response.sendRedirect("admin-dashboard.jsp");
		}
		else {
			out.println("Login Failed : Incorrect email or password");
		}
		out.close();
	}

}
