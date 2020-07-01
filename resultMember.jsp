<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
		<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
		<title>회원 정보</title>
		<style>
				h1 {
						font-family: 'GmarketSansBold';
						font-size: 30px;
						color: #3E3C3C;
						padding-top: 160px;
				}
		</style>
</head>
<body>
	<%@ include file="menu_2.jsp"%>
	<div class="container" align="center" style="padding-top: 100px;">
		<%
			String msg = request.getParameter("msg");

			if (msg != null) {
				if (msg.equals("0"))
					out.println(" <h1 class='alert alert-danger'>회원정보가 수정되었습니다!</h2>");
				else if (msg.equals("1"))
					out.println(" <h1 class='alert alert-danger'>회원가입을 축하드립니다!</h2>");
				else if (msg.equals("2")) {
					String loginId = (String) session.getAttribute("sessionId");
					out.println(" <h1 class='alert alert-danger'>" + loginId + "님 환영합니다!</h2>");
				}				
			} else {
				out.println("<h1 class='alert alert-danger'>회원정보가 삭제되었습니다.</h2>");
			}
		%>
	</div>	
</body>
</html>