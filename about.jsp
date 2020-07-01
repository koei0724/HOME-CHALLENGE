<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
		<title>about 홈챌린지</title>
		<style>
				body {
						background-image: url('resources/img/about4.png');
						background-attachment: fixed;
						background-repeat: no-repeat;
						background-size: 100%
				} 
				h1 {
						font-family: 'GmarketSansBold';
						color: white;
				}
				h2, h4 {
						font-family: 'GmarketSansLight';
						color: white;
				}
				.container {
						padding-top: 100px;
				}
				#logo {
						width: 170px;
						height: 120px;
						cursor: pointer;
				}
				#look, #ranking, #login, #join, #manage, #my, #logout {
						color: gray;
				}
				#look:hover, #ranking:hover, #login:hover, #join:hover, #manage:hover, #my:hover, #logout:hover {
						color: white;
				}
				#about:hover{color:white;}
		</style>
</head>

<body>
		<%@ include file="menu.jsp"%>
		<div class="div1"><img src="resources/img/logo2.png" id="logo" onclick="location.href='home.jsp'"></div>
		<div class="container" align="center" style="padding-top: 170px">
			<h1 style="opacity: 0.8">A B O U T &nbsp; H O M E &nbsp; C H A L L E N G E</h1>
		</div>	
		
		<div class="container" align="center">
			<h2>
				반복되는 일상에 지치시나요?<p>
				새로운 도전을 하고 싶으신가요?<p>
				지루한 일상에서 잃어버린 생기를 찾아줄<p>
			</h2>
			<h1>HOME CHALLENGE!</h1>
		</div>
	
		<div class="container" align="center">
			<h1>사소한 목표 달성이 하루의 생기를 만든다!</h1><p>
			<h4>
				홈 챌린지는 집에서 할 수 있는 여러 도전을 다른 사람과 함께 할 수 있습니다.<p>
				사소한 취미생활, 여가생활부터<p>
				인생의 목표를 위한 꾸준한 도전까지! <p>
				도전하는 자가 아름답다.<p>
				지금 당신이 그 아름다운 사람이 될 시간입니다.<p>
				저희 홈 챌린지가 여러분의 도전을 돕겠습니다.
			</h4>
		</div>
	
		<div class="container" align="center">
			<h1>작은 도전은 큰 성공의 시작일 수 있습니다.</h1><p>
			<h4>
				부담 없이 누구나 즐길 수 있는 홈 챌린지<p>
				사소한 취미생활부터,<p>
				내 인생의 목표까지!<p>
				도전하는 게 부담스럽고 두렵게 느껴지셨나요?<p>
				작은 성취감이 모여 큰 도전을 성공하게 합니다.<p>
				지금 바로 홈챌린지에서 여러분의 작은 도전을 시작해보세요!<p>
			</h4>
		</div>
	
		<div class="container" align="center">
			<h1>함께하는 즐거움, 홈 챌린지!</h1>
			<h4>
				친구들과 같이 챌린지하고<p>
				챌린지 성공의 즐거움을 함께 나눠보세요.<p>
				백지장도 맞들면 낫다는 말이 있지요.<p>
				언뜻 쉽지 않아 보이는 챌린지도, 친구들과 함께 으샤으샤!<p>
				성공의 즐거움도 두배가 된답니다.<p>
				아직 도전의 즐거움을 모르는 친구에게 홈챌린지를 추천해주세요!<p>
			</h4>
		</div>
</body>
</html>