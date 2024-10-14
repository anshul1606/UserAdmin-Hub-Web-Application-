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
 <jsp:useBean id="obj" class="com.admin.bean.OwnerAdminBean"></jsp:useBean>
 <jsp:setProperty property="*" name="obj"/>
 
<%
	  int status = AdminDAO.OwnerLogin(obj);
	  if(status == 1)
	 	{
	
			session.setAttribute("adminun", obj.getOuname());
			response.sendRedirect("owneradmindashboard.jsp");
		}
	  else if(status == 0)
	 	{
			 
			out.print("<script> alert('Login Failed due to invalid credentails....'); " 
			+"window.open('owneradminlogin.jsp','_self');</script>");
	 	}
%>

 
</body>
</html>