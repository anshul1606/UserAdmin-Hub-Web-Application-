<%@page import="com.admin.DAO.AdminDAO"%>
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
 
<%
	  int status = AdminDAO.Login(obj);
	  if(status == 1)
	 	{
	
			session.setAttribute("adminun", obj.getAemail());
			response.sendRedirect("admindashboard.jsp");
		}
	  else if(status == 0)
	 	{
			 
			out.print("<script> alert('Login Failed due to invalid credentails....'); " 
			+"window.open('adminlogin.jsp','_self');</script>");
	 	}
%>

 
</body>
</html>