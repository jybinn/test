<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp"%>
<%@ page import="ezentv.vo.*" %>       
<%@ page import="ezentv.dto.*" %>

<div align="center" class="main_image" style="width:100%">
	<br>
	<%
	String no = request.getParameter("no");
	if(no == null){
		no = "";
	}
	String trailer = request.getParameter("trailer");
	ContentsDTO dto = new ContentsDTO();
	ContentsVO vo = dto.Read(no);
	%>
	<iframe width="1500px" height="800px"
		src="https://www.youtube.com/embed/<%= vo.getTralier_link() %>?autoplay=1&mute=1&loop=1&playlist=<%= vo.getTralier_link() %>&controls=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
	<br>
</div>
<table align="center" border="0" style="width: 10%; margin-left: 180px;">
	<tr>
		<td><img class="heart" src="../img/하트.png" width="35px"
			height="40px"></td>
	</tr>
</table>
<form style="margin: 0px" class="mb-3" name="myform" id="myform"
	method="post">
	<table align="center" border="0"
		style="width: 80%; margin-left: 180px;">
		<tr>
			<td><h1 class="main_image_text" style="text-align: left"><%= vo.getTitle() %></h1></td>
		</tr>
		<tr>
			<td class="review" style="font-size: 30px">★★★★☆ 4.0</td>
		</tr>
		<tr>
			<td class="main_text"><%= vo.getStory() %></td>
		</tr>
		<tr>
			<td style="height: 100px"></td>
		</tr>
		<tr>
			<td align="left" style="font-size: 40px">작품정보</td>
		</tr>
		<tr>
			<td style="height: 30px"><hr></td>
		</tr>
		<tr>
			<td>
				<table border="0">
					<tr>
						<th align="left" style="font-size: 25px; width: 150px;">등급</th>
						<td align="center" style="font-size: 20px; color: #636363"><%= vo.getGrade() %></td>
					</tr>
					<tr>
						<th align="left" style="font-size: 25px; width: 150px">국가</th>
						<td align="center" style="font-size: 20px; color: #636363"><%= vo.getNation() %></td>
					</tr>
					<tr>
						<th align="left" style="font-size: 25px; width: 150px;"><%= vo.getScreen_info() %></th>
						<td align="center" style="font-size: 20px; color: #636363"><%= vo.getRunning_time() %></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td style="height: 100px"></td>
		</tr>
		<tr>
			<td align="left" style="font-size: 40px">지금 여기서 감상!</td>
		</tr>
		<tr>
			<td style="height: 30px"><hr></td>
		</tr>
		<tr>
			<td>
				<table border="0">
					<%
					if(vo.getOTTaddr_neflix())
					{
					%>
					<tr>
						<th align="left" style="font-size: 25px; width: 250px;">
						<a href="https://www.netflix.com/kr/" style="color: white">
						<span tyle="color: #E50914">NEFLIX</span>바로가기</a></th>
					</tr>
					<%
					}else if(vo.getOTTaddr_coupang())
					{
					%>
					<tr>
						<th align="left" style="font-size: 25px; width: 250px;"><a
							href="https://coupangplay.com/open" style="color: white"><span
								style="color: #00A7F6">쿠팡플레이</span>바로가기</a></th>
					</tr>
					<%
					}else if(vo.getOTTaddr_disney())
					{
						%>
					<tr>
						<th align="left" style="font-size: 25px; width: 250px;"><a
							href="https://www.disneyplus.com/ko-kr" style="color: white"><span
								style="color: #0063E5">디즈니플러스</span>바로가기</a></th>
					</tr>
						<% 
					}else if(vo.getOTTaddr_watcha())
					{
					%>
					<tr>
						<th align="left" style="font-size: 25px; width: 250px;"><a
							href="https://watcha.com/" style="color: white"><span
								style="color: #FF0558">왓챠</span>바로가기</a></th>
					</tr>
					
					<%
					}
					%>
				</table>
			</td>
		</tr>
		<tr>
			<td style="height: 100px"></td>
		</tr>
		<tr>
			<td align="left" style="font-size: 40px">등장인물</td>
		</tr>
		<tr>
			<td style="height: 40px; width: 80%"><hr></td>
		</tr>
		<tr>
			<td>
				<table>
					<tr>
						<td><img src="../img/actor/madong.png" width="200px" height="200px"
							style="margin: 50px"></td>
						<td><img src="../img/actor/city_actor.2.jpg" width="200px" height="200px"
							style="margin: 50px"></td>
						<td><img src="../img/actor/city_actor3.jpg" width="200px" height="200px"
							style="margin: 50px"></td>
						<td><img src="../img/actor/city_actor4.jpg" width="200px" height="200px"
							style="margin: 30px"></td>
						<td><img src="../img/actor/city_actor5.jpg" width="200px" height="200px"
							style="margin: 30px"></td>
					</tr>
					<tr>
						<td align="center" width="10">마동석</td>
						<td align="center">손석구</td>
						<td align="center">최귀화</td>
						<td align="center">박지환</td>
						<td align="center">허동원</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table border="0" align="center" style="width: 100%;">
					<tr>
						<td style="height: 100px"></td>
					</tr>
					<tr>
						<td align="left" style="font-size: 40px">리뷰</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table  style="position:relative;left:180px" border="0" style="width:100%">
		<tr>
			<td align="center" style="width:12%">
				<fieldset>
					<input type="radio" name="reviewStar" value="5" id="rate1">
						<label for="rate1" style="font-size: 30px;margin-right:20px">★</label> 
					<input type="radio"name="reviewStar" value="4" id="rate2">
						<label for="rate2" style="font-size: 30px">★</label> 
					<input type="radio" name="reviewStar" value="3" id="rate3">
						<label for="rate3" style="font-size: 30px">★</label> 
					<input type="radio" name="reviewStar" value="2" id="rate4">
						<label for="rate4" style="font-size: 30px;">★</label> 
					<input type="radio" name="reviewStar" value="1" id="rate5">
						<label for="rate5" style="font-size: 30px;">★</label>
				</fieldset>
			</td>
			<td>
				<input type="text" placeholder="별점 선택 후 여러분의 의견을 적어주세요!"
				style="width: 105%; height: 30px; background-color: black; border-color: #BCBCBC; color: white">
			</td>
			<td align="right" style="position:relative;left:-50px" >
				<input type="submit" value="등록" style="width: 30%; height: 30px">
			</td>
		</tr>
	</table>
