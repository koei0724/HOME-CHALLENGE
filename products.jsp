<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<html>
<head>
		<title>챌린지 둘러보기</title>
		<style>
				.text {
					font-family: 'GmarketSansBold';
					text-align: center;
					font-size: 35px;
					color: #3E3C3C;
					padding-top: 12%;
					padding-bottom: 70px;
					width: 1200px;
					margin: auto;
				}				
 				.content {
						width: 280px;
						height: 180px;
						margin: 10px;
						padding-bottom: 130px;
						float: left; 
						font-family: 'NEXON Lv1 Gothic OTF';
				} 
				.contents {
						width: 1200px;
						margin: auto;
				}
				#look {
						 font-family: 'GmarketSansMedium';
				}
				#look:hover {color: #474747;}
		</style>
</head>
<body>
	<jsp:include page="menu_2.jsp" />
	<div class="text"><span>챌린지 둘러보기</span></div><p>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="contents">
		<div align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="content">
				<a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">
				<img src="c:/upload/<%=product.getFilename()%>" style="width: 280px; height: 180px; padding-bottom: 20px;"></a>	
				<div>
						<span style="font-family: 'GmarketSansMedium'; font-size: 20px;"><%=product.getPname()%></span>
						<span style="diplay: block; background: #FEFBBE;"><%=product.getCondition()%></span>
				</div>			
				<p><%=product.getDescription()%>

			</div>			
			<%
				}
			%>
		</div>
	</div>
</body>
</html>



