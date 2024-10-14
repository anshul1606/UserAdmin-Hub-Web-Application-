<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<%
 if(session.getAttribute("adminun") == null)
	 response.sendRedirect("index.jsp");
%>

<div class="container">

<nav class="navbar navbar-expand-lg bg-Light" style="background-color:#e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">ADMIN DASHBOARD</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admindashboard.jsp">Home</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Manage Admin
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="AddAdmin.jsp">Add Admin</a></li>
            <li><a class="dropdown-item" href="adminrecord.jsp">View Admin Record</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="update.jsp">Update Admin Record</a></li>
            <li><a class="dropdown-item" href="delete.jsp">Delete Admin Record</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            User 
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="AddUser.jsp">Add User</a></li>
            <li><a class="dropdown-item" href="userrecord.jsp">View Users Record</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="userupdate.jsp">Update Users Record</a></li>
            <li><a class="dropdown-item" href="deleteu.jsp">Delete Users Record</a></li>
          </ul>
        </li>
        
         <li class="nav-item">
            <a class="nav-link" href="Logout.jsp">Logout</a>
        </li>
        
      </ul>
          </div>
  </div>
</nav>
</div>
