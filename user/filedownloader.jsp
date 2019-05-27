<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String category = (String)session.getAttribute("category");;    
    String date = request.getParameter("date");
    System.out.println(category+date);

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from reports where filecategory='" + category + "' and date='" + date + "'");
    if (rs.next()) {
        System.out.println(rs.getString(2)+rs.getString(4));
    	session.setAttribute("filename", rs.getString(2));
    	session.setAttribute("origfilename", rs.getString(4));
    	session.setAttribute("filecategory", rs.getString(3));
    	
        String target= (String) session.getAttribute("category");
        response.sendRedirect(target+".jsp");
    } else {
    	session.setAttribute("filename", "");
    	session.setAttribute("origfilename", "none");
    	session.setAttribute("filecategory", "");
        String target= (String) session.getAttribute("category");
        response.sendRedirect(target+".jsp");
    }
%>