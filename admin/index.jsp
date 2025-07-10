<%
Cookie ck[]=request.getCookies();  
String name=null;
for (Cookie c : ck) { 
    String tname = c.getName(); 
    if (tname.equals("uname")) { 
                name = c.getValue(); 
    } 
} 
if(name==null){
  response.sendRedirect("login.jsp");


}
else{
    response.sendRedirect("admin.jsp");
}
%>