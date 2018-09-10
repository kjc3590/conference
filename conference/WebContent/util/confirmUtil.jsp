<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.fine.confernce.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.IOException"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/assets/css/bootstrap.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
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
	
	<section class="result">
		<div class="container">
<%
	
	request.setCharacterEncoding("UTF-8");

	FineDao dao = FineDao.getInstance();

	String name = request.getParameter("confe_name");
	String phone = request.getParameter("confe_phone");

	int cnt = dao.confe_confirm(phone , name);

	if(cnt>0){
		
%>
			<h2 class="titleH center">
				컨퍼런스 <b>사전신청</b>이<b>완료</b>되었습니다.
			</h2>

			<div class="formLow">
				<div class="rowArticle">
					<label>성명</label>
					<p><%=name %></p>
				</div>
				
				<div class="rowArticle">
					<label>연락처</label>
					<p><%=phone %></p>
				</div>
			</div>

			<div class="buttonWrapper">
				<button type="button">확인</button>
			</div>


			<h2 class="titleH">오시는 길</h2>
			<div class="imgWrapper">
				<img class="" src="/assets/images/map.png">
			</div>

			<p>
				<b>주소 :</b>충청북도 청주시 흥덕구 오송읍 연제리 682-1 베스티안병원 7층 대강당
			</p>
			<p>
				<b>셔틀버스 운영 안내 :</b>8시 30분 베스티안 서울병원(한티역 근처) ~ 오송병원 왕복 운영(9.20일까지
				사전신청자에 한함)
			</p>

<%
	}else{
%>
			<h2 class="titleH center">
				컨퍼런스 <b>사전신청</b> <b>정보</b>가 <b>없습니다.</b>
			</h2>

			<div class="formLow">
				<div class="rowArticle">
					<label>성명</label>
					<p><%=name %></p>
				</div>

				<div class="rowArticle">
					<label>연락처</label>
					<p><%=phone %></p>
				</div>
			</div>

			<div class="buttonWrapper big">
				<button type="button">컨퍼런스 사전신청하기</button>
			</div>
<%		
	}

%>

		</div>

	</section>
	<footer>
		<div class="container">
		<div class="footerLeft">
			<img class="" src="/assets/images/footerLogo.png">
			<p>
				서울시 강남구 논현로 76길, 꿈희망미래빌딩 4층 / 사업자등록번호 : 220-82-09620<br>대표번호 :
				02-563-2919 / 팩스 : 02- 568-2952/ E-mail : fineinsight@bestian.kr<br>Copyright
				2017 ⓒ bestian all rights reserved
			</p>
		</div>
		</div>

	</footer>
	
	<script type="text/javascript" src="/assets/js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="/assets/js/bootstrap.min.js"></script>

</body>
</html>