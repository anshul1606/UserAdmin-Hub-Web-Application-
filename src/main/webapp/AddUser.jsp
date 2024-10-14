<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="userheader.jsp" %>
<div class="container">
  <h1 class="text-center">Add User</h1>
   
   <div class="container w-75 bg-warning pb-3">
     <form method="post" action="addu.jsp">
		  <div class="mb-3">
		    <label class="form-label">User Name</label>
		    <input type="text" class="form-control" name="uname">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Email</label>
		    <input type="text" class="form-control" name="uemail">
		  </div>
		 
		  <div class="mb-3">
		    <label class="form-label">Contact Number</label>
		    <input type="tel" class="form-control" name="ucnumber">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Address</label>
		    <input type="text" class="form-control" name="u_address">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Pin Code</label>
		    <input type="number" class="form-control" name="upcode">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Password</label>
		    <input type="password" class="form-control" name="upassword">
		  </div>
		  <button type="submit" class="btn btn-primary w-100 fw-bold">Add User</button>
	</form>
    
   </div>

</div>

<%= "</h3>Hello, You Can Add the User</h3>" %>

</body>
</html>