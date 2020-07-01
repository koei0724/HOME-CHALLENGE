<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
		<style>
				@font-face { font-family: 'NEXON Lv1 Gothic OTF'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff'); font-weight: normal; font-style: normal; }
				#join {
					font-family: 'GmarketSansMedium';
				}
				#join:hover {color: #474747;}
		</style>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<script type="text/javascript">
			function checkForm() {
				if (!document.newMember.id.value) {
					alert("아이디를 입력하세요.");
					return false;
				}
	
				if (!document.newMember.passwd.value) {
					alert("비밀번호를 입력하세요.");
					return false;
				}
	
				if (document.newMember.passwd.value != document.newMember.password_confirm.value) {
					alert("비밀번호를 동일하게 입력하세요.");
					return false;
				}
			}
		</script>
		<title>회원가입</title>
</head>
<body>
	<%@ include file="menu_2.jsp"%>
	<div class="div1"><img src="resources/img/logo.png" id="logo" onclick="location.href='home.jsp'"></div>
	<div class="container" style="padding-top: 200px;">
	<h3 class="form-signin-heading" style="font-family: 'GmarketSansLight'; padding-bottom: 50px;">J O I N</h3>
		<form name="newMember" class="form-horizontal"  action="join_process.jsp" method="post" onsubmit="return checkForm()" 
		style="font-family: 'NEXON Lv1 Gothic OTF';">
			<div class="form-group  row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" placeholder="name" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input name="phone" type="text" class="form-control" placeholder="phone" >
				</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input type="text" name="email"  class="form-control"  maxlength="50" placeholder="email">
				</div>				
			</div>			
			<div class="form-group  row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="id" >
				</div>
			</div>			
			<div class="form-group  row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="passwd" type="text" class="form-control" placeholder="password" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">비밀번호확인</label>
				<div class="col-sm-3">
					<input name="password_confirm" type="text" class="form-control" placeholder="password confirm" >
				</div>
			</div>			
			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-success" value="등록 " style="font-family: 'GmarketSansMedium';"> 
					<input type="reset" class="btn btn-success" value="취소 " onclick="reset()" style="font-family: 'GmarketSansMedium';">
				</div>
			</div>
		</form>
	</div>
</body>
</html>