<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<html>
<head>
<title>주간랭킹</title>
		<style>
				.text {
					font-family: 'GmarketSansBold';
					text-align: left;
					font-size: 35px;
					color: #3E3C3C;
					padding-top: 150px;
					padding-bottom: 70px;
					padding-left: 300px;

				}	
				#ranking {
						font-family: 'GmarketSansMedium';
				}
				#ranking:hover {color: #474747;}
				html { overflow-y:scroll; }
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
				#crown{
					width: 100px;
					height: 100px;
					padding-bottom:10px;
				}
				#profile{
					width: 90px;
					height: 90px;
					padding-bottom:30px;
					padding-right: 20px;
				}
				.rank {
						font-family: 'GmarketSansLight';
						padding-bottom: 130px;
						padding-left: 270px; 
				}
				.profile {
						width: 120px; height: 120px;
						padding-right: 60px;
				}
				.detail {
						font-size: 20px;
				}
				.number {
						font-size: 30px; font-family: 'GmarketSansBold'; color: #3E3C3C; float: left;
						padding-right: 60px;
				}
				.t {padding-top: 20px;}
				.id {font-family: 'GmarketSansMedium'; padding-bottom: 10px;}
			</style>
		<script>
				function fnMore1()
				{
					document.getElementById("divMore1").style.display="";
					document.getElementById("bMore1").style.display="none";
				}
				function fnMore2()
				{
					document.getElementById("divMore2").style.display="";
					document.getElementById("bMore2").style.display="none";
				}
				function fnMore3()
				{
					document.getElementById("divMore3").style.display="";
					document.getElementById("bMore3").style.display="none";
				}
		</script>
<body>
		<%@ include file="menu_2.jsp"%>

		<div class="text"><span>주간 랭킹</span><img src= "resources/img/crown.PNG" id="crown" align="middle" ></div><p>

		
		<div class="rank">
		 <p class="number">1위 </p>
		 <div class="detail">
				<img src= "resources/img/profile1.png" class="profile" align="left">
				<div class="t">
					<div class="id">qwejlwp219님</div>
					<div>12개의 챌린지 완수: 달고나 커피 만들기, 물 2L 마시기, 피아노 2시간치기</div>
				</div>		 						 						
				<b id="bMore1" onclick="fnMore1()" style="cursor: pointer">...더보기</b>
				<div id="divMore1" style= "display: none;">요가1시간, 달고나커피 만들기, 모히또 만들기</div>		 
		 </div>		
		</div>
		
		<div class="rank">
			 <p class="number">2위 </p>
			 <div class="detail">
			 	<img src= "resources/img/profile2.png" class="profile" align="left" >			 
			 	<div class="t">
				 	<div class="id">lovellows님</div>
			 		<div>10개의 챌린지 완수: 달고나 커피 만들기, 물 2L 마시기, 피아노 2시간치기</div>
			 	</div>
		 		<b id="bMore2" onclick="fnMore2()" style="cursor: pointer">...더보기</b>
		 		<div id="divMore2" style= "display: none;">요가1시간, 달고나커피 만들기, 모히또 만들기</div>		 		
			 </div>
		</div>
		
		<div class="rank">
			 <p class="number">3위 </p>
			 <div class="detail">
				<img src= "resources/img/profile3.png" class="profile" align="left" >
				<div class="t">
					<div class="id">23ssoeuq님</div>	 		
					<div>8개의 챌린지 완수: 달고나 커피 만들기, 물 2L 마시기, 피아노 2시간치기</div>
				</div>
		 		<b id="bMore3" onclick="fnMore3()" style="cursor: pointer">...더보기</b>
		 		<div id="divMore3" style= "display: none;">요가1시간, 달고나커피 만들기, 모히또 만들기</div>	
		 		</div> 		
		</div>

</body>
</html>