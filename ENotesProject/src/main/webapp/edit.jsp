<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.Db.DBConnect"%>
<%@ page import="com.DAO.PostDAO"%>

<%@page import="java.util.List"%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.User.Post"%>

<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");

if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please login...");
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>

	<%
	Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	
	PostDAO post= new PostDAO(DBConnect.getConn());
	Post p = post.getDataById(noteid);
	
	
	%>

	<div class="container-fluid">
		<%@include file="all_component/navbar.jsp"%>
		<br> <br> <br> <br> <br>
		<div class="container">

			<h1 class="text-center">Edit Your Notes</h1>
			<div class="card m-3">
				<div class="card-body">
					<div class="col-md-12">
						<form action="NoteEditServlet" method="post">

							<input type="hidden" value="<%=noteid%>" name="noteid">

							<div class="form-group">
								<label for="title">Enter Title :</label> <input type="text"
									class="form-control" id="title" name="title" value="<%= p.getTitle()%>" required>
							</div>

							<div class="form-group">
								<label for="title">Enter Content :</label>
								<textarea rows="9" cols="" class="form-control" name="content" 
									required><%= p.getContent()%></textarea>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Add Note</button>

							</div>
						</form>

					</div>
				</div>
			</div>
		</div>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>