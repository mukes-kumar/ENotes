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
<title>Home</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<br>
	<br>
	<br>



	<div class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>
		<div class="card mt-3">
			<%
			String addtrue = (String) session.getAttribute("add1");
			if (addtrue != null) {
			%>
			<div class="alert alert-success">
				<strong><%=addtrue%></strong> 

			</div>
			<%
			session.removeAttribute("add1");
			}
			%>

			<div class="card-body text-center">
				<img alt="Not found" src="image/Pen_page.png"
					class="img-fluid mx-auto" style="max-width: 250px;">
				<h1>START TAKING YOUR NOTES</h1>
				<a href="addNotes.jsp" class="btn btn-outline-primary">Start
					Here....</a>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>