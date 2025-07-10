package Admin;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;



public class productdelete extends HttpServlet{
    public void service(HttpServletRequest request,
    HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
  
  //  out.println("delete");
  //  out.println("");

   int product_id=Integer.parseInt(request.getParameter("product_id"));
  //  out.println(product_id);
 try 
{
 Connection connection=null;
         Class.forName("com.mysql.cj.jdbc.Driver");
         connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/hanuman_sir","root","");
   
  PreparedStatement stmt;
			String query= "DELETE FROM productdetail_admin WHERE product_id = ?";
			stmt=connection.prepareStatement(query);
			stmt.setInt(1,product_id);
			
			int row=stmt.executeUpdate();
  //  out.println("");
}
catch (Exception e)
   {
     out.println("exc"+e);
   }
   

 
 response.sendRedirect(request.getContextPath() + "/admin/Poductdelete.jsp"); 
}
  
  }