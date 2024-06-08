<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.User.UserDetails"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<nav
		class="navbar navbar-expand-sm navbar-dark bg-custom navbar-custom fixed-top">
		<a class="navbar-brand" href="#"><i class='fas fa-book'></i>ENotes</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="home.jsp"><i class='fas fa-home'></i>Home<span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="addNotes.jsp"><i
						class="material-icons">add_circle</i>Add Notes</a></li>

				<li class="nav-item"><a class="nav-link" href="showNotes.jsp"><i
						class='fas fa-address-book'></i>Show Notes</a></li>
			</ul>

			<%
			UserDetails user = (UserDetails) session.getAttribute("userD");

			if (user != null) {
			%>
			<form class="form-inline my-2 my-lg-0">

				<!-- Button trigger modal -->

				<a href="" class="btn btn-light my-2 my-sm-1 mr-3"
					data-toggle="modal" data-target="#exampleModal" type="submit"><i
					class='fas fa-user-circle'></i><%=user.getName()%></a> <a
					href="LogoutServlet" class="btn btn-light my-2 my-sm-0"
					type="submit"><i class='fas fa-user-plus'></i>Log Out</a>

				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">

								<div class="container text-center">
									<i class="fas fa-user fa-3x"></i>
									<h5></h5>

									<table class="table">
										<tbody>
											<tr>
												<th>User Id</th>
												<td><%=user.getId()%></td>
											</tr>

											<tr>
												<th>Full Name</th>
												<td><%=user.getName()%></td>
											</tr>

											<tr>
												<th>Email Id</th>
												<td><%=user.getEmail()%></td>
											</tr>

										</tbody>

									</table>

									<div>
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">Close</button>

									</div>

								</div>

							</div>

						</div>
					</div>
				</div>

			</form>
			<%
			} else {
			%>
			<form class="form-inline my-2 my-lg-0">
				<a href="login.jsp" class="btn btn-light my-2 my-sm-1 mr-3"
					type="submit"><i class='fas fa-user-circle'></i>Login</a> <a
					href="register.jsp" class="btn btn-light my-2 my-sm-0"
					type="submit"><i class='fas fa-user-plus'></i>Register</a>
			</form>
			<%
			}
			%>

		</div>



	</nav>



</body>
</html>