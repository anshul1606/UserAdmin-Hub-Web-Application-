<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Login Page</title>
  <link href="style2.css" type="text/css" rel="stylesheet">
</head>

<body>


  <div class="main">
		<input type="checkbox" id="check" aria-hidden="true">
			<form action="ulog.jsp" method="post">
				<div class="login">
					<h1>Admin Login</h1>
					<label for="check" aria-hidden="true"><h5>USER LOGIN</h5></label><br><br>
					<input type="text" name="uname" placeholder="User Name" required>
					<input type="password" name="upassword" placeholder="Password" required>
					<button>Login</button>
				</div>
						
			</form>
	</div>


</body>

</html>