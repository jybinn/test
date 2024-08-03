<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head_manager.jsp" %>


	<table align="center">
		<tr>
			<td style="font-size:20pt; font-weight:bold;">컨텐츠 편집</td>
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
	
		<br>
		<hr>
			
	</table>
	
	<form id="" name="" method="" action="modifyOk.html">
	
	<table border="0" width=50% align="center">
			<tr>
				<td style="width:20%; text-align:center;">썸네일 사진</td>
			<td><input id="add_thumbn_photo" name="thumbn_photo" type="file" style="width:80%"></td>
			
			</tr>
			<tr>
				<td style="height:10px"></td>
			</tr>
			<tr>
				<td style="width:20%; text-align:center;">제목</td>
				<td><input type="text" id="add_title" name="add_title" placeholder="제목을 입력하세요." style="width:80%;height:30px"></td>
			</tr>
			</table>
			<br>
			<table style="width:50%;" align="center">
			<tr>
				<td style="width:20%; text-align:center;">출시일</td>
				<td>
				<select id="year" name="year" >
					<option value="1" selected>년</option>
					<option value="year_sel">2023</option>
				</select>
				<select id="month" name="month" >
					<option value="1">월</option>
					<option value="month_sel">12</option>
				</select>
				<select id="day" name="day" >
					<option value="1">일</option>
					<option value="day_sel">31</option>
				</select>
				</td>	
			</tr>
			</table>
			<br>
			<table style="width:50%;" align="center">
			<tr>
				<td style="width:20%; text-align:center;">줄거리</td>
				<td><textarea id="plot" name="plot  " placeholder="줄거리를 입력하세요."></textarea></td>
			</tr>
			<tr>
				<td style="width:20%;zoom:1.2;text-align:center;">
				상영정보
				</td>
				<td><input type="text" id="dtls_text" name="dtls_text" placeholder="입력하세요." style="width:80%;height:30px"></td>
			</tr>
			<tr>
				<td style="width:20%; text-align:center;">국가</td>
				<td><input type="text" id="nation" name="nation" placeholder="제작국가를 입력하세요." style="width:80%;height:30px"></td>
			</tr>
			<tr>
				<td style="width:20%; text-align:center;">등급</td>
				<td><input type="text" id="" name="" placeholder="등급을 입력하세요." style="width:80%;height:30px"></td>
			</tr>
			<tr>
				<td style="width:20%; text-align:center;">장르</td>
				<td><input type="text" id="" name="" placeholder="장르를 입력하세요." style="width:80%;height:30px"></td>
			</tr>
			</table>
			<br>
			<table style="width:50%;" align="center">
			<tr>
				<td style="width:20%; text-align:center;" name="OTT_addr">OTT 주소</td>
				<td><input type="checkbox" value="1" name="netflix">넷플릭스 &nbsp; &nbsp;
					<input type="checkbox" value="2" name="disney">디즈니플러스 &nbsp; &nbsp;
					<input type="checkbox" value="3" name="coupang">쿠팡플레이 &nbsp; &nbsp;
					<input type="checkbox" value="4" name="watcha">왓챠	 &nbsp; &nbsp;
				</td>
			</tr>
			</table>
			<br>
			<table style="width:50%;" align="center">
			<tr>
				<td style="width:20%; text-align:center;">예고편 링크</td>
				<td><input  type="text" id="trailer" name="trailer" placeholder="링크를 입력해주세요." size="77px" style="height:30px"></td>
				<td><a style="color:white;margin-right:1px" href="https://www.youtube.com/">유튜브로 이동</a></td>
			</tr>
			</table>
			<br>
			<table style="width:50%;" align="center">
			<tr>
				<td style="width:20%; text-align:center;">출연진 1</td>
				<td><input id="actor" name="actor" type="file" style="width:80%"><input type="text" id="actor_val" name="actor_val" placeholder="출연진 이름을 입력하세요" style="width:30%;height:20px"></td>
				
			</tr>
			<tr>
				<td style="width:20%; text-align:center;">출연진 2</td>
				<td><input id="actor" name="actor" type="file" style="width:80%"><input type="text" id="actor_val" name="actor_val" placeholder="출연진 이름을 입력하세요" style="width:30%"></td>
				
			</tr>
			<tr>
				<td style="width:20%; text-align:center;">출연진 3</td>
				<td><input id="actor" name="actor" type="file" style="width:80%"><input type="text" id="actor_val" name="actor_val" placeholder="출연진 이름을 입력하세요" style="width:30%"></td>
				
			</tr>
			<tr>
				<td style="width:20%; text-align:center;">출연진 4</td>
				<td><input id="actor" name="actor" type="file" style="width:80%"><input type="text" id="actor_val" name="actor_val" placeholder="출연진 이름을 입력하세요" style="width:30%"></td>
				
			</tr>
			<tr>
				<td style="width:20%; text-align:center;">출연진 5</td>
				<td><input id="actor" name="actor" type="file" style="width:80%"><input type="text" id="actor_val" name="actor_val" placeholder="출연진 이름을 입력하세요" style="width:30%"></td>
			</tr>
			</table>
			<br>
	
			<table align="center">
				 <tr>
					<td>
						<input style="color:white;width:100px;height:30px" type="submit" value="저장" onclick="">
					</td>	
					<td>
					&nbsp;
					<input style="color:white;width:100px;height:30px" type="submit" value="취소" onclick="">
					</td>
					<td>
					&nbsp;
					<input style="color:white;width:100px;height:30px" type="button" value="삭제" onclick="">	
					</td>				
				</tr>
			</table>
		</form>
	
<%@ include file="../include/tail.jsp" %>