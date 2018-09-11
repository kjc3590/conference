<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form id="frm" method="post">
		<input type="text" name="confe_name" id="confe_name">
		<input type="text" name="confe_affiliation" id="confe_affiliation">
		<input type="text" name="confe_position" id="confe_position">
		<input type="text" name="confe_email" id="confe_email">
		<input type="text" name="confe_phone" id="confe_phone" maxlength="13" size="13" onkeydown="return fn_onlyNumber(event)" onkeyup="removeChar(event)">
	</form>
	
	<input id="submit" type="button" value="전송">
	
	<script src="/osong/assets/js/jquery-3.3.1.js"></script>
	<script src="/osong/assets/js/check.js"></script>
	
	<script>

	var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;	
	 $('#submit').on('click', function(){
		 
		 console.log("클릭 : 클릭")
		 		 
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
		
		$("#frm").attr("action", "/osong/util/JoinUtil.jsp").submit();
	});
	</script>
	
</body>
</html>