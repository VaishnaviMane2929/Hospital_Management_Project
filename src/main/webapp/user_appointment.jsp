<%@page import="com.db.dbConnection"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Appointment</title>
    <%@include file="component/allcss.jsp" %>

    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
        }
        .backImg {
            background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url("img/hbuilding.png");
            height: 20vh;
            width: 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>

<%@include file="component/navbar.jsp" %>

<div class="container-fluid backImg p-5"></div>

<div class="container p-3">
    <div class="row">
        <!-- Left image column -->
        <div class="col-md-6 p-5">
            <img src="img/d44.png" alt="doctor image" class="img-fluid">
        </div>

        <!-- Right form column -->
        <div class="col-md-6">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="text-center fs-3">User Appointment</p>

                    <!-- Messages -->
                    <c:if test="${not empty errorMsg}">
                        <p class="fs-4 text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>

                    <c:if test="${not empty sucMsg}">
                        <p class="fs-4 text-center text-success">${sucMsg}</p>
                        <c:remove var="sucMsg" scope="session"/>
                    </c:if>

                    <!-- Appointment Form -->
                    <form class="row g-3" action="add_appoint" method="post">
                        <input type="hidden" name="userid" value="${userObj.uid}">

                        <div class="col-md-6">
                            <label class="form-label">Full Name</label>
                            <input required type="text" class="form-control" name="ufullName">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Gender</label>
                            <select class="form-control" name="gender" required>
                                <option value="male">Male</option>
                                <option value="female">Female</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Age</label>
                            <input required type="number" class="form-control" name="age">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Appointment Date</label>
                            <input required type="date" class="form-control" name="appoint_date">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control" name="email" value="${userObj.uemail}">
                            
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Phone No</label>
                            <input required maxlength="10" type="number" class="form-control" name="phno">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Diseases</label>
                            <input required type="text" class="form-control" name="diseases">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Doctor</label>
                            <select required class="form-control" name="doct">
    <option value="">--select--</option>
    <%
        DoctorDao dao = new DoctorDao(dbConnection.getConn());
        List<Doctor> list = dao.getAllDoctor();
        for (Doctor d : list) {
    %>
        <option value="<%= d.getId() %>"><%= d.getFullName() %> (<%= d.getSpecialist() %>)</option>
    <%
        }
    %>
</select>

                        </div>

                        <div class="col-md-12">
                            <label class="form-label">Full Address</label>
                            <textarea required name="address" class="form-control" rows="3"></textarea>
                        </div>

                        <!-- Submit button -->
                        <c:if test="${empty userObj}">
                            <a href="login.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
                        </c:if>

                        <c:if test="${not empty userObj}">
                            <button type="submit" class="col-md-6 offset-md-3 btn btn-success">Submit</button>
                        </c:if>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
