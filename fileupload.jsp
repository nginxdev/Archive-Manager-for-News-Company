<jsp:include page="includes/adminheader.jsp" />
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} 
    else {
%>

<p><%=session.getAttribute("userid")%><a href='logout.jsp'>Log out</a></p>
<div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form ENCTYPE="multipart/form-data" role="form" method="post" action="fileuploadhandler.jsp" autocomplete="off">
                <h2>Upload your reports</h2>
                <hr/>
                
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
                    <input class="form-control input-lg" type="file" name='file' placeholder="your file" required/>
                </div> 
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                    <input class="form-control input-lg" type="text" name='fname' placeholder="your file name" required/>
                </div>         
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    <input class="form-control input-lg" type="date" name='date' placeholder="date" required/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
                   <select name="category" class="form-control" required>
						  <option value="">Select Category</option>
						  <option value="thehindu">The Hindu</option>
						  <option value="businessline">Business Line</option>
						  <option value="tamilhindu">Tamil Hindu</option>
						  <option value="sportstar">Sportstar</option>
						  <option value="mobileapps">Mobile Apps</option>
						  <option value="socialmedia">Social Media</option>
						  <option value="digitalmarketing">Digital Marketing</option>
				   </select>
                </div> 
                
                <hr/>
                <div class="form-group">
                    <input type="submit" name="submit" value="Upload File" class="btn btn-primary btn-block" tabindex="5"></input>
                </div>
            </form>
        </div>
    </div>
<!-- <FORM ENCTYPE="multipart/form-data" ACTION="fileuploadhandler.jsp" METHOD="POST">
choose file  <input type="file" name="file" required><br><br>
Name of the report<input type="text" name="fname" required><br><br>
Date <input type="date" name="date" required><br><br>
Category 	<select name="category" required>
				  <option value="">Select Category</option>
				  <option value="thehindu">The Hindu</option>
				  <option value="businessline">Business Line</option>
				  <option value="tamilhindu">Tamil Hindu</option>
				  <option value="sportstar">Sportstar</option>
				  <option value="mobileapps">Mobile Apps</option>
				  <option value="socialmedia">Social Media</option>
				  <option value="digitalmarketing">Digital Marketing</option>
			</select><br><br>
 <input type="submit" value="submit">
</FORM>-->
<%
if ((session.getAttribute("filename") != null) || (session.getAttribute("filename") != "")){
	%>
	Your file <b> <%=session.getAttribute("filename")%> </b> has uploaded successfully.
	<%
	}
   }
%>
