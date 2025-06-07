<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
    
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<%@ include file="component/allcss.jsp" %>
<style>
  body {
    background-color: #f8f9fa;
  }

  .login-wrapper {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .login-form {
    background: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    width: 100%;
    max-width: 400px;
  }

  .btn-custom {
    background-color: #198754;
    color: white;
  }

  .btn-custom:hover {
    background-color: #157347;
  }
</style>
</head>
<body>
<%@ include file="component/navbar.jsp" %>

<div class="login-wrapper">
  <div class="login-form text-center">
    <h4 class="mb-4">Admin Login</h4>

   <c:if test="${not empty sucMsg}">
    <p class="text-center text-success fs-3">${sucMsg}</p>
    <c:remove var="sucMsg" scope="session"/>
</c:if>

<c:if test="${not empty errorMsg}">
    <p class="text-center text-danger fs-3">${errorMsg}</p>
    <c:remove var="errorMsg" scope="session"/>
</c:if>


    <form method="post" action="adminLogin">
      <div class="mb-3 text-start">
        <label for="email" class="form-label">Email address</label>
        <input type="email" class="form-control" id="email" name="email" required>
      </div>
      <div class="mb-4 text-start">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <button type="submit" class="btn btn-custom w-100">Login</button>
    </form>
  </div>
</div>

</body>
</html>
