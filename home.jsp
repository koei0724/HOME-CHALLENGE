<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<head>
		<title>홈챌린지 - 즐거운 도전의 시작 :)</title>
		<style>
				body {
						background-image: url('resources/img/running.jpg');
						background-repeat: no-repeat;
						background-size: 100%
				} 
				.container {
						padding-top: 120px;
						padding-bottom: 20%;
						width: 1200px; 
						margin: auto;
				}
				.best_text {
						font-family: 'GmarketSansBold';
						text-align: center;
						font-size: 30px;
						color: #3E3C3C;
				}
				.text {
						 font-family: 'GmarketSansLight';
						 color: #F6F3F3;
				}
				.content {
						width: 280px;
						height: 180px;
						margin: 10px;
						padding-bottom: 80px;
						float: left; 
						font-family: 'NEXON Lv1 Gothic OTF';
				} 
				.contents {
						width: 1200px;
						margin: auto;
				}
		</style>
</head>

<body>
		<jsp:include page="menu.jsp" />
		<div style="padding-top: 25%; padding-left: 50px;">
				<div class="text" style="font-size: 20px;">홈챌린지를 통해</div>
				<div class="text" style="font-size: 30px;">일상을 좀 더 활기차게 꾸며나가 보세요.</div>
		</div>

		<div class="container">
				<div class="best_text"><span class="best">새로 뜨는 챌린지</span></div><p>
				<%
					ProductRepository dao = ProductRepository.getInstance(); 
					ArrayList<Product> listOfProducts = dao.getAllProducts();
				%>
				<div class="contents">
					<div align="center">
							<%									
									for (int i = listOfProducts.size()-1; i > listOfProducts.size()-9; i--) { //최신 챌린지 8개만 띄우기
										Product product = listOfProducts.get(i);
							%>
							<div class="content">
								<a href="./product.jsp?id=<%=product.getProductId()%>">
								<img src="c:/upload/<%=product.getFilename()%>" style="width: 280px; height: 180px; padding-bottom: 20px;"></a>								
								<div>
									<span style="font-family: 'GmarketSansMedium'; font-size: 20px;"><%=product.getPname()%></span>
									<span style="diplay: block; background: #FEFBBE;"><%=product.getCondition()%></span>
								</div>			
							</div>			
							<%
								}
							%>
					</div>
				</div>	
		</div>
</body>
</html>