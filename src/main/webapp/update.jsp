<%@page import="com.admin.DAO.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="bg-info">
<%@ include file="adminheader.jsp" %>
<div class="container">


   <%
   
	   
   String un = request.getParameter("un");


   int aid=0;
   String afname = "";
   String alname = "";
   String aemail = "";
   int acnumber = 0;
   String a_address = "";
   int apcode = 0;
   int apassword = 0;
	
	
	   ResultSet rs = AdminDAO.ShowUpdate(un);
	   
	       
	   if (rs != null && rs.next()) {
		   	  aid =rs.getInt(1);
	          afname = rs.getString(2);
	          alname = rs.getString(3);
	          aemail = rs.getString(4);
	          acnumber = rs.getInt(5);
	          a_address = rs.getString(6);
	          apcode = rs.getInt(7);
	          apassword = rs.getInt(8);
	   }
	   
   %>    
  
  
  
  <h1 class="text-center">Update Admin Record</h1>
 
   <div class="container w-75 bg-light pb-3">
     <form method="post" action="updt.jsp">
  <div class="mb-3">
    <label class="form-label">ID</label>
    <input type="number" class="form-control" name="aid" value=<%= aid%>>
  </div>
  <div class="mb-3">
    <label class="form-label">First Name</label>
    <input type="text" class="form-control" name="afname" value=<%= afname%>>
  </div>
  <div class="mb-3">
    <label class="form-label">Last Name</label>
    <input type="text" class="form-control" name="alname" value=<%= alname %>>
  </div>
  <div class="mb-3">
    <label class="form-label">Email</label>
    <input type="email" class="form-control" name="aemail" value=<%= aemail %>>
  </div>
  <div class="mb-3">
    <label class="form-label">Contact Number</label>
    <input type="tel" class="form-control" name="acnumber" value=<%= acnumber %>>
  </div>
  <div class="mb-3">
    <label class="form-label">Address</label>
    <input type="text" class="form-control" name="a_address" value=<%= a_address%>>
  </div>
  <div class="mb-3">
    <label class="form-label">Pin Code</label>
    <input type="number" class="form-control" name="apcode" value=<%= apcode %>>
  </div>
  <div class="mb-3">
    <label class="form-label">Password</label>
    <input type="password" class="form-control" name="apassword" value=<%= apassword %>>
  </div>
  <button type="submit" class="btn btn-primary w-100 fw-bold">Update Record</button>
</form>
    
   </div>

</div>

<%= "<h4>Hello,Welcome here You can update the record </h4>"  %>

</body>
</html>