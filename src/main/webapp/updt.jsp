<%@ page import="com.admin.DAO.AdminDAO"%>
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
   int updateStatus = AdminDAO.Update(obj);

   if(updateStatus == 1)
   {
  out.print("<script> alert('Record Update Success..');"  
   + "window.open('adminrecord.jsp','_self');</script>");

   }
   else if(updateStatus == 0){
	   out.print("<script> alert('Record Update fail..');"  
			   + "window.open('adminrecord.jsp','_self');</script>");
   }
%>
</body>
</html>