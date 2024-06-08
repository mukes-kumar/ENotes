<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="all_component/allcss.jsp"%>
<style>
.div-color {
	background-image: linear-gradient(to right top, #1f6489, #008fae, #00b8a9, #00dd78,
		#aff70f);
}
</style>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<br> <br> <br>
				<div class="card mt-4">
					<div class="card-header text-center bg-custom text-white">
						<i class='fas fa-user-plus fa-3x'></i>
						<h4>Registration</h4>
					</div>

					

					<%
					String regMsg = (String) session.getAttribute("reg-sucess");

					if (regMsg != null) {
					%>
					<div class="alert alert-success">
						<strong>Success! </strong><%=regMsg%>
						<a href="login.jsp">Click Here</a>
						
					</div>
					<%
					session.removeAttribute("reg-sucess");
					}
					%>
					
					
					
					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");

					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger">
						<strong>Success! </strong><%=regMsg%></div>
					<%
					session.removeAttribute("failed-msg");

					}
					
					%>
					

					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label>Enter Name</label> <input type="text"
									class="form-control" id="name" name="fname" required>
							</div>
							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail" required>

							</div>
							<div class="form-group">
								<label>Enter Password</label> <input type="password"
									class="form-control" id="exampleInputPassword1"
									name="upassword" required>
							</div>

							<div class="form-group form-check">
								<input type="checkbox" class="form-check-input" required
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Check me out</label>
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
						<p class="text-center">
							you have already account <a href="login.jsp">Sign in</a>
						</p>


					</div>
				</div>
			</div>
		</div>
		<br>

	</div>

	<%@include file="all_component/footer.jsp"%>



</body>
</html>