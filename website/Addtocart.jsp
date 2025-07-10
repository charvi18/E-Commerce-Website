<h2>add to cart</h2>

<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="java.util.*" %>
        <%
            Connection connection=null;
                     Statement statement=null; 
                     ResultSet resultSet=null;
                     String pname=request.getParameter("name");
                     //out.print(pname);
                     String product_name=null;
                     String sell_rate=null;
                     String product_information=null;
                     String product_id = request.getParameter("product_id");
                     

                     
                      try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java", "root", "charvi0718");
                        statement=connection.createStatement(); 
                        String sql="select * from product where product_id = '"+product_id+"'";
                        resultSet=statement.executeQuery(sql); 
                        while(resultSet.next()){ 
                       
                         product_name=resultSet.getString("product_name");
                         sell_rate=resultSet.getString("sell_rate");
                         product_information=resultSet.getString("product_information");
                       
                          
                         %>

                         <% 
                        } 
                        } catch(Exception e){
                             out.print(e);
                            }
                             %>
                             <p ><%=product_name%></p>
                             <p ><%=sell_rate%></p>
                             <p ><%=product_information%></p>

        
         

                            
       

                     <%
		
		
	
		
		try {
         

			
			
			PreparedStatement stmt;
			String query = "insert into  orderproduct3 (product_name,sell_rate,product_information) values(?,?,?)";
			stmt = connection.prepareStatement(query);
           

			stmt.setString(1, product_name);
			stmt.setString(2, sell_rate);
			stmt.setString(3, product_information);
     
			
			int row = stmt.executeUpdate(); // it returns no of rows affected.

			if (row > 0) {
			
				
			}

			else {
				out.println("insertion failed");
			}

		} catch (Exception e) {
			out.println("exc" + e);
		}

		

	

         
         %>