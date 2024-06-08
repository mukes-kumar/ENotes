<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>

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
<title>Show Notes</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>


	<div class="container">
		<br>
		<br>
		<br>
		<br>
		
		<%
		String updateMsg = (String) session.getAttribute("updateMsg");
		if (updateMsg != null) {
		%>
		<div class="alert alert-success ">
			<strong><%=updateMsg%></strong>

		</div>
		<%
		session.removeAttribute("updateMsg");
		}
		
		
		
		%>

		<%
		String worngMsg = (String) session.getAttribute("worngMsg");
		if (worngMsg != null) {
		%>
		<div class="alert alert-danger">
			<strong><%=worngMsg%></strong>

		</div>
		<%
		session.removeAttribute("worngMsg");
		}
		%>


		<h2 class="text-center mt-5">All Notes:</h2>

		<div class="row">
			<div class="col-md-12">



				<%
				if (user3 != null) {
					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post = ob.getData(user3.getId());
					for (Post po : post) {
				%>
				<div class="card mt-3">
					<img alt="Not found" src="image/Pen_page.png"
						class="card-img-top mt-2 mx-auto" style="max-width: 100px;">

					<div class="card-body p-4">

						<h5 class="card-title"><%=po.getTitle()%></h5>
						<p><%=po.getContent()%></p>

						<p>
							<b class="text-success">Published By: <%=user3.getName()%></b><br>
							<b class="text-primary"></b>
						</p>


						<p>
							<b class="text-success">Published Date: <%=po.getPdate()%></b><br>
							<b class="text-success"></b>
						</p>

						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=po.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=po.getId()%>"
								class="btn btn-primary">Edit</a>

						</div>

					</div>
				</div>


				<%
				}
				}
				%>


			</div>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>