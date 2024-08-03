<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ezentv.vo.*"%>
<%@ page import="ezentv.dto.*"%>

<%
 
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id == null || pw == null)
{
	response.sendRedirect("../main/main.jsp");
	return;
}
UserDTO dto = new UserDTO();
UserVO vo = dto.Login(id, pw);
if(vo == null)
{
	// 아이디 비번 틀림
	%>
	<script>
		alert("아이디 또는 비밀번호가 일치하지 않습니다.");
		document.location = "../main/main.jsp";
	</script>
	<%
}else
{
	session.setAttribute("login",vo);
	response.sendRedirect("../main/main.jsp");
}


%>		
 