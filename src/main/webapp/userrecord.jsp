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
<body class="bg-light">
<%@ include file="userheader.jsp" %>
<div class="container">
  <h1 class="text-center">User Record</h1>
   
   <div class="container w-75 bg-muted pb-3">
      
 <table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">User Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact Number</th>
      <th scope="col">Address</th>
      <th scope="col">PinCode</th>
      <th scope="col">Operations</th>
    </tr>
  </thead>
  <tbody>
      
   <%
      ResultSet rs = UserDAO.Show();
   
       while(rs.next()){
    	   int id = rs.getInt(1);
    	   String uname = rs.getString(2);
           String uemail = rs.getString(3);
           String ucnumber = rs.getString(4);
           String u_address = rs.getString(5);
           String upcode = rs.getString(6);
         
    	 
          out.print(
          "<tr> " +
          
           " <td>"+ id +"</td> " +
           " <td>"+ uname +"</td> " +
           " <td>"+ uemail +"</td> " +
           " <td>"+ ucnumber +"</td> " +
           " <td>"+ u_address +"</td> " +
           " <td>"+ upcode +"</td> " +
           
           " <td> "+ 
            " <button class='btn btn-primary'><a href='userupdate.jsp?un="+uname  +"' class='text-light fw-bold'> Update </a></button> " +
            " <button class='btn btn-danger'><a href='deleteu.jsp?un="+ uname +"' class='text-light fw-bold'> Delete </a></button> " + 
            " </td> " +
          "</tr> "
         );          
          
      }
   %>    
  </tbody>
</table>   
   </div>

</div>



<%= "<h3>Hello, You can manage all users data</h3>" %>

</body>
</html>