<jsp:include page="menubar.jsp"/>
<%@page import="java.io.*" %>
    <%@page import="java.sql.*" %>
        <%@page import="javax.servlet.*" %>
            <%@page import="javax.servlet.http.*" %>
                <%@page import="java.util.*" %>

<%

String country = request.getParameter("country");
String fname = request.getParameter("first_name");
String lname = request.getParameter("last_name");
String address = request.getParameter("address");
String landmark = request.getParameter("landmark");
String city = request.getParameter("city");
String state = request.getParameter("state");
String pincode = request.getParameter("pin_code");

/* out.print("" + country);
out.print("" + fname);
out.print("" + lname);
out.print("" + address);
out.print("" + landmark);
out.print("" + city);
out.print("" + state);
out.print("" + pincode); */

Connection connection=null;
Statement statement=null; 
ResultSet resultSet=null;




try {
         

    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hanuman_sir", "root", "");
    PreparedStatement stmt;
    String query = "insert into  address(country,first_name,last_name,address,landmark,city,state,pin_code) values(?,?,?,?,?,?,?,?)";
    stmt = connection.prepareStatement(query);
   // out.print(query);

    stmt.setString(1, country);
    stmt.setString(2, fname);
    stmt.setString(3, lname);
    stmt.setString(4, address);
    stmt.setString(5, landmark);
    stmt.setString(6, city);
    stmt.setString(7, state);
    stmt.setString(8, pincode);
    
    int row = stmt.executeUpdate(); // it returns no of rows affected.

    if (row > 0) {
        //out.print("register");
        //response.sendRedirect(request.getContextPath() + "/website/paymentscreen.jsp");
    }

    else {
        out.println("insertion failed");
    }
} catch (Exception e) {
    out.println("exc" + e);
}

%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Address Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        padding: 20px;
    }
    .container {
        max-width: 600px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .form-group {
        margin-bottom: 20px;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
    }
    .form-group input[type="text"],
    .form-group select {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .form-group select {
        height: 34px;
    }
    .btn {
        display: inline-block;
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
    }
    .btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Address Form</h2>
    <form action="#" method="post" >
        <div class="form-group">
            <label>Country</label>
            <select name="country" required>
                <option>Select country</option>
                <option>
                    india
                </option>
                <!-- Add more options here -->
            </select>
        </div>
        <div class="form-group">
            <label>First Name</label>
            <input type="text"  name="first_name" required>
           
        </div>

        <div class="form-group">
            <label>Last Name</label>
            <input type="text" name="last_name">
        </div>

        <div class="form-group">
            <label for="addressLine1">Address </label>
            <input type="text" id="addressLine1" name="address" required placeholder="Address">
        </div>
        <div class="form-group">
            <label >Address </label>
            <input type="text"  name="landmark" placeholder="Apartment,flat(optional)">
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input type="text" id="city" name="city" required>
        </div>

        <div class="form-group">
            <label>state</label>
            <select  name="state" required>
                <option>Select state</option>
                <option>
                    Rajasthan
                </option>
                <!-- Add more options here -->
            </select>
        </div>
        
        <div class="form-group">
            <label>Pin Code</label>
            <input type="number" name="pin_code" required>
        </div>
        <button type="submit" class="btn">Submit</button>
    </form>
</div>

</body>
</html>