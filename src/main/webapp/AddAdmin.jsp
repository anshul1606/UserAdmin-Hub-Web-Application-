<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="adminheader.jsp" %>
<div class="container">
  <h1 class="text-center">Add Admin Page</h1>
   
   <div class="container w-75 bg-warning pb-3">
     <form method="post" action="add.jsp">
		  <div class="mb-3">
		    <label class="form-label">First Name</label>
		    <input type="text" class="form-control" name="afname">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Last Name</label>
		    <input type="text" class="form-control" name="alname">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Email</label>
		    <input type="text" class="form-control" name="aemail">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Contact Number</label>
		    <input type="tel" class="form-control" name="acnumber">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Address</label>
		    <input type="text" class="form-control" name="a_address">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Pin Code</label>
		    <input type="number" class="form-control" name="apcode">
		  </div>
		  <div class="mb-3">
		    <label class="form-label">Password</label>
		    <input type="password" class="form-control" name="apassword">
		  </div>
		  <button type="submit" class="btn btn-primary w-100 fw-bold">Add Admin</button>
	</form>
    
   </div>

</div>

<%= "Hello Mr. " + session.getAttribute("adminun") %>

</body>
</html>