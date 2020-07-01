<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="dto.Product2"%>
<%@ page import="dao.ProductR"%>
<html>
<head>
		<%
			String cartId = session.getId();
		%>
		<title>마이페이지</title>
		<style>
				html { overflow-y:scroll; }
				#my {
						font-family: 'GmarketSansMedium';
				}
				#my:hover {color: #474747;}
				 .content {
						width: 280px;
						height: 180px;
						margin: 10px;
						padding-bottom: 50px;
						float: left; 
						font-family: 'NEXON Lv1 Gothic OTF';
				} 
				.contents {
						width: 1250px;
						margin: auto;
						/* padding-top: 250px; */
				}
				.text {
					font-family: 'GmarketSansBold';
					font-size: 30px;
					color: #3E3C3C;
				}	
				.info {
					font-family: 'GmarketSansLight';
					font-size: 20px;
				}
		</style>
		<%
			String sessionId = (String) session.getAttribute("sessionId");
		%>
		<sql:setDataSource var="dataSource"
			url="jdbc:mysql://localhost:3306/JSPBookDB"
			driver="com.mysql.jdbc.Driver" user="root" password="1234" />
		<sql:query dataSource="${dataSource}" var="resultSet">
			SELECT * FROM MEMBER WHERE ID=?
			<sql:param value="<%=sessionId%>" />
		</sql:query>	
</head>

<body>
	<jsp:include page="menu_2.jsp" />	
	
	<div class="contents" style="padding-top:10%; padding-bottom: 100px;">
		<c:forEach var="row" items="${resultSet.rows}">
			<span class="text"><c:out value='${row.id }'/>님의 회원정보</span><p>
			<div class="info">
				<c:forEach var="row" items="${resultSet.rows}">
				<div><strong>이름: </strong><c:out value='${row.name }'/></div><p>
				<div><strong>전화번호: </strong><c:out value='${row.phone }'/></div><p>
				<div><strong>이메일: </strong><c:out value='${row.email }'/></div>
				</c:forEach>
			</div>
		</c:forEach>
	</div>
	
	<div class="contents">
		<%	
			ProductRepository dao = ProductRepository.getInstance();
			ArrayList<Product> listOfProducts = dao.getAllProducts();
		%>
		<div id="save">
				<span class="text">저장한 챌린지</span><p>
				<div align="center">
						<%				
							int sum = 0;
							ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
							if (cartList == null)
								cartList = new ArrayList<Product>();
							for (int i = 0; i < cartList.size(); i++) {
								Product product = cartList.get(i);
						%>
							<div style="float: left; padding-right: 10px; font-family: 'NEXON Lv1 Gothic OTF';">
									<div class="content" style='width: 280px;'>
										<a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">
										<img src="c:/upload/<%=product.getFilename()%>" style="width: 280px; height: 180px;"></a>										
										<div style="padding-top: 10px;"><%=product.getPname()%>
										<a href="./removeCart.jsp?id=<%=product.getProductId()%>">
										<img src="resources/img/close.png" style="width: 10px; height: 10px;"></a></div>																							
									</div>
							</div>						
						<%							
							}
						%>
				</div>		
		</div>
	</div>
	
	<div class="contents" style="clear: left; padding-top: 70px;">
		<div id="success">
			<span class="text">완수한 챌린지</span><p>
			<div align="center">					
				<div class="container">
					<div class="row" style="font-family: 'NEXON Lv1 Gothic OTF';">
							<%				
								ProductR dao2 = ProductR.getInstance();
								ArrayList<Product2> listOfProducts2 = dao2.getAllProducts();			
								for (int i = 0; i < listOfProducts2.size(); i++) {
									Product2 product = listOfProducts2.get(i);
										if (i>5) {
							%>
							
							<div style="float: left; padding-right: 10px; font-family: 'NEXON Lv1 Gothic OTF';">
									<div class="content" style='width: 280px;'>										
										<img src="c:/upload/<%=product.getFilename()%>" style="width: 280px; height: 180px;"></a>
										<div style="padding-top: 10px;"><%=product.getPPname()%></div>
									</div>
							</div>	
							<%
										}
								}
							%>
					</div>		
				</div>	
			</div>		
		</div>
	</div>
</body>
</html>
