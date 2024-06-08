<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 460px;
    backgroud-repeat: no-repeat;
    background-size: cover;
  }
  </style>

</head>
<body>

     <div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/img4.png" alt="Los Angeles" width="1100" height="500">
      <div class="carousel-caption">
        <h3></h3>
        <p></p>
      </div>   
    </div>
    
    <div class="carousel-item">
      <img src="image/img3.png" alt="New York" width="1100" height="500">
      <div class="carousel-caption">
        <h3></h3>
        <p></p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="image/img1.jpg" alt="New York" width="1100" height="500">
      <div class="carousel-caption">
        <h3></h3>
        <p></p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
   
</body>
</html>