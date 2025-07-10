package Admin;

import java.io.*;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class product extends HttpServlet {
	public void service(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.println("Product");

		String pname = request.getParameter("product_name");
		String prate = request.getParameter("product_rate");
		String pinfo = request.getParameter("product_information");
		
		out.print("" + pname);
		out.print("" + prate);
		out.print("" + pinfo);
		
		Connection connection = null;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hanuman_sir", "root", "");
			PreparedStatement stmt;
			String query = "insert into  product(product_name,product_rate,product_information) values(?,?,?)";
			stmt = connection.prepareStatement(query);

			stmt.setString(1, pname);
			stmt.setString(2, prate);
			stmt.setString(3, pinfo);
			
			int row = stmt.executeUpdate(); // it returns no of rows affected.

			if (row > 0) {
				out.print("register");
				response.sendRedirect(request.getContextPath() + "/admin/Product.jsp");
			}

			else {
				out.println("insertion failed");
			}

		} catch (Exception e) {
			out.println("exc" + e);
		}

		

	}
}