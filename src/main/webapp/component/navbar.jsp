
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="indesx.jsp"><i class="fa-solid fa-house-chimney-medical"></i> MEDI HOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
      <c:if test="${empty userObj }"> 
       <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-right-to-bracket"></i> ADMIN</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp">DOCTORE</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login.jsp">USER</a>
        </li>
      
      </c:if>
      
       
        
        <c:if test="${not empty userObj }">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp">APPOINTMENT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">VIEW APPOINTMENT</a>
        </li>
      <!-- User Dropdown -->
        <!--  <div class="dropdown">
          <button class="btn btn-success dropdown-toggle" type="button" 
          id="dropdownMenuButton1" data-bs-toggle="dropdown"
          aria-expandd="false">
          
              <i class="fa-solid fa-user"></i> ${userObj.ufullName}
          
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
          <li><a class="dropdown-item" href="#">Change Password</a></li>
           <li><a class="dropdown-item" href="#">Logout</a></li>
          </ul>
          
          </div>
           -->
          
         <ul class="navbar-nav">
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="adminDropdown" role="button" 
       data-bs-toggle="dropdown" aria-expanded="false">
      <i class="fa-solid fa-user"></i> Admin
    </a>
    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="adminDropdown">
      <li><a class="dropdown-item" href="#">My Profile</a></li>
      <li><a class="dropdown-item" href="#">Settings</a></li>
      <li><a class="dropdown-item" href="#">Change Password</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="userLogout">Logout</a></li>
    </ul>
  </li>
</ul>

          
          
        </c:if>
       
      </ul>
     
    </div>
  </div>
</nav>