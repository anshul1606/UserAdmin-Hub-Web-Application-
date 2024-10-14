<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style2.css" type="text/css" rel="stylesheet">
</head>
<body>

	<div class="main">
		
	
		<input type="checkbox" id="check" aria-hidden="true">
			<form action="oalog.jsp" method="post">
				<div class="login">
					<h1>Owner Admin Login</h1>
					<label for="text" aria-hidden="true"><h5>ADMIN LOGIN</h5></label>
					<input type="text" name="ouname" placeholder="User Name" required>
					<input type="password" name="opassword" placeholder="Password" required>
					<button>Login</button>
				</div>
						
			</form>
	</div>
</body>
</html>