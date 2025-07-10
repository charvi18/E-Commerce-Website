<jsp:include page="menubar.jsp"/>
<div class="detail-row">
   
   <!-- <div clas="heading-s">
    //<strong style="margin-inline: 441px;">Cheesy Blast Roasted Makhana</strong>
   </div> -->

<%@page import="java.io.*" %>
    <%@page import="java.sql.*" %>
        <%@page import="javax.servlet.*" %>
            <%@page import="javax.servlet.http.*" %>
                <%@page import="java.util.*" %>
                    <%
                     Connection connection=null;
                     Statement statement=null; 
                     ResultSet resultSet=null;
                     String product_id=request.getParameter("id");
                    
                    
                      try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","charvi0718");
                        statement=connection.createStatement(); 
                        String sql="select * from productdetail_admin where product_id = '"+product_id+"'";
                        resultSet=statement.executeQuery(sql); 
                        while(resultSet.next()){ 
                       
                        
                        
                         String product_name = resultSet.getString("product_name");
                         String sell_rate = resultSet.getString("sell_rate");
                         String pimg = resultSet.getString("single_image");
                         String product_information = resultSet.getString("product_information");
                         %>
                         
                    
                        
                        </div>   
                        <div class="container px-4 text-center">
                            <div class="row gx-5">
                              <div class="col">
                               <div class="p-3">
                                 <img src="../images/<%=pimg%>" class="card-img-top" alt="..."> 
                               </div>
                              </div>
                              <div class="col">
                                <div class="p-3" >
                                    <div class="card-body" style="padding: 50px 50px;">
                                        <h6>Happingo.co</h6>
                                        <a href="details.jsp?product_id<%=product_id%>"> <h5 class="card-title"><%=product_name%></h5> </a>
                                                  <p class="card-text"><%=sell_rate%></p>
                                                  <p class="card-text"><%=product_information%></p>
                                                  <p class="card-text"><%=pimg%></p>
                                      <a href="Addtocart.jsp?product_id<%=product_id%>" class="btn btn-primary" >Add to cart</a>
                                      <a href="details.jsp" class="btn btn-primary">Buy it Now</a>
                                    </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        <style>
                            .card:hover{
                              
                                box-shadow: 1px 5px 10px 2px rgb(190, 188, 188);

                            }
                            .card{
                                display: flex;
                        
                                display: inline-flex;
                            }
                            .btn btn-primary{
                                text-align: left;
                                position: relative;
                                left:15%; 
                                
                            }
                            
                        </style>

                        <% 
                    } 
                    } catch(Exception e){
                         out.print(e);
                        }
                         %>
                        </div>