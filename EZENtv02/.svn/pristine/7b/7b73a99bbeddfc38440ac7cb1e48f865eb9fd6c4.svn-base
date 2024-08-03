<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String mode = (String)session.getAttribute("mode");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>EZEN TV</title>
		<script src="../js/jquery-3.7.1.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
		<link rel="stylesheet" href="../css/contents_info.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@600&display=swap" rel="stylesheet">
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> 
		<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
		<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
		<link rel="stylesheet" href="../css/head.css">
		<script src="../js/head.js"></script>
	</head>
	<body bgcolor="black" text="white">	
		<!-- 윗머리글 -->
		<table border="0" style="width:100%; height:60px;">
			<tr>
				<td width="10%" style="font-size:30pt; font-weight:bold;position:relative;left:20px">
					<a href="../main/main.jsp">
					<span style="color:#2980B9">EZEN</span>TV
					</a>
				</td>
				<td>
					<a id="menuA" href="../main/topchart.jsp">
						<span style="font-size:20px">
						인기순위
						</span>
					</a>
					&nbsp;
					&nbsp;
					<a id="menuB" href="" style="color:white">
						<span style="font-size:20px">
							카테고리
						</span>
					</a>
					&nbsp;
					&nbsp;
					<%
					if(mode != null && mode.equals("admin"))
					{
						%>
						<a id="menuC" href="../manager/contents_list.jsp" style="color:white">
							<span style="font-size:20px">
								관리자
							</span>
						</a>
						<%
					}
					%>
				</td>	
				<td  style="text-align:right;">
					<%
					if(mode == null)
					{
						//NOT LOGIN 시뮬레이션
						%>
						<a href="../info/serch.jsp"><img src="../img/돋보기.png" width="35px" height="35px" id="wish"/>&nbsp;</a>
						<img src="../img/사용자.png" width="35px" height="35px" id="userImg"/>&nbsp;
						<%
					}else if(mode.equals("user"))
					{
						//일반 사용자
						%>
						<b style="position:relative;bottom:10px">[ 홍길동 님 ]</b> &nbsp;&nbsp;
						<a href="../info/serch.jsp"><img src="../img/돋보기.png" width="35px" height="35px" id="wish"/>&nbsp;</a>
						<a href="../info/wishlist.jsp"><img src="../img/wish.png" width="35px" height="35px" id="wish"/>&nbsp;</a>
						<img src="../img/사용자.png" width="35px" height="35px" id="userLoginImg"/>&nbsp;						
						<table id="menuTableB"  style="display:none;" border="0" width="100px">
							<tr>
								<td align="left" height="30px"><a href="../info/mypage.jsp">마이페이지</a></td>
							</tr>
							<tr>
								<td align="left" height="30px"><a href="../member/logout.jsp">로그아웃</a></td>
							</tr>
						</table>
					<%
					}else if(mode.equals("admin"))
					{
						//관리자
						%>
						[ 관리자 님 ]&nbsp;&nbsp;
						<a href="../member/logout.jsp">로그아웃</a>
						<%
					}				
					%>
				</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td>
					<table id="menuTableA" style="display:none;" border="0" width="100px">
						<tr>
							<td height="30px"><a href="../main/movie.jsp">영화</a></td>
						</tr>
						<tr>
							<td height="30px"><a href="../main/drama.jsp">드라마</a></td>
						</tr>
						<tr>				
							<td height="30px"><a href="../main/tvprogram.jsp">TV 프로그램</a></td>
						</tr>
						<tr>				
							<td height="30px"><a href="../main/anime.jsp">애니메이션</a></td>
						</tr>
					</table>
				</td>
				<td></td>
			</tr>	
		</table>
		
<!-- 여기서부터 하세요 -->
<!-- 메인화면 -->	
