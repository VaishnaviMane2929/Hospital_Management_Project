<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
 <style>
    .card-box {
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      text-align: center;
      padding: 30px 20px;
      transition: all 0.3s ease;
    }

    .card-box:hover {
      transform: scale(1.02);
    }

    .icon-style {
      font-size: 2.5rem;
      color: #21824f;
    }

    .card-title {
      margin-top: 10px;
      font-size: 1.2rem;
      color: #21824f;
    }

    .card-value {
      font-size: 1.5rem;
      font-weight: bold;
      color: #21824f;
    }

    body {
      background: linear-gradient(to bottom, #ffffff, #f3f3f3);
    }
  </style>
</head>
<body>
<%@include file="navbar.jsp" %>
<c:if test="${ empty adminObj }">
<c:redirect url="../admin_login.jsp"></c:redirect>

</c:if>

 <div class="container my-5">
 <p class="text-center fs-3">Admin Dashboard</p>
  
      <c:if test="${not empty errorMsg}">
    <p class="text-center text-danger fs-3">${errorMsg }</p>
    <c:remove var="errorMsg" scope="session"/>
    
    </c:if>
 
  <c:if test="${not empty sucMsg}">
    <p class="text-center text-success " role="alert">${sucMsg }</p>
    <c:remove var="sucMsg" scope="session"/>
    </c:if>
    
    <div class="row g-4 justify-content-center">

      <!-- Doctor Card -->
      <div class="col-md-3 col-sm-6">
        <div class="card-box bg-white">
          <div class="icon-style">
            <i class="bi bi-person-badge-fill"></i>
          </div>
          <div class="card-title">Doctor</div>
          <div class="card-value">5</div>
        </div>
      </div>

      <!-- User Card -->
      <div class="col-md-3 col-sm-6">
        <div class="card-box bg-white">
          <div class="icon-style">
            <i class="bi bi-person-circle"></i>
          </div>
          <div class="card-title">User</div>
          <div class="card-value">4</div>
        </div>
      </div>

      <!-- Total Appointment Card -->
      <div class="col-md-3 col-sm-6">
        <div class="card-box bg-white">
          <div class="icon-style">
            <i class="bi bi-calendar-check"></i>
          </div>
          <div class="card-title">Total Appointment</div>
          <div class="card-value">8</div>
        </div>
      </div>

      <!-- Specialist Card -->
      <div class="col-md-3 col-sm-6">
<div class="card-box bg-white" data-bs-toggle="modal" data-bs-target="#exampleModal">
          <div class="icon-style">
            <i class="bi bi-check2-square"></i>
          </div>
          <div class="card-title">Specialist</div>
          <div class="card-value">6</div>
        </div>
      </div>

    </div>
  </div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
      <form action="../addSpecialist" method="post">
      <div class="form_group">
      <label>Enter Specialist Name</label>
      <input type="text" name="specName" class="form-control">
      </div>
      <div class="text-center mt-3">
      <button type="Submit" class="btn btn-primary">Add</button>
      </div>
      </form>
       

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>

</body>
</html>