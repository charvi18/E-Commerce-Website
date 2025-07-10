package Admin;

import java.io.*;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.http.Part;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.MultipartConfig;

@MultipartConfig

public class Productinfo extends HttpServlet {
	public void service(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

	

		Part file = request.getPart("image");
		String imageFileName = file.getSubmittedFileName();
		String path = request.getServletContext().getRealPath("images");
		String uploadPath=path+"/"+imageFileName;

		try {

			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();

			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();

		}

		catch (Exception e) {
			e.printStackTrace();
		}

		String product_name = request.getParameter("product_name");
		String product_category = request.getParameter("product_category");
		String mrp_rate = request.getParameter("mrp_rate");
		String sell_rate = request.getParameter("sell_rate");
		String product_information = request.getParameter("product_information");
		String size = request.getParameter("size");
		String colour = request.getParameter("colour");
		String rating = request.getParameter("rating");
		String rating_information = request.getParameter("rating_information");
		// String single_image = request.getParameter("single_image");
		String multiple_image1 = request.getParameter("multiple_image1");
		String multiple_image2 = request.getParameter("multiple_image2");
		String multiple_image3 = request.getParameter("multiple_image3");
		String multiple_image4 = request.getParameter("multiple_image4");
		String product_brand = request.getParameter("product_brand");
		String product_material = request.getParameter("product_material");
		String product_pattern = request.getParameter("product_pattern");
		String chart_size_image = request.getParameter("chart_size_image");

		// out.print(""+product_name);
		// out.print(""+password);
		// out.print(""+name);

		Connection connection = null;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hanuman_sir", "root", "");
			PreparedStatement stmt;
			String query = "insert into productdetail_admin(product_name,product_category,mrp_rate,sell_rate,product_information,size,colour,rating,rating_information,single_image,multiple_image1,multiple_image2,multiple_image3,multiple_image4,product_brand,product_material,product_pattern,chart_size_image) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			stmt = connection.prepareStatement(query);

			stmt.setString(1, product_name);
			stmt.setString(2, product_category);
			stmt.setString(3, mrp_rate);
			stmt.setString(4, sell_rate);
			stmt.setString(5, product_information);
			stmt.setString(6, size);
			stmt.setString(7, colour);
			stmt.setString(8, rating);
			stmt.setString(9, rating_information);
			stmt.setString(10, imageFileName);
			stmt.setString(11, multiple_image1);
			stmt.setString(12, multiple_image2);
			stmt.setString(13, multiple_image3);
			stmt.setString(14, multiple_image4);
			stmt.setString(15, product_brand);
			stmt.setString(16, product_material);
			stmt.setString(17, product_pattern);
			stmt.setString(18, chart_size_image);

			int row = stmt.executeUpdate(); // it returns no of rows affected.

			if (row > 0) {
				//out.print("product info");
				 response.sendRedirect(request.getContextPath() + "/admin/productdetailview.jsp");
			}

			else {
				System.out.println("Failed to upload image.");
			}

		} catch (Exception e) {
			out.println("exc" + e);
		}

		/* response.sendRedirect(request.getContextPath() + "/HomePage.jsp"); */

	}
}