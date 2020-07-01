<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<head>
		<style>
				@font-face { font-family: 'NEXON Lv1 Gothic OTF'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff'); font-weight: normal; font-style: normal; }
				@font-face { font-family: 'GmarketSansLight'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff') format('woff'); font-weight: normal; font-style: normal; }		
				@font-face { font-family: 'GmarketSansMedium'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff'); font-weight: normal; font-style: normal; }
				@font-face { font-family: 'GmarketSansBold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansBold.woff') format('woff'); font-weight: normal; font-style: normal; }			
				.category:hover {
						color: #D9D4D4;
						cursor: pointer;
				}
				.nav, .login_join {
						position: absolute;
						right: 10px;
				}
				.category {
						padding-right: 30px;
						padding-top: 30px;
						color: #474747;
						font-family: 'GmarketSansLight'; 
				}
				.div1 {
						position: absolute;
						z-index: 1;
						text-align: left;
				}
				#logo {
						width: 170px;
						height: 120px;
						cursor: pointer;
				}
				a {
						text-decoration: none;
						color: #474747;
				}
				a:hover {
						color: #D9D4D4;
						cursor: pointer;
				}
		</style>
</head>
		<div class="div1"><img src="resources/img/logo.png" id="logo" onclick="location.href='home.jsp'"></div>
		<div class="nav">
				<span class="category" id="about" onclick="location.href='about.jsp'">about홈챌린지</span>
				<span class="category" id="look" onclick="location.href='products.jsp'">둘러보기</span>
				<span class="category" id="ranking" onclick="location.href='ranking.jsp'">주간랭킹</span>
				<c:choose>
					<c:when test="${empty sessionId}">						
						<span class="category" id="login" onclick="location.href='login.jsp'">LOGIN</span>
						<span class="category" id="join" onclick="location.href='join.jsp'">JOIN</span>						
					</c:when>
					<c:otherwise>					
						<span class="category" id="manage" onclick="location.href='addProduct.jsp'">챌린지 등록하기</span>
						<span class="category" id="my" onclick="location.href='myPage.jsp'">마이페이지[<%=sessionId%>님]</span>
						<span class="category" id="logout" onclick="location.href='logoutMember.jsp'">LOGOUT</span>
					</c:otherwise>
				</c:choose>			
		</div>
