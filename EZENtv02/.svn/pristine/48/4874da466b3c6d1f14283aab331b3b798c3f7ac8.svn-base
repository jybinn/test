<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    <style>
    
		* 
		{
			  padding:0;
			  margin:0;
			  box-sizing: border-box;
		}
		
		
		#modalWrap 
		{
			  position: fixed; /* Stay in place */
			  z-index: 1; /* Sit on top */
			  padding-top: 200px; /* Location of the box */
			  left: 0;
			  top: 0;
			  width: 100%; /* Full width */
			  height: 100%; /* Full height */
			  overflow: auto; /* Enable scroll if needed */
			  background-color: rgba(0,0,0,0.5); /* Black w/ opacity */
			  display : none;
		}
		
		#modalBody 
		{
			  width: 500px;
			  height: 400px;
			  padding: 5px 5px;
			  margin: 0 auto;
			  background-color: #212121;
		}
		
		#closeBtn
		{
			  float:right;
			  font-weight: bold;
			  color: #777;
			  font-size:25px;
			  cursor: pointer;
		}		
		
	</style>
	
	<script>
	
	function DoLogin()
	{
		if($("#id").val() == "")
		{
			alert("아이디를 입력하세요.");
			$("#id").focus();
			return false;
		}
		
		if($("#pw").val() == "")
		{
			alert("비밀번호를 입력하세요.");
			$("#pw").focus();
			return false;
		}
		return true;
	}
	
	</script>
		
	<form name="login" method="post" action="../member/loginok.jsp" onsubmit="return DoLogin();">
	
	<table border="0" style="width:100%;">
		<tr>
			<td width="10%" style="font-size:30pt; font-weight:bold; text-align:center;">
			<span style="color:#2980B9">EZEN</span><span style="color:white">TV</span></td>	
		</tr>
	</table>
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:20px"></td>
		</tr>
		<tr>
			<td align="center"><input type="text" id="id" name="id" placeholder="아이디를 입력하세요." style="width:70%; height:40px; background-color:#535151; border:1px solid white; color:white;"></td>			
		</tr>
	</table>	
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:3px"></td>
		</tr>
		<tr>
			<td align="center"><input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요." style="width:70%; height:40px; background-color:#535151; border:1px solid white; color:white;"></td>			
		</tr>
	</table>	
	<table border="0" style="width:100%;">
	<tr>
		<td style="height:5px"></td>
	</tr>
	<tr>
		<td align="right"><input type="button" value="회원가입" style="background-color:transparent; border: 0; color:white;" id="join">&nbsp;&nbsp;&nbsp;&nbsp;</td> 		
		<td align="center"><input type="button" value="아이디찾기" style="background-color:transparent; border: 0; color:white;" id="id_find">&nbsp;&nbsp;&nbsp;</td>
		<td align="left"><input type="button" value="비밀번호찾기" style="background-color:transparent; border: 0; color:white;" id="pw_find"></td>
	</tr>
	</table>
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:5px"></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center;">
			<input type="submit" style="width:345px; height:45px; font-size:15pt; color:white; background-color:#2980B9;" value="로그인">
			</td>			
		</tr>
	</table>
	</form>
	
	<div id="modalWrap">
		    <div id="modalBody">
		      <span id="closeBtn">&times;</span>
		      <div id="modalText">	      
		      </div>
		    </div>
		</div>		