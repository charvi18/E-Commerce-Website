<%@page import="java.sql.*" %>

<%
try { 
    Connection connection = null; 
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java", "root", "charvi0718");
    String query = "select * from product";
    Statement stmt = connection.createStatement();
    ResultSet rs = stmt.executeQuery(query);
%>
<!DOCTYPE html>
<html>
<head>
    <style>
        .styled-table {
            width: 100%;
            border-collapse: collapse;
        }
        .styled-table th, .styled-table td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        .styled-table th {
            background-color: #f2f2f2;
        }
        .styled-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .action-buttons img {
            width: 30px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <table class="styled-table">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Category</th>
                <th>MRP Rate</th>
                <th>Sell Rate</th>
                <th>Information</th>
                <th>Size</th>
                <th>Colour</th>
                <th>Rating</th>
                <th>Rating Info</th>
                <th>Single Image</th>
                <th>Image 1</th>
                <th>Image 2</th>
                <th>Image 3</th>
                <th>Image 4</th>
                <th>Brand</th>
                <th>Material</th>
                <th>Pattern</th>
                <th>Chart Size Image</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
<%
    while(rs.next()) {
        int product_id = rs.getInt("product_id");
%>
            <tr>
                <td><%=rs.getString("product_name")%></td>
                <td><%=rs.getString("product_category")%></td>
                <td><%=rs.getString("mrp_rate")%></td>
                <td><%=rs.getString("sell_rate")%></td>
                <td><%=rs.getString("product_information")%></td>
                <td><%=rs.getString("size")%></td>
                <td><%=rs.getString("colour")%></td>
                <td><%=rs.getString("rating")%></td>
                <td><%=rs.getString("rating_information")%></td>
                <td><%=rs.getString("single_image")%></td>
                <td><%=rs.getString("multiple_image1")%></td>
                <td><%=rs.getString("multiple_image2")%></td>
                <td><%=rs.getString("multiple_image3")%></td>
                <td><%=rs.getString("multiple_image4")%></td>
                <td><%=rs.getString("product_brand")%></td>
                <td><%=rs.getString("product_material")%></td>
                <td><%=rs.getString("product_pattern")%></td>
                <td><%=rs.getString("chart_size_image")%></td>
                <td class="action-buttons">
                    <a href="../productdelete?product_id=<%=product_id %>">
                        <img src="https://th.bing.com/th/id/OIP.hIti-AfJymeRvwtk9gubhAHaHa?rs=1&pid=ImgDetMain" alt="Delete" >
                    </a>
                    <a href="productedit.jsp?product_id=<%=product_id %>">
                        <img src="https://th.bing.com/th/id/OIP.rdP0aGDOcE53C5AP-pXNRwHaHa?rs=1&pid=ImgDetMain" alt="Edit">
                    </a>
                </td>
            </tr>
<%
    } 
%>
        </tbody>
    </table>
</body>
</html>
<%
} catch (Exception e) { 
    out.println("Exception: " + e); 
} 
%>