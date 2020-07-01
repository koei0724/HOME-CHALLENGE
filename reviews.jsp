<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product2"%>
<%@ page import="dao.ProductR"%>
<html>
<head>
	<title>챌린지 리뷰</title>
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
</head>
<body>
	<%@ include file="menu_2.jsp"%>
	<%
		ProductR dao = ProductR.getInstance();
		ArrayList<Product2> listOfProducts = dao.getAllProducts();
	%>
	<div class="text"><span>챌린지 완수했어요 :)</span></div>
	<div class="container" style="padding-top: 50px;">
		<div class="row" style="padding-left: 200px; font-family: 'NEXON Lv1 Gothic OTF';">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product2 product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<h2><%=product.getPPname()%> - <%=product.getWriter()%>님</h2>				
				<div style="float: left;"><img src="c:/upload/<%=product.getFilename()%>" style="width: 200px; height: 128px;"></div>
				<div style="float: left; padding-left: 20px;"><p><%=product.getReview() %></div>
				<div style="clear: left; padding-bottom: 60px;"></div>
			</div>
			<%
				}
			%>
		</div>		
	</div>
</body>
</html>
