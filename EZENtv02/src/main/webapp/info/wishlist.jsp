<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>

	<div class="main_image">
	    		<img src="../img/마이페이지.png" width="100%" height="500px">
	 		 	<h1 class="main_image_text" align="center">찜목록</h1>
	</div>
	<!-- 메인화면 끝 -->
	
<form name="mypage" method="post" action="mypageOK.html">
	<table border="0" style="width:100%;">	
		<tr>
			<td align="center"><h1>♥ 나의 찜목록 ♥</h1></td>
		</tr>
		<tr>
			<td style="height:20px"></td>
		</tr>
	</table>
		<table align="center" style="width:90%;margin-left:110px">
			<tr>
				<td align="left"><img src="../img/탑건.jpg" width="300px" height="400px"></td>
				<td align="left"><img src="../img/기생충.jpg" width="300px" height="400px"></td>
				<td align="left"><img src="../img/샹견니.jpg" width="300px" height="400px"></td>
				<td align="left"><img src="../img/지브리.jpg" width="300px" height="400px"></td>
				<td align="left"><img src="../img/범죄도시.jpg" width="300px" height="400px"></td>
			</tr>
			<tr>
				<td><img class="heart" src="../img/하트.png"  width="15px" height="15px" align="right">탑건</td>
				<td><img class="heart" src="../img/하트.png"  width="15px" height="15px" align="right">기생충</td>
				<td><img class="heart" src="../img/하트.png"  width="15px" height="15px" align="right">상견니</td>
				<td><img class="heart" src="../img/하트.png"  width="15px" height="15px" align="right">그대들은 어떻게 살것인가</td>
				<td><img class="heart" src="../img/하트.png"  width="15px" height="15px" align="right">범죄도시</td>
			</tr>
			<tr>
				<td style="color:#555555">찜:52개</td>
				<td style="color:#555555">찜:23개</td>
				<td style="color:#555555">찜:123개</td>
				<td style="color:#555555">찜:15개</td>
				<td style="color:#555555">찜:125개</td>
			</tr>
		</table>
		</form>
<%@ include file="../include/tail.jsp" %>