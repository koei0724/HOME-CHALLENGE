<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
		<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
		<title>챌린지 등록하기</title>
		<style>
				.text {
					font-family: 'GmarketSansBold';
					font-size: 35px;
					color: #3E3C3C;
				}
				#manage {
						font-family: 'GmarketSansMedium';
				}
				#manage:hover {color: #474747;}	
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
	<div class="container" style="padding-top:130px;">
		<form name="newProduct" action="./processAddProduct.jsp" style="font-family: 'NEXON Lv1 Gothic OTF';"
		class="form-horizontal" method="post" enctype="multipart/form-data">
			<span class="text">챌린지 등록하기</span><p>
			
			<div class="form-group row">
				<label class="col-sm-2">챌린지 번호</label> <!-- 이건 영어 또는 숫자로 (중복 금지) -->
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row"><label class="col-sm-2">챌린지 상태</label>
	            <select name="condition" class="form-control" style="width: 100px; margin-left: 15px;">
	               <option value=NEW <c:if test="${class_m == 1}">selected</c:if>>NEW</option>
	               <option value=HOT <c:if test="${class_m == 2}">selected</c:if>>HOT</option>
	               <option value=GOOD<c:if test="${class_m == 3}">selected</c:if>>GOOD</option>
	               <option value=HIT <c:if test="${class_m == 4}">selected</c:if>>HIT</option>
	            </select> 
       		  </div>
			
			<div class="form-group row">
				<label class="col-sm-2">챌린지 명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">참여 수</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">챌린지 소개글</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">챌린지 참여방법</label>
				<div class="col-sm-5">
					<textarea name="participate" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">등록자</label>
				<div class="col-sm-3">					
					<c:forEach var="row" items="${resultSet.rows}">
					<input type="text" name="manufacturer" class="form-control" placeholder="id" value="<c:out value='${row.id }'/>" >
					</c:forEach>
				</div>
			</div>
			
			<div class="form-group row"><label class="col-sm-2">카테고리</label>
	            <select name="category" class="form-control" style="width: 130px; margin-left: 15px;">
	               <option value=건강 <c:if test="${class_m == 1}">selected</c:if>>건강</option>
	               <option value=만들기 <c:if test="${class_m == 2}">selected</c:if>>만들기</option>
	               <option value=요리 <c:if test="${class_m == 3}">selected</c:if>>요리</option>
	               <option value=자기계발 <c:if test="${class_m == 4}">selected</c:if>>자기계발</option>
	               <option value=기타 <c:if test="${class_m == 5}">selected</c:if>>기타</option>
	            </select> 
       		  </div>
         

			<div class="form-group row"> <!-- 이거는 NULL -->
				<label class="col-sm-2">기대 참여 수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row"><label class="col-sm-2">챌린지 난이도</label>
	            <select name="level" class="form-control" style="width: 130px; margin-left: 15px;">
	               <option value=어려워요 <c:if test="${class_m == 1}">selected</c:if>>어려워요</option>
	               <option value=보통이에요 <c:if test="${class_m == 2}">selected</c:if>>보통이에요</option>
	               <option value=쉬워요 <c:if test="${class_m == 3}">selected</c:if>>쉬워요</option>
	            </select> 
       		 </div>
			
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록" >
				</div>
			</div>
			
		</form>
	</div>
</body>
</html>



