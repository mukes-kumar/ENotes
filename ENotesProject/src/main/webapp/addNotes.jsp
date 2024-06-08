<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");

if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please login...");
}
%>





<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<div class="container-fluid">
		<%@include file="all_component/navbar.jsp"%>
		<br> <br> <br> <br> <br>
		<div class="container">

			<h1 class="text-center">Add Your Notes</h1>
			<div class="card m-3">
				<div class="card-body">
					<div class="col-md-12">
						<form action="AddNotesServlet">


							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">

							<%
							}
							%>


							<div class="form-group">
								<label for="title">Enter Title :</label> <input type="text"
									class="form-control" id="title" name="title" required>
							</div>

							<div class="form-group">
								<label for="title">Enter Content :</label>
								<textarea rows="9" cols="" class="form-control" name="content"
									required></textarea>
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