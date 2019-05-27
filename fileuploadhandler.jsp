 <%@ page import="java.io.*"%>
 <%@page import="com.oreilly.servlet.MultipartRequest" %>
 <%@ page import="java.util.*" %>
 <%@ page import ="java.sql.*" %>
 <%
try
   {
    MultipartRequest mrequest = new MultipartRequest(request, "E:/uploads");
    String file_name=mrequest.getParameter("fname");
    String file_date=mrequest.getParameter("date");
    String file_category=mrequest.getParameter("category");
    Enumeration files = mrequest.getFileNames();
    System.out.println(file_name+file_date+file_name);
    while(files.hasMoreElements() )
      {
        String upload = (String)files.nextElement();
        String file_origname = mrequest.getFilesystemName(upload);
        System.out.println(file_origname);
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "root");
        Statement st = con.createStatement();
        int i = st.executeUpdate("insert into reports(filename, filecategory, filepath, date) values ('" + file_name + "','" + file_category + "','" + file_origname + "','" + file_date + "')");
        
      
        session.setAttribute("filename", file_origname);
        response.sendRedirect("fileupload.jsp");
    }
}
catch(Exception ex)
{
	System.out.println("Error creating file: " + ex );
	session.setAttribute("filename", "");
	response.sendRedirect("uploadFile.jsp");
}%>