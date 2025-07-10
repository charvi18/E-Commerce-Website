<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.*" %>

<%
Connection connection = null; 
PreparedStatement pstmt = null;
ResultSet rs = null;

String product_id = request.getParameter("product_id");
String product_name = "";
String sell_rate = "";

try { 
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hanuman_sir, "root", "");

   {
       
        String query = "SELECT * FROM productdetail_admin WHERE product_id = ?";
        pstmt = connection.prepareStatement(query);
        pstmt.setString(1, product_id);
        rs = pstmt.executeQuery();
        if (rs.next()) {
            product_name = rs.getString("product_name");
            sell_rate = rs.getString("sell_rate");
        }
    }

        product_id = request.getParameter("product_id");
        product_name = request.getParameter("product_name");
        sell_rate = request.getParameter("sell_rate");

        
        String updateQuery = "UPDATE product SET product_name = ?, sell_rate = ? WHERE product_id = ?";
        pstmt = connection.prepareStatement(updateQuery);
        pstmt.setString(1, product_name);
        pstmt.setString(2, sell_rate);
        pstmt.setString(3, product_id);
        pstmt.executeUpdate();

       
        response.sendRedirect("productinfoview.jsp");
        return;
    }

%>
<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <h2>Product List</h2>
    <table border="1">
        <tr>
            <th>Product Name</th>
            <th>Sell Rate</th>
            <th>Action</th>
        </tr>
        <%
            // Fetch and display all products
            String query = "SELECT * FROM product";
            pstmt = connection.prepareStatement(query);
            rs = pstmt.executeQuery();
            while(rs.next()) { 
        %>
        <tr>
            <td><%= rs.getString("product_name") %></td>
            <td><%= rs.getString("sell_rate") %></td>
            <td><a href="?product_id=<%= rs.getString("product_id")%>">Edit</a></td>
        </tr>
        <%
            }
        %>
    </table>

    <div class="form-container">
        <h2>Product Attribute Form</h2>
        <form action="" method="post" enctype="multipart/form-data">
            <input type="hidden" name="product_id" value="<%= product_id %>">
            <div class="form-group">
                <label for="product_name">Product name</label>
                <input type="text" name="product_name" value="<%= product_name %>" placeholder="Enter product name...">
            </div> 

            <div class="form-group">
                <label for="sell_rate">Sell Rate</label>
                <input type="number" name="sell_rate" value="<%= sell_rate %>" placeholder="Enter product sell rate...">
            </div>
            <div class="form-group">
                <input type="submit" value="Update">
            </div>
        </form>
    </div>
</body>
</html>
<%
} catch (Exception e) { 
    out.println("Exception: " + e); 
} finally {
    if (rs != null) try { rs.close(); } catch (SQLException e) { }
    if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { }
    if (connection != null) try { connection.close(); } catch (SQLException e) { }
}
%>