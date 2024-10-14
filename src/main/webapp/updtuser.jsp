<%@ page import="com.admin.DAO.UserDAO"%>
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
   int updateStatus = UserDAO.Update(obj);

   if(updateStatus == 1)
   {
  out.print("<script> alert('Record Updation Successfull..');"  
   + "window.open('userrecord.jsp','_self');</script>");

   }
   else if(updateStatus == 0){
	   out.print("<script> alert('Record Updation failed..');"  
			   + "window.open('userrecord.jsp','_self');</script>");
   }
%>
</body>
</html>