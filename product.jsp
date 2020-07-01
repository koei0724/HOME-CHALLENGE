<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>

<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
	<title>챌린지 상세 정보</title>
	<style>#look {font-family: 'GmarketSansMedium';}</style>
	<c:choose>
		<c:when test="${empty sessionId}">				
			<script>
				function addToCart() {
					if (confirm("챌린지를 찜하려면 로그인하세요.")) {
						location.href="login.jsp";
					} else {}
				}
				function warning() {
					if (confirm("리뷰를 작성하려면 로그인하세요.")) {
						location.href="login.jsp";
					} else {}
				}
			</script>
		</c:when>
		<c:otherwise>		
			<script>
				function addToCart() {
					if (confirm("이 챌린지를 저장하시겠습니까?")) {
						document.addForm.submit();
						alert('챌린지가 저장되었습니다.\n[마이페이지]에서 확인 가능')
					} else {		
						document.addForm.reset();
					}
				}
				function warning() {
					location.href="addReview.jsp";
				}
			</script>
		</c:otherwise>
	</c:choose>		
</head>

<body>
	<jsp:include page="menu_2.jsp" />
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	<div class="container" style="padding-top: 15%;">
		<div class="row">
			<div class="col-md-5">
				<img src="c:/upload/<%=product.getFilename()%>" style="width: 100%" />
			</div>
			<div class="col-md-6" style="font-family: 'NEXON Lv1 Gothic OTF';">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>				
				<p><b>지금 이 챌린지는? </b><span class="badge badge-danger"> <%=product.getCondition()%></span>
				<p><b>등록자</b> : <%=product.getManufacturer()%>
				<p><b>카테고리</b> : <%=product.getCategory()%>
				<p><b>참여 수</b> : <%=product.getUnitsInStock()%>
				<p><b>난이도</b> : <span class="badge badge-warning"><%=product.getLevel()%></span>
				<p><h4>참여방법?!</h4> <%=product.getParticipate()%>
				<p><form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
					<a href="#" class="btn btn-outline-dark" onclick="addToCart()"> 찜하기
					<img src="resources/img/heart2.png"  style="width:15px;"></a>
					<a href="./products.jsp" class="btn btn-outline-dark"> 챌린지 계속 둘러보기 &raquo;</a>
					<p></p>					
					<a href="./reviews.jsp" class="btn btn-outline-success"> 리뷰 구경하기 &raquo;</a> 								
					<a class="btn btn-outline-success" onclick="warning()"> 리뷰 쓰러가기 &raquo;</a> 
				</form>							
			</div>
		</div>
		<hr>
	</div>
</body>
</html>