</form>
<table style="position:relative;left:180px" align="center" width="80%">
	<tr>
		<td style="height: 10px"></td>
	</tr>
	<tr bgcolor="#F2F2F2" style="color: white">
		<th width="8%" style="color: black">별점</th>
		<th width="8%" style="color: black">작성자</th>
		<th width="" style="color: black">리뷰</th>
		<th width="10%" style="color: black">작성일</th>
		<th width="6%" style="color: black">신고</th>
		<th width="6%" style="color: black">비고</th>
	</tr>
	<tr align="center">
		<td>★★★★★</td>
		<td>최니니</td>
		<td>세 번 봤는데 볼 때마다 눈물이 날 정도로 감동적이었다ㅜㅜ</td>
		<td>2023-12-05</td>
		<td><img src="../img/singo.png"></td>
		<td>[삭제]</td>
	</tr>
	<tr align="center">
		<td>★★★★★</td>
		<td>혁쿠</td>
		<td>솔직히 처음엔 기대도 안하고 봤는데 생각보다 재밌어서 또 봤음</td>
		<td>2023-12-05</td>
		<td><img src="../img/singo.png"></td>
		<td></td>
	</tr>
	<tr align="center">
		<td>★★★★★</td>
		<td>전또따</td>
		<td>최고에요</td>
		<td>2023-12-05</td>
		<td><img src="../img/singo.png"></td>
		<td></td>
	</tr>
	<tr align="center">
		<td>★★★★★</td>
		<td>몽쉘쁘띠</td>
		<td>마동석최고</td>
		<td>2023-12-05</td>
		<td><img src="../img/singo.png"></td>
		<td></td>
	</tr>
</table>

<%@ include file="../include/tail.jsp"%>