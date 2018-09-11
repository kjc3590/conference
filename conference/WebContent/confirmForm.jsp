<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form id="submit" method="post">
		<input type="text" name="confe_name">
		<input type="text" name="confe_phone" maxlength="13" size="13" onkeydown="return fn_onlyNumber(event)" onkeyup="removeChar(event)">
		<input type="submit" value="전송">
	</form>
	
	<script src="assets/js/jquery-3.3.1.js"></script>
	<script src="assets/js/check.js"></script>
	
	<script>
	 $('#submit').on('click', function(){
		 
		 var confe_name = $('#confe_name').val();
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
		if(isEmpty(confe_phone) || confe_phone.length < 12){
			alert("전화번호을 입력해주세요.");
			$('#confe_phone').focus();
			return false;
		}
		
		$("#frm").attr("action", "/util/confirmUtil.jsp").submit();
	});
	</script>

</body>
</html>