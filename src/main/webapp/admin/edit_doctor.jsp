<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.db.dbConnection"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page import="java.util.*, com.dao.SpecialistDao, com.entity.Specalist" %>
<%@ page import="java.util.*, com.entity.Doctor" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Doctor Registration Form</title>
  <%@ include file="../component/allcss.jsp" %>
  
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container-fluid p-3">
  <div class="row">

    <!-- Form Column - 4 Grid -->
    <div class="col-md-4 offset-md-4">
      <div class="card paint-card">
        <div class="card-body">
          <h4 class="text-center">Edit Doctor Details</h4>

          <c:if test="${not empty errorMsg}">
            <p class="text-danger text-center">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session"/>
          </c:if>

          <c:if test="${not empty sucMsg}">
            <p class="text-success text-center">${sucMsg}</p>
            <c:remove var="sucMsg" scope="session"/>
          </c:if>
          
          <%
          int id=Integer.parseInt(request.getParameter("id"));
          DoctorDao dao2=new DoctorDao(dbConnection.getConn());
          Doctor d=dao2.getDoctorById(id);
          %>

          <form action="../addDoctor" method="post">
            <div class="mb-3">
              <label class="form-label">Full Name</label>
              <input type="text" name="fullName" class="form-control" value="<%=d.getFullName() %>" required />
            </div>

            <div class="mb-3">
              <label class="form-label">Date of Birth</label>
              <input type="date" name="dob" class="form-control" value="<%=d.getDob() %>" required />
            </div>

            <div class="mb-3">
              <label class="form-label">Qualification</label>
              <input type="text" name="qualification" class="form-control" value="<%=d.getQualification() %>" required />
            </div>

          <div class="mb-3">
  <label class="form-label">Specialist</label>
  <select name="spec" class="form-control" required>
    <option ><%=d.getSpecialist()%></option>

    <%
      SpecialistDao dao = new SpecialistDao(dbConnection.getConn());
      List<Specalist> list = dao.getAllSpecalists();
      for (Specalist s : list) {
    %>
        <option value="<%= s.getSpecialistName() %>"><%= s.getSpecialistName() %></option>
    <%
      }
    %>
  </select>
</div>


            <div class="mb-3">
              <label class="form-label">Email</label>
              <input type="email" name="email" class="form-control" value="<%=d.getEmail() %>" required />
            </div>

            <div class="mb-3">
              <label class="form-label">Mobile Number</label>
              <input type="text" name="mobno" class="form-control" value="<%=d.getMobNo() %>" required />
            </div>

            <div class="mb-3">
              <label class="form-label">Password</label>
              <input type="password" name="password" class="form-control" value="<%=d.getPassword() %>" required />
            </div>
            
            <input type="hidden" name="id" value="<%=d.getId() %>">

            <div class="text-center">
              <button type="submit" class="btn btn-primary col-md-12">UPdate</button>
            </div>
          </form>

        </div>
      </div>
    </div>


  </div>
</div>

</body>
</html>
