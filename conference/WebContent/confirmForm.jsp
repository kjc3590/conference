<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action ="/util/confirmUtil.jsp" method="post">
		<input type="text" name="confe_name">
		<input type="text" name="confe_phone" maxlength="13" size="13" onkeydown="return fn_onlyNumber(event)" onkeyup="removeChar(event)">
		<input type="submit" value="전송">
	</form>
	
	<script src="assets/js/jquery-3.3.1.js"></script>
	<script src="assets/js/check.js"></script>

</body>
</html>