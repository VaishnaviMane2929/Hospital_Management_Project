<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Dashboard</title>
    <%@include file="../component/allcss.jsp" %>
</head>
<body>
      <c:if test="${empty doctObj }">
      <c:redirect url="../doctor_login.jsp">
      
      </c:redirect>
      
      </c:if>

    <%@include file="navbar.jsp" %>

    <div class="container mt-4">
        <h2>Doctor Dashboard</h2>
    </div>
</body>
</html>
