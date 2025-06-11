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
  <div class="row gy-4">

    <!-- Form Column -->
    <div class="col-12 col-lg-4">
      <div class="card paint-card h-100">
        <div class="card-body">
          <h4 class="text-center mb-4">Add Doctor</h4>

          <c:if test="${not empty errorMsg}">
            <p class="text-danger text-center">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session"/>
          </c:if>

          <c:if test="${not empty sucMsg}">
            <p class="text-success text-center">${sucMsg}</p>
            <c:remove var="sucMsg" scope="session"/>
          </c:if>

          <form action="../addDoctor" method="post">
            <div class="mb-3">
              <label class="form-label">Full Name</label>
              <input type="text" name="fullName" class="form-control" required />
            </div>

            <div class="mb-3">
              <label class="form-label">Date of Birth</label>
              <input type="date" name="dob" class="form-control" required />
            </div>

            <div class="mb-3">
              <label class="form-label">Qualification</label>
              <input type="text" name="qualification" class="form-control" required />
            </div>

            <div class="mb-3">
              <label class="form-label">Specialist</label>
              <select name="spec" class="form-control" required>
                <option value="">--Select--</option>
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
              <input type="email" name="email" class="form-control" required />
            </div>

            <div class="mb-3">
              <label class="form-label">Mobile Number</label>
              <input type="text" name="mobno" class="form-control" required />
            </div>

            <div class="mb-3">
              <label class="form-label">Password</label>
              <input type="password" name="password" class="form-control" required />
            </div>

            <div class="text-center">
              <button type="submit" class="btn btn-success w-100">Submit</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- Table Column -->
    <div class="col-12 col-lg-8">
      <div class="card paint-card h-100">
        <div class="card-body">
          <p class="fs-4 text-center mb-3">Doctor Details</p>
          <div class="table-responsive">
            <table class="table table-bordered table-striped text-center align-middle">
              <thead class="table-success">
                <tr>
                  <th>Full Name</th>
                  <th>DOB</th>
                  <th>Qualification</th>
                  <th>Specialist</th>
                  <th>Email</th>
                  <th>Contact No</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <%
                  DoctorDao dao2 = new DoctorDao(dbConnection.getConn());
                  List<Doctor> list2 = dao2.getAllDocto();  // Check spelling of method
                  for (Doctor d : list2) {
                %>
                <tr>
                  <td><%= d.getFullName() %></td>
                  <td><%= d.getDob() %></td>
                  <td><%= d.getQualification() %></td>
                  <td><%= d.getSpecialist() %></td>
                  <td><%= d.getEmail() %></td>
                  <td><%= d.getMobNo() %></td>
                  <td>
                    <a href="edit_doctor.jsp?id=<%= d.getId() %>" class="btn btn-sm btn-outline-primary me-1" title="Edit">
                      <i class="bi bi-pencil-square"></i>
                    </a>
                    <a href="deleteDoctor?id=<%= d.getId() %>" class="btn btn-sm btn-outline-danger" title="Delete"
                       onclick="return confirm('Are you sure you want to delete this doctor?');">
                      <i class="bi bi-trash"></i>
                    </a>
                  </td>
                </tr>
                <%
                  }
                %>

                <!-- Optional JSTL-based listing -->
                <c:forEach var="doc" items="${doctorList}">
                  <tr>
                    <td>${doc.fullName}</td>
                    <td>${doc.dob}</td>
                    <td>${doc.qualification}</td>
                    <td>${doc.specialist}</td>
                    <td>${doc.email}</td>
                    <td>${doc.mobno}</td>
                    <td>
                      <a href="edit?id=${doc.id}" class="btn btn-sm btn-warning">Edit</a>
                      <a href="delete?id=${doc.id}" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                  </tr>
                </c:forEach>

              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>

</body>
</html>
