<%@page import="com.admin.DAO.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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
   int loginStatus =UserDAO.Login(obj);

   if(loginStatus == 1)
   {
	   session.setAttribute("uname", obj.getUname());
	   response.sendRedirect("userdashboard.jsp");
   }
   else if(loginStatus == 0){
  out.print("<script> alert('Login failed due invlid data..');"  
	 + "window.open('userLogin.jsp','_self');</script>");
   }
%>
</body>
</html>