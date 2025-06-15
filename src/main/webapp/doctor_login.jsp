<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login Page</title>
<%@ include file="component/allcss.jsp" %>
<style>
  body {
    background-color: #f8f9fa;
  }

  .login-wrapper {
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 15px;
  }

  .login-form {
    background: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(0,0,0,0.1);
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
    <h4 class="mb-4">Doctor Login</h4>

    <!-- Success Message -->
    <c:if test="${not empty sucMsg}">
      <div class="alert alert-success" role="alert">
        ${sucMsg}
      </div>
      <c:remove var="sucMsg" scope="session"/>
    </c:if>

    <!-- Error Message -->
    <c:if test="${not empty errorMsg}">
      <div class="alert alert-danger" role="alert">
        ${errorMsg}
      </div>
      <c:remove var="errorMsg" scope="session"/>
    </c:if>

    <form method="post" action="doctorLogin">
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
