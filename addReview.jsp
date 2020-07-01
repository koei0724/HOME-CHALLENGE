<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
	<title>챌린지 리뷰작성</title>
	<style>
			.text {
					font-family: 'GmarketSansBold';
					text-align: center;
					font-size: 30px;
					color: #3E3C3C;
					padding-top: 10%;
					width: 1200px;
					margin: auto;
				}	
	</style>
		<%
			String sId = (String) session.getAttribute("sessionId");
		%>
		<sql:setDataSource var="dataSource"
			url="jdbc:mysql://localhost:3306/JSPBookDB"
			driver="com.mysql.jdbc.Driver" user="root" password="1234" />
		<sql:query dataSource="${dataSource}" var="resultSet">
			SELECT * FROM MEMBER WHERE ID=?
			<sql:param value="<%=sId%>" />
		</sql:query>	

</head>
<body>
	<%@ include file="menu_2.jsp"%>
	<div class="text"><span>챌린지 리뷰작성</span></div>
	<div class="container" style="padding-top:130px;">
		<form name="newReview" action="./processAddReview.jsp" style="font-family: 'NEXON Lv1 Gothic OTF';"
		class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">챌린지 이름</label> 
				<div class="col-sm-3">
					<input type="text" name="ppname" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">작성자 아이디</label> 
				<div class="col-sm-3">
					<c:forEach var="row" items="${resultSet.rows}">
					<input type="text" name="writer" class="form-control" placeholder="id" value="<c:out value='${row.id }'/>" > 
					</c:forEach>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">참여 후기</label>
				<div class="col-sm-3">
					<input type="text" name="review" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">인증 사진</label>
				<div class="col-sm-5">
					<input type="file" name="file" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="리뷰 등록" >
				</div>
			</div>
		</form>
	</div>
</body>
</html>



