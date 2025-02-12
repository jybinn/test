<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자 페이지</title>
		<link rel="stylesheet" href="../css/contents_info.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@600&display=swap" rel="stylesheet">
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<style>
			a 
			{ 
				text-decoration-line: none;
				color: white;
			}
			
			textarea 
			{
		    	width: 480px;
			    height: 6.25em;
			    border: none;
			    resize: none;
		  	}
			
			input
			{
				background-color: black;
				border : 1px solid white;
				color : white;
				
			}
			
			input::placeholder
			{
				color : #BFBFBF;
			}
		</style>
		<script>
		function categoryChange(e) {
			var contents_a = ["넷플릭스", "디즈니플러스", "쿠팡플레이", "왓챠"];
			var contents_b = ["한국영화", "미국영화", "아시아영화"];
			var contents_c = ["한국드라마", "미국드라마", "아시아드라마"];
			var contents_d = ["예능", "먹방", "다큐멘터리"];
			var contents_e = ["TVA", "지브리", "디즈니", "픽사"];
			var target = document.getElementById("contents");

			if(e.value == "a") var d = contents_a;
			else if(e.value == "b") var d = contents_b;
			else if(e.value == "c") var d = contents_c;
			else if(e.value == "d") var d = contents_d;
			else if(e.value == "e") var d = contents_e;

			target.options.length = 0;

			for (x in d) {
				var opt = document.createElement("option");
				opt.value = d[x];
				opt.innerHTML = d[x];
				target.appendChild(opt);
			}
		}	
		</script>
		
	</head>
	<body bgcolor="black" text="white">
		<table border="0" style="width:100%; height:60px;">
			<tr>
				<td width="12%" style="font-size:30pt; font-weight:bold;">
					<a href="../main/main.jsp">
					<span style="color:#2980B9">EZEN</span>TV
					</a>
				</td>
				<td id="menuA" width="150px"><a href="../manager/contents_list.jsp">컨텐츠목록</a></td>	
				<td id="menuB" width="150px"><a href="../manager/contents_add.jsp">컨텐츠추가</a></td>	
				<td id="menuD" width="100px"><a href="../manager/member_list.jsp">회원관리</a></td>
				<td style="text-align:right;"></td>
				<td width="100px">[ 관리자 님 ]</td>
				<td width="70px"><a href="../member/logout.jsp">로그아웃</a></td>
			</tr>
		</table>