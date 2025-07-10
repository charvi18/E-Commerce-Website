<jsp:include page="menubar.jsp"/>

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
 int sum = 0;
 try{
  Class.forName("com.mysql.cj.jdbc.Driver");
    connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","charvi0718");
   statement=connection.createStatement();
   String sql ="select * from orderproduct3";
   resultSet = statement.executeQuery(sql);
   
   while(resultSet.next()){
  
 String pname = resultSet.getString("product_name");
 String prate = resultSet.getString("sell_rate");
 String pinfo = resultSet.getString("product_information");
 String pimg = resultSet.getString("single_image");
 
 int p=Integer.parseInt(prate);
 sum = sum+p;
    %>
    
 
   <div class="container px-4 text-center">
      <div class="row gx-5">
        <div class="col">
         <div class="p-3">
          <img src="../images/<%=pimg%>" class="card-img-top" alt="..."style="height:200px;">
         </div>
        </div>
        <div class="col">

          <div class="p-3" >
              <div class="card-body" style="padding: 50px 50px;">
                  <h6>Happingo.co</h6>
                  <a href="details.jsp?name=<%=pname%>"> <h5 class="card-title"><%=resultSet.getString("product_name")%></h5> </a>
                            <p class="card-text"><%=resultSet.getString("sell_rate")%></p>
                            <p class="card-text"><%=resultSet.getString("product_information")%></p>

              </div>
          </div>
        </div>
        <div class="col">
          <h1>quantity change button</h1>

        </div>
      </div>
    </div> 
  <style>
      .card:hover{
        
          box-shadow: 1px 5px 10px 2px rgb(190, 188, 188);

      }
      /* .card{
          display: flex;
  
          display: inline-flex;
      }
      .btn btn-primary{
          text-align: left;
          position: relative;
          left:15%; 
       
      } */
      
  </style>
 
    <%
        
 }
 }
 catch(Exception e){
   out.print(e);
 }
 
 
 
 %>
    </div>
    
    <jsp:include page="footer.jsp"/>
    <div style="width: 100%; height: 100px; background-color: brown; position:fixed; bottom: 0px; right: 0px; left: 0px;">
      <div class="row">
        <div class="col" style="color: aliceblue; font-size: xx-large;"><span>Total Amount</span><%=sum%></div>
        <div class="col" style="color: aliceblue; font-size: xx-large;">
          <h5>Taxes, discounts and shipping calculated at checkout</h5>
          <a href="address.jsp" style="text-decoration:none ; color: aliceblue;"> Check out </a>
        </div>
      </div>
     
    </div>