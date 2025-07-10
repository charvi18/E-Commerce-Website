package Admin;

import java.io.PrintWriter;
import java.io.*;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Productdb extends HttpServlet {
    public void service(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print("hello");
    }
}