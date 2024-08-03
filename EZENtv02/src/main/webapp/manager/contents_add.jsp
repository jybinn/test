<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head_manager.jsp" %>
	<script>
	function GoYouTube()
	{
		if($("#trailer").val() == "")
		{
			alert("예고편 유튜브 ID를 입력하세요.");
			$("#trailer").focus();
			return;
		}
		id = $("#trailer").val();			
		window.open("https://www.youtube.com/watch?v=" + id);
	}
	</script>
	<table align="center">
		<tr>
			<td style="font-size:20pt; font-weight:bold;">컨텐츠 추가</td>
		</tr>
	</table>
	<table align="center">
		<tr>
			<td>
				<select onchange="categoryChange(this)">
					<option>선택해주세요</option>
					<option value="a">인기순위</option>
					<option value="b">영화</option>
					<option value="c">드라마</option>
					<option value="d">TV프로그램</option>
					<option value="e">애니메이션</option>
				</select>
				<select id="contents">
					<option>선택해주세요</option>
				</select>
			</td>	
		</tr>	
	</table>
	<hr>	
	<style>
		.content_td
		{
			height: 40pt;
		}
		input[type=text], input[type=file]
		{	
			height: 24pt;
		}
	</style>
	<form id="contents_add" name="contents_add" method="post" action="contents_addok.jsp" enctype="multipart/form-data"><!-- 컨텐츠추가 -->
	<table  border="0" style="width:50%;" align="center">
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">유튜브 예고편 ID (*)</td>
			<td><input  type="text" id="trailer" name="trailer" placeholder="링크를 입력해주세요." style="width:98%"
			            style="height:30px">
			     <br>
			    <a style="color:white;margin-right:1px" href="javascript:GoYouTube();">유튜브에서 보기</a>
			</td>			
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">썸네일 사진(*)</td>
			<td><input id="thumfile" name="thumfile" accept="image/*" type="file" style="width:98%"></td>
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">제목(*)</td>
			<td><input type="text" id="title" name="title" placeholder="제목을 입력하세요." 
			           style="width:98%;height:30px"></td>
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">출시일(*)</td>
			<td>
			<input type="text" id="opendate" name="opendate" placeholder="ex)0000-00-00에 맞춰서 작성해주세요." style="width:98%;">
			</td>	
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">상영정보(*)</td>
			<td><input type="text" id="screen_info" name="screen_info" placeholder="입력하세요." style="width:98%;"></td>
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">상영시간(*)</td>
			<td><input type="text" id="running_time" name="running_time" placeholder="입력하세요." style="width:98%;"></td>
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">줄거리(*)</td>
			<td><textarea id="story" name="story" style="width:98%;height:100px" placeholder="줄거리를 입력하세요."></textarea></td>
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">국가(*)</td>
			<td><input type="text" id="nation" name="nation" placeholder="제작국가를 입력하세요." style="width:98%;"></td>
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">등급(*)</td>
			<td><input type="text" id="grade" name="grade" placeholder="등급을 입력하세요." style="width:98%;"></td>
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;">장르(*)</td>
			<td><input type="text" id="genre" name="genre" placeholder="장르를 입력하세요." style="width:98%;"></td>
		</tr>
		<tr>
			<td class="content_td" style="width:20%; text-align:center;" name="OTT_addr">OTT 주소(*)</td>
			<td><input type="checkbox" value="1" name="OTTaddr_neflix">넷플릭스 &nbsp; &nbsp;
				<input type="checkbox" value="2" name="OTTaddr_disney">디즈니플러스 &nbsp; &nbsp;
				<input type="checkbox" value="3" name="OTTaddr_coupang">쿠팡플레이 &nbsp; &nbsp;
				<input type="checkbox" value="4" name="OTTaddr_watcha">왓챠	 &nbsp; &nbsp;
			</td>
		</tr>
		<%
		for(int i = 1; i <= 5; i++)
		{
			%>
			<tr>
				<td class="content_td" style="width:20%; text-align:center;">출연진 <%= i %></td>
				<td>
					<table border="0" style="width:99%">
						<tr>
							<td style="width:70%">
								<input id="act_file_<%= i %>" name="act_file_<%= i %>" type="file" style="width:100%">
							</td>
							<td>
							    <input type="text" id="actor_<%= i %>" name="actor_<%= i %>" placeholder="출연진 이름을 입력하세요" style="width:100%;">
							</td>
						</tr>
					</table> 
				</td>
			</tr>
			<%
		}
		%>		
	</table>	
	<table border="0"  align="center" style="width:100%">
			<tr>
				<td style="height:30px"></td>
			</tr>
			<tr>
				<td align="right">
					<input style="color:white;width:50px;zoom:1.5;" type="submit" value="저장" onclick="">
				</td>	
				<td align="left">
					<input style="color:white;width:50px;zoom:1.5;" type="button" value="취소" onclick="">
				</td>					
			</tr>
	</table>
	</form>	
			
<%@ include file="../include/tail.jsp" %>