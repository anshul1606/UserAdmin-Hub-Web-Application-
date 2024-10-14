<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="main">
		<input type="checkbox" id="check" aria-hidden="true">
		<div class="signup">
			<form action="reg.jsp" method="post">
				<label for="check" aria-hidden="true">SIGN UP</label><br><br>
				<input type="text" name="afname" placeholder="First Name" required>
				<input type="text" name="alname" placeholder="Last Name" required>
				<input type="text" name="aemail" placeholder="E-mail" required>
				<input type="number" name="acnumber" placeholder="Contact Number" required>
				<input type="text" name="a_address" placeholder="Address" required>
				<input type="number" name="apcode" placeholder="PinCode" required>
				<input type="password" name="apassword" placeholder="Password" required>
				<button>Sign Up</button><br><br><br> 
				<p class="fw-bold"> Have an Acoount? Kindly <a href="adminLogin.jsp">Login Here</a> </p>
			</form>
		</div>
		
		
		
		
	</div>
</body>
</html>