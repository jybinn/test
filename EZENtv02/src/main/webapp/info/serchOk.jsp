<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>

<div class="lb-wrap">
			<div class="serch_text">
  			<h1 style="font-size:38px">검색을 통해서</h1>
  			<h1 style="font-size:38px">내가 원하는 컨텐츠정보를 찾아보세요!</h1>
  			<br>
  			<form post="get" action="serchok.jsp" >
  				<table style="width:600px;">
  					<tr>
  						<td>
  							<input type="text" style="width:100%;border-radius: 5px;border:1px solid white;opacity: 0.5;zoom:2.5;font-size:10px">
  						</td>
						<td>
							<input style="width:40px;height:40px;"type="image" src="../img/whiteserch.png">
  						</td>
  					</tr>
  					<tr>
  						<td>
  							<br>
  						</td>
  					</tr>
  				</table>
  				</form>
  				
			</div>
	 <div class="lb-image">
	    <img src="../img/마이페이지.png" alt="">
	 </div>
	</div>	
	<h1 align="center">검색결과</h1>
	<br>
	<table align="center" style="width:90%;margin-left:110px">
		<tr>
			<td align="left"><a href="../info/cotents_Info.jsp"><img src="../img/city.jpg" width="300px" height="400px"></a></td>
		</tr>
		<tr>
			<td>범죄도시</td>
		</tr>
	</table>


		
		<div id="modalWrap">
		    <div id="modalBody">
		      <span id="closeBtn">&times;</span>
		      <div id="modalText">	      
		      </div>
		    </div>
		</div>		
	<!-- 여기까지 -->
<%@ include file="../include/tail.jsp" %>