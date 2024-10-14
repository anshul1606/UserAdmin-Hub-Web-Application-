<%@ page import="com.admin.DAO.AdminDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.admin.bean.AdminBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	
	<br> First Name: <jsp:getProperty property="afname" name="obj"/>
	<br> Last Name: <jsp:getProperty property="alname" name="obj"/>
	<br> Email: <jsp:getProperty property="aemail" name="obj"/>
	<br> Contact Number: <jsp:getProperty property="acnumber" name="obj"/>
	<br> Address: <jsp:getProperty property="a_address" name="obj"/>
	<br> Pincode: <jsp:getProperty property="apcode" name="obj"/>
	<br> Password: <jsp:getProperty property="apassword" name="obj"/>
	<%
	int status=AdminDAO.Register(obj);
	if(status>0){
			
			out.print("<script>alert('Registration Success...'); window.open('admindashboard.jsp','_self'); </script>");
		}
		else{
			
			out.print("<script>alert('Registration Failed...'); window.open('adminregistration.jsp','_self'); </script>");
		}
	
	%>
</body>
</html>