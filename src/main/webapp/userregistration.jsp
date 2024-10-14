<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>SignUp Page</title>
  <link href="style.css" type="text/css" rel="stylesheet">
</head>

<body>

	<div class="main">
		<input type="checkbox" id="check" aria-hidden="true">
			<div class="signup">
				<form action="ureg.jsp" method="post">
					<label for="check" aria-hidden="true">SIGN UP</label><br><br>
					<input type="text" name="uname" placeholder="User Name" required>
					<input type="text" name="uemail" placeholder="Your Email" required>
					<input type="number" name="ucnumber" placeholder="Your Contact Number" required>
					<input type="text" name="u_address" placeholder="Enter Address" required>
					<input type="number" name="upcode" placeholder="Pin Code" required>
					<input type="password" name="upassword" placeholder="Password" required>
					<button>Sign Up</button><br><br><br> 
					<p class="fw-bold"> Have an Acoount? Kindly <a href="userLogin.jsp">Login Here</a> </p>
				</form>
			 
	</div>

</body>

</html>