<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*" %>
    
<%@ page import="com.Db.DBConnect"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<%@include file="all_component/allcss.jsp" %>
 
<style type="text/css">
     .back-img{
          background: url("image/img2.jpg");
          width: 100%;
          height: 100vh;
          background-repeat: no-repeat;
          background-size: cover;
     }
</style>
 
 
 </head>
<body>
   
   
   <%@include file="all_component/navbar.jsp" %>
   
   <%
      Connection conn=DBConnect.getConn();  
      out.println(conn);
   %>
   
   
   <div class="container-fluid back-img">
       <div class="container text-center">
       <br><br>
       <br>
         <h1 class="text-white"><i class='fas fa-book'></i>E Notes-Save Your Notes</h1>
                  
         
         <a href="login.jsp" class="btn btn-light my-3"><i class='fas fa-user-circle'></i>Login</a>
         <a href="register.jsp" class="btn btn-light"><i class='fas fa-user-plus'></i>Register</a>
       </div>
   </div>

   <%@include file="all_component/footer.jsp" %>
   
</body>
</html>