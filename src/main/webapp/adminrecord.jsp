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
  <h1 class="text-center">Admin Record</h1>
  <%= "<h4>Hello, You can manage your record here</h4><br>" %>
   
   <div class="container w-75 bg-danger pb-3">
      
 <table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Email</th>
      <th scope="col">Contact Number</th>
      <th scope="col">Address</th>
      <th scope="col">PinCode</th>
      
    </tr>
  </thead>
  <tbody>
      
   <%
      ResultSet rs = AdminDAO.Show();
   
       while(rs.next()){
    	   int id = rs.getInt(1);
    	   String afname = rs.getString(2);
           String alname = rs.getString(3);
          String aemail = rs.getString(4);
          String acnumber = rs.getString(5);
          String a_address = rs.getString(6);
          String apcode = rs.getString(7);
         
    	 
          out.print(
          "<tr> " +
          
           " <td>"+ id +"</td> " +
           " <td>"+ afname +"</td> " +
           " <td>"+ alname +"</td> " +
           " <td>"+ aemail +"</td> " +
           " <td>"+ acnumber +"</td> " +
           " <td>"+ a_address +"</td> " +
           " <td>"+ apcode +"</td> " +
           "</tr> "
         );          
          
      }
   %>    
  </tbody>
</table>   
   </div>

</div>


</body>
</html>