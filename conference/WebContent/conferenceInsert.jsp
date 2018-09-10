<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/assets/css/bootstrap.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet" href="/assets/css/style.css" />
<link rel="stylesheet" href="/assets/css/responsive.css" />

</head>
<body>


	<section class="includeTitle">
		<div class="container">
			<div class="imgWrapper">
				<img class="" src="/assets/images/title.png">
			</div>

		</div>
	</section>

	<section class="joinForm">
		<div class="container">
			<div class="joinTitle">
				<img class="" src="/assets/images/source.png">
				<h1>컨퍼런스 사전신청</h1>
			</div>

			<h2 class="titleH">개인정보 수집 및 이용</h2>

			<div class="formFloat">
				<div class="left">
					<h2>수집ㆍ이용 항목</h2>
					<p>성명,소속,직위,연락처,이메일</p>
				</div>
				<div class="content">
					<h2>수집ㆍ이용 목적</h2>
					<p>컨퍼런스 사전등록 확인</p>
				</div>
				<div class="right">
					<h2>보유기간</h2>
					<p>2018.10.24 (개소식후 2주) </p>
				</div>
			</div>

			<div class="consent">
				<label class="labelCheck" for="use_consent"> 
					<input type="checkbox" id="use_consent" class="inputChecking" name="use" value="" /> 
					<span class="checkmark"></span> 
					<span>위와 같이 개인정보를 수집ㆍ이용하는데 동의합니다.</span>
				</label>
			</div>

			<h2 class="titleH">기본정보 등록</h2>
			<form id="frm" method="post">
				<div class="formLow">
					<div class="rowArticle">
						<label>성명</label>
						<p>
							<input type="text" name="confe_name" id="confe_name">
						</p>
					</div>
					<div class="rowArticle">
						<label>소속</label>
						<p>
							<input type="text" class ="big" name="confe_affiliation" id="confe_affiliation">
						</p>
					</div>
					<div class="rowArticle">
						<label>직위</label>
						<p>
							<input type="text" name="confe_position" id="confe_position">
						</p>
					</div>
					<div class="rowArticle">
						<label>이메일</label>
						<p>
							<input type="text" class="big" name="confe_email" id="confe_email">
						</p>
					</div>
					<div class="rowArticle">
						<label>전화번호</label>
						<p>
							<input type="text" name="confe_phone" id="confe_phone" maxlength="13" size="13" onkeydown="return fn_onlyNumber(event)" onkeyup="removeChar(event)">
						</p>
					</div>
				</div>
			</form>
		</div>

		<div class="buttonWrapper double">
			<button id="submit" type="button">확인</button>
			<button id="cancle" type="button">취소</button>
		</div>

	</section>

	<script type="text/javascript" src="/assets/js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>
	<script src="assets/js/check.js"></script>
	
	<script>
		var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;	
		 $('#submit').on('click', function(){
			 

			 var use_consent = $('#use_consent').prop("checked");
			 
			 if(!use_consent){
				alert("개인정보 수집 및 이용에 동의하셔야 신청이 가능합니다.");
				$('#use_consent').focus();
				 return false;
			 }
			 
			 var confe_name = $('#confe_name').val();
			 var confe_affiliation = $('#confe_affiliation').val();
			 var confe_position = $('#confe_position').val();
			 var confe_email = $('#confe_email').val();
			 var confe_phone = $('#confe_phone').val();
			 
			 if(isEmpty(confe_name)){
				alert("성함을 입력해주세요.");
				$('#confe_name').focus();
				return false;
			}
			if(isEmpty(confe_affiliation)){
				alert("소속 입력해주세요.");
				$('#confe_affiliation').focus();
				return false;
			}
			if(isEmpty(confe_position)){
				alert("직위을 입력해주세요.");
				$('#confe_position').focus();
				return false;
			}
			if(isEmpty(confe_email)){
				alert("이메일을 입력해주세요.");
				$('#confe_email').focus();
				return false;
			}
			if(!regex.test(confe_email)){
				alert("이메일을 형식을 확인해주세요.");
				$('#confe_email').focus();
				return false;
			}
			if(isEmpty(confe_phone) || confe_phone.length < 12){
				alert("전화번호을 입력해주세요.");
				$('#confe_phone').focus();
				return false;
			}
			
			$("#frm").attr("action", "/util/JoinUtil.jsp").submit();
		});
	</script>

	<script>
		$(document).ready(function() {

		});

		$(window).resize(function() {

		});
	</script>
</body>
</html>