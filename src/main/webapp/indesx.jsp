<%@page import="com.db.dbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
 .team-member {
      text-align: center;
      border: 1px solid #ddd;
      border-radius: 10px;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
      transition: transform 0.3s ease;
      height: 100%;
    }
    .team-member:hover {
      transform: translateY(-5px);
    }
    .team-member img {
      width: 100%;
      height: 300px;
      object-fit: cover;
      border-radius: 10px;
    }
    .team-member h5 {
      margin-top: 15px;
      font-weight: bold;
    }
    
   

</style>

<%@include file="component/allcss.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp" %>


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/d5.png" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/d7.png" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/d4.png" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="container py-5">
  <h2 class="text-center mb-5">Key Features of our Hospital</h2>
  
  <div class="row align-items-center">

    <!-- Features Section -->
    <div class="col-lg-8 col-12 order-2 order-lg-1">
      <div class="row g-4">
        <div class="col-md-6 col-12">
          <div class="feature-box">
            <h5>100% Safety</h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
          </div>
        </div>
        <div class="col-md-6 col-12">
          <div class="feature-box">
            <h5>Clean Environment</h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
          </div>
        </div>
        <div class="col-md-6 col-12">
          <div class="feature-box">
            <h5>Friendly Doctors</h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
          </div>
        </div>
        <div class="col-md-6 col-12">
          <div class="feature-box">
            <h5>Medical Research</h5>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Doctor Image -->
    <div class="col-lg-4 col-12 mb-4 mb-lg-0 text-center order-1 order-lg-2">
      <img src="img/d44.png" alt="Doctor" class="img-fluid doctor-img" style="max-width: 300px;">
    </div>

  </div>
</div>


<div class="container py-5"> 
    <h2 class="text-center mb-5">Our Team</h2>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
      
      <div class="col">
        <div class="team-member">
          <img src="img/d11.png" alt="Samunai Simi">
          <h5>Samunai Simi</h5>
          <p>(CEO & Chairman)</p>
        </div>
      </div>
      
      <div class="col">
        <div class="team-member">
          <img src="img/d22.png" alt="Dr. Siva Kumar">
          <h5>Dr. Siva Kumar</h5>
          <p>(Chief Doctore)</p>
        </div>
      </div>

      <div class="col">
        <div class="team-member">
          <img src="img/d44.png" alt="Dr. Niuise Paule">
          <h5>Dr. Niuise Paule</h5>
        <p>(Chief Doctore)</p>
        </div>
      </div>

      <div class="col">
        <div class="team-member">
          <img src="img/d55.png" alt="Dr. Mathue Samuel">
          <h5>Dr. Mathue Samuel</h5>
          <p>(Chief Doctore)</p>
        </div>
      </div>

    </div>
  </div>
  
  <%@include file="component/footer.jsp" %>
</body>
</html>