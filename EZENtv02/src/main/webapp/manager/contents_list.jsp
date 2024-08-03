<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head_manager.jsp" %>
	<table align="center">
		<tr>
			<td style="font-size:20pt; font-weight:bold;">컨텐츠 목록</td>
		</tr>
	</table>
	<table border="0" align="center">
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
			<td>
				<button type="button" class="" onClick="">검색</button>
			</td>
		</tr>
	</table>	
	<hr>
	<br>
	<table border="0" align="center" width="80%">
	    <tr bgcolor="#F2F2F2" >
		    <th width="5%" style="color:black">글번호</th>
		    <th width="10%" style="color:black">대분류</th>
		    <th width="10%" style="color:black">중분류</th>
		    <th width="" style="color:black">제목</th>
		    <th width="10%" style="color:black">업로드일자</th>
		    <th width="10%" style="color:black">출시일</th>
	    </tr>
	    <tr align="center" >
		    <td>1</td>
		    <td>영화</td>
		    <td>한국영화</td>
		    <td><a href="../manager/contents_modify.jsp">범죄도시</a></td>
		    <td>0000-00-00</td>
		    <td>2023-11-29</td>
	    </tr>
	    <tr align="center">
		    <td>2</td>
		    <td>애니메이션</td>
		    <td>지브리</td>
		    <td>센과치히로의 행방불명</td>
		    <td>0000-00-00</td>
		    <td>2023-11-29</td>
	    </tr>
	    <tr align="center">
		    <td>3</td>
		    <td>드라마</td>
		    <td>한국</td>
		    <td>정신병동에도 아침이 와요</td>
		    <td>0000-00-00</td>
		    <td>2023-11-29</td>
	    </tr>
	    <tr align="center">
		    <td>4</td>
		    <td>드라마</td>
		    <td>한국</td>
		    <td>스위트홈</td>
		    <td>0000-00-00</td>
		    <td>2023-11-29</td>
	    </tr>
	    <tr align="center">
		    <td>5</td>
		    <td>영화</td>
		    <td>서양</td>
		    <td>존윅4</td>
		    <td>0000-00-00</td>
		    <td>2023-11-29</td>
	    </tr>
	    <tr align="center">
		    <td>6</td>
		    <td>tv프로그램</td>
		    <td>푸드</td>
		    <td>백반기행</td>
		    <td>0000-00-00</td>
		    <td>2023-11-29</td>
	    </tr>
	    <tr align="center">
		    <td>7</td>
		    <td>애니메이션</td>
		    <td>일본</td>
		    <td>짱구는못말려</td>
		    <td>0000-00-00</td>
		    <td>2023-11-29</td>
	    </tr>
	    <tr align="center">
		    <td>8</td>
		    <td>드라마</td>
		    <td>한국</td>
		    <td>무빙</td>
		    <td>0000-00-00</td>
		    <td>2023-11-29</td>
	    </tr>
	</table>
	<table border="0" align="center">
		<tr>
			<td style="height:50px"></td>
		</tr>
		<tr>
			<td >
				◀ 1 2 3 4 5 6 7 8 9  ▶
			</td>
		</tr>	
	</table>
<%@ include file="../include/tail.jsp" %>