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
    
   String pname = resultSet.getString("product_name");
   String sell_rate = resultSet.getString("sell_rate");
   String pinfo = resultSet.getString("product_information");
   String single_image = resultSet.getString("single_image");
      %>
      
      <div class="col-lg-3 col-md-6">
       <div class="card" style="width: 100%;">
           <img src="../images/<%=single_image%>" class="card-img-top" alt="..." height="100px" width="100px">
           <div class="card-body">
               <a href="details.jsp?name=<%=pname%>"> 
                <p class="card-text"><%=resultSet.getString("single_image")%></p>
                <h5 class="card-title"><%=resultSet.getString("product_name")%></h5> 
               <p class="card-text"><%=resultSet.getString("sell_rate")%></p>
                         <p class="card-text"><%=resultSet.getString("product_information")%></p>
             <a href="Poductdelete.jsp?name=<%=pname%>" class="btn btn-primary">Delete</a>
             <a href="productedit.jsp?name=<%=pname%>" class="btn btn-primary">Edit</a>
           </div>
         </div>
   </div>   
   <style>
       .card:hover{
         
           box-shadow: 1px 5px 10px 2px rgb(190, 188, 188);
       }
       .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 0 -15px; 
        }

        .col-lg-3 {
            flex: 0 0 calc(25% - 30px); 
            max-width: calc(25% - 30px); 
            margin: 15px; 
        }

        .card {
            width: 100%;
        }

        .card:hover {
            box-shadow: 1px 5px 10px 2px rgb(190, 188, 188);
        }

        .card-img-top {
            height: 100px;
            width: 100px;
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