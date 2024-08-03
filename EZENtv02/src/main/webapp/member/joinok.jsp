<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ezentv.vo.*"%>
<%@ page import="ezentv.dto.*"%>
<%

request.setCharacterEncoding("UTF-8");

String id 		= request.getParameter("id");
String pw 		= request.getParameter("pw");
String name 	= request.getParameter("name");
String nickname = request.getParameter("nickname");
String email 	= request.getParameter("email");


if(id == null || pw == null || name == null || nickname == null || email == null)
{
	response.sendRedirect("../main/main.jsp");
	return;
}

// 회원가입 처리
UserVO vo = new UserVO();
vo.setId(id);
vo.setPw(pw);
vo.setName(name);
vo.setNickname(nickname);
vo.setEmail(email);
UserDTO dto = new UserDTO();
dto.Join(vo);

%>
<script>
	alert("회원가입이 완료되었습니다.")
	document.location = "../main/main.jsp";
</script>