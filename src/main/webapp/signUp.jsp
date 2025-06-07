<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Register</title>
<%@ include file="component/allcss.jsp" %>
<style>
  body {
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
  }

  .register-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    padding: 20px;
  }

  .register-form {
    background: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    width: 100%;
    max-width: 400px;
  }

  .btn-custom {
    background-color: #198754;
    color: #fff;
    border: none;
  }

  .btn-custom:hover {
    background-color: #157347;
  }

  input.form-control:focus {
    box-shadow: 0 0 5px rgba(25, 135, 84, 0.5);
    border-color: #198754;
  }

  @media (max-width: 576px) {
    .register-form {
      padding: 20px;
    }
  }
</style>
</head>
<body>
<%@ include file="component/navbar.jsp" %>

<div class="register-wrapper">
  <div class="register-form text-center">
    <h4 class="mb-4">User Register</h4>
    
    <c:if test="${not empty sucMsg}">
    <p class="text-center text-success fs-3">${sucMsg }</p>
    <c:remove var="sucMsg" scope="session"/>
    </c:if>
    
      <c:if test="${not empty errorMsg}">
    <p class="text-center text-danger fs-3">${errorMsg }</p>
    <c:remove var="errorMsg " scope="session"/>
    </c:if>
    
    <form method="post" action="user_register">
      <div class="mb-3 text-start">
        <label for="name" class="form-label">Full Name</label>
        <input required name="fullname" type="text" class="form-control" id="name" name="name" required>
      </div>
      <div class="mb-3 text-start">
        <label for="email" class="form-label">Email</label>
        <input required name="email" type="email" class="form-control" id="email" name="email" required>
      </div>
      <div class="mb-4 text-start">
        <label for="password" class="form-label">Password</label>
        <input required name="password" type="password" class="form-control" id="password" name="password" required>
      </div>
      <button type="submit" class="btn btn-custom w-100">Signup</button>
    </form>
  </div>
</div>

</body>
</html>
