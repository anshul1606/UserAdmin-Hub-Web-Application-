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

<%

String un = request.getParameter("un");

   int delStatus = AdminDAO.Delete(un);

   if(delStatus == 1)
   {
  out.print("<script> alert('Record Deleted Successfully..');"  
   + "window.open('index.jsp','_self');</script>");

   }
   else if(delStatus == 0){
	   out.print("<script> alert('Record Deletion failed..');"  
			   + "window.open('adminrecord.jsp','_self');</script>");
   }
%>
</body>
</html>