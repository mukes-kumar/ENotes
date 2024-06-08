<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="all_component/allcss.jsp"%>
<style type="text/css">
</style>

</head>
<body>

	<%@include file="all_component/navbar.jsp"%>


	<div class="container-fluid div-color1">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<br> <br> <br>
				<div class="card mt-4">
					<div class="card-header text-center bg-custom text-white">
						<i class='fas fa-user-circle fa-3x'></i>
						<h4>Login</h4>
					</div>


					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-success">
						<strong><%=invalidMsg%></strong> <a href="login.jsp">Click
							Here</a>

					</div>
					<%
					session.removeAttribute("login-failed");
					}
					%>


					<%
					String withoutlogin = (String) session.getAttribute("Login-error");
					if (withoutlogin != null) {
					%>
					<div class="alert alert-success">
						<strong><%=withoutlogin%></strong> <a href="login.jsp">Click
							Here</a>

					</div>
					<%
					session.removeAttribute("Login-error");
					}
					%>





					<%
					String logoutMsg = (String) session.getAttribute("logoutMsg");
					if (logoutMsg != null) {
					%>
					<div class="alert alert-sucess">
						<strong><%=logoutMsg%></strong>
					</div>
					<%
					session.removeAttribute("logoutMsg");
					}
					%>



					<div class="card-body">
						<form action="loginServlet" method="post">

							<div class="form-group">
								<label>Enter Email Id</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">

							</div>
							<div class="form-group">
								<label>Enter Password</label> <input type="password"
									class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>

							<div class="form-group form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" required> <label
									class="form-check-label" for="exampleCheck1">Check me
									out</label>
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
						<p class="text-center">
							New Account. <a href="register.jsp">Register</a>
						</p>


					</div>
				</div>
			</div>
		</div>
		<br>

	</div>

	<div class="container-fluid bg-primary text-white">

		<p class="text-center">
			Note : Any Errors occur then contact <a
				href="https://mukku-portfolio.netlify.app/" class="text-warning">mukku
				portfolio </a>
		</p>

		<p class="text-center">All Right Reserved @Mukku Coder</p>

	</div>


</body>
</html>