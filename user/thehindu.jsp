<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="includes/header.jsp" />
<%
session.setAttribute("filepath", "E:"+"/"+"uploads");
session.setAttribute("category", "thehindu");
%>
<div class="navbar navbar-default container-fluid">
    <div class="navbar-header">
        <div class="navbar-brand" >Hindu | Download Reports </div>
        <ul class="nav navbar-nav">
	      <li class="active"><a href="thehindu.jsp">The Hindu</a></li>
	      <li><a href="businessline.jsp">Business Line</a></li>
	      <li><a href="tamilhindu.jsp">Tamil Hindu</a></li>
	      <li><a href="sportstar.jsp">Sportstar</a></li>
	      <li><a href="mobileapps.jsp">Mobile Apps</a></li>
	      <li><a href="socialmedia.jsp">Social Media</a></li>
	      <li><a href="digitalmarketing.jsp">Digital Marketing</a></li>
	    </ul>
    </div>
</div>
<div class="container">
  <div class="jumbotron">
    <h1>The Hindu</h1> 
    <p>Generic information about this category.</p> 
  </div>
<form action="filedownloader.jsp" METHOD="POST">
Date <input type="date" name="date" required><br><br>

 <input type="submit" value="submit">
 </form>

<br>
<%if(session.getAttribute("origfilename").equals("none")){ %>
No Reports for this selection
<%} else{%>
<%if(session.getAttribute("filecategory").equals(session.getAttribute("category"))){ %>
<%="file:///"+session.getAttribute("filepath")+"/"+session.getAttribute("origfilename")%>
<br>
Download report <a href="<%="file:///"+session.getAttribute("filepath")+"/"+session.getAttribute("origfilename")%>">Here</a>
<iframe src=<%="file:///"+session.getAttribute("filepath")+"/"+session.getAttribute("origfilename")%> width="800px" height="600px" ></iframe>
<%} }%>
</div>
</body>
</html>