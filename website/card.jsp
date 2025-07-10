<div class="row">

    <%@page import="java.io.*"%>
    <%@page import="java.sql.*"%>
    <%@page import="javax.servlet.*" %>
    <%@page  import="javax.servlet.http.*"%>
    <%@page  import ="java.util.*"%>
   <%
   Connection connection = null;
   Statement statement = null;
   ResultSet resultSet = null;
   try{
    Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","charvi0718");
     statement=connection.createStatement();
     String sql ="select *from product";
     resultSet = statement.executeQuery(sql);
     while(resultSet.next()){
      String id = resultSet.getString("product_id"); 
   String pname = resultSet.getString("product_name");
   String prate = resultSet.getString("sell_rate");
   String pinfo = resultSet.getString("product_information");
   String pimg=resultSet.getString("single_image");
      %>
      
      <div class="col-lg-3 col-md-6">
       <div class="card" style="width: 100%;">
        <img src="../images/<%=pimg%>" class="card-img-top" alt="..." height="400px" width="400px" >           <div class="card-body">
               <a href="details.jsp?id=<%=id%>"> <h5 class="card-title"><%=resultSet.getString("product_name")%></h5> </a>
                         <p class="card-text"><%=resultSet.getString("product_information")%></p>
             <a href="details.jsp?id=<%=id%>" class="btn btn-primary">details</a>
           </div>
         </div>
   </div>   
   <style>
       .card:hover{
         
           box-shadow: 1px 5px 10px 2px rgb(190, 188, 188);
       }
   </style>
   
      <%
          
   }
   }
   catch(Exception e){
     out.print(e);
   }
   
   
   
   %>
      </div>