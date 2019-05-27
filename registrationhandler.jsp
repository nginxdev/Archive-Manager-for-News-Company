<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("name");    
    String password = request.getParameter("password");
    String uname = request.getParameter("uname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into members(name, uname, password) values ('" + name + "','" + uname + "','" + password + "')");
    if (i > 0) {
        response.sendRedirect("registrationsuccess.jsp");
    } else {
        response.sendRedirect("login.jsp");
    }
%>