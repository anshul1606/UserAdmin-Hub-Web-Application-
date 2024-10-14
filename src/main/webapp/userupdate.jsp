<%@page import="com.admin.DAO.UserDAO"%>
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
<%@ include file="userheader.jsp" %>
<div class="container">


   <%
   
	   
   String un = request.getParameter("un");
   int uid=0;
   String uname = "";
   String uemail = "";
   int ucnumber = 0;
   String u_address = "";
   int upcode = 0;
   int upassword = 0;
    
    
       ResultSet rs = UserDAO.ShowUpdate(un);
       
           
       if (rs != null && rs.next()) {
                 uid =rs.getInt(1);
              uname = rs.getString(2);
              uemail = rs.getString(3);
              ucnumber = rs.getInt(4);
              u_address = rs.getString(5);
              upcode = rs.getInt(6);
              upassword = rs.getInt(7);
       }
       
   %>    



   <h1 class="text-center">Update User Record</h1>

   <div class="container w-75 bg-light pb-3">
     <form method="post" action="updtuser.jsp">
   <div class="mb-3">
    <label class="form-label">First Name</label>
    <input type="text" class="form-control" name="uname" value=<%= uname%>>
   </div>
   <div class="mb-3">
    <label class="form-label">Email</label>
    <input type="email" class="form-control" name="uemail" value=<%= uemail %>>
   </div>
   <div class="mb-3">
    <label class="form-label">Contact Number</label>
    <input type="tel" class="form-control" name="ucnumber" value=<%= ucnumber %>>
   </div>
   <div class="mb-3">
    <label class="form-label">Address</label>
    <input type="text" class="form-control" name="u_address" value=<%= u_address%>>
   </div>
   <div class="mb-3">
    <label class="form-label">Pin Code</label>
    <input type="number" class="form-control" name="upcode" value=<%= upcode%>>
   </div>
   <div class="mb-3">
    <label class="form-label">Password</label>
    <input type="password" class="form-control" name="upassword" value=<%= upassword%>>
   </div>
   <button type="submit" class="btn btn-primary w-100 fw-bold">Update Record</button>
   </form>
    
   </div>

</div>

<%= "<h4>Hello,Welcome here You can update the record </h4>" %>

</body>
</html>