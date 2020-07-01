<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<title>로그인</title>
	<style>
			#login {
					font-family: 'GmarketSansMedium';
			}
			#login:hover {color: #474747;}
	</style>
</head>
<body>
	<%@ include file="menu_2.jsp"%>
	<div class="div1"><img src="resources/img/logo.png" id="logo" onclick="location.href='home.jsp'"></div>
	<div class="container" align="center" style="padding-top: 250px; font-family: 'GmarketSansLight'">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading" >L O G I N</h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="loginCheck.jsp" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> 
					<input type="text" class="form-control" placeholder="ID" name="id" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> 
					<input type="password" class="form-control" placeholder="Password" name="passwd" required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit" style="font-family: 'GmarketSansMedium';">로 그 인</button>
			</form>
		</div>
	</div>
</body>
</html>