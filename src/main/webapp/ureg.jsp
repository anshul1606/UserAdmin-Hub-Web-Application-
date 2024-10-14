
<%@page import="com.admin.DAO.UserDAO"%>
<%@page import="com.admin.DAO.AdminDAO"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj" class="com.admin.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<%
int addStatus =UserDAO.Register(obj);

   if(addStatus == 1)
   {
  out.print("<script> alert('User Registration Success..');"  
   + "window.open('userdashboard.jsp','_self');</script>");

   }
   else if(addStatus == 0){
  out.print("<script> alert('User Registration Fail..');"  
	 + "window.open('userregistration.jsp','_self');</script>");
   }
%>
</body>
</html>