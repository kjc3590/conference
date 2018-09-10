<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.fine.confernce.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
	request.setCharacterEncoding("UTF-8");

	FineDao dao = FineDao.getInstance();

	String name = request.getParameter("confe_name");
	String phone = request.getParameter("confe_phone");

	int cnt = dao.confe_confirm(phone , name);

	if(cnt>0){
		response.getWriter().print("<script>alert('Join Complete.')</script>");
	}else{
		response.getWriter().print("<script>alert('Join X.')</script>");
	}


%>



</body>
</html>