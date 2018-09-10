<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.fine.confernce.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.IOException"%>
<%
	request.setCharacterEncoding("UTF-8");

	FineDao dao = FineDao.getInstance();
	FineVo vo = new FineVo();
	
	try{
		String confe_name = request.getParameter("confe_name");
		String confe_affiliation = request.getParameter("confe_affiliation");
		String confe_position = request.getParameter("confe_position");
		String confe_email = request.getParameter("confe_email");
		String confe_phone = request.getParameter("confe_phone");
		
		vo.setConfe_name(confe_name);
		vo.setConfe_affiliation(confe_affiliation);
		vo.setConfe_position(confe_position);
		vo.setConfe_email(confe_email);
		vo.setConfe_phone(confe_phone);
		
		dao.confe_insert(vo);
	%>
		<script>
			alert("신청 성공");
			history.go(-1);
		</script>	
	<%
	}catch(Exception e){
	%>
		<script>
			alert("신청 실패");
			history.go(-1);
		</script>		
	<%
	e.printStackTrace();

	}
%>