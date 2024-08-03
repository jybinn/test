<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script>

    function DoJoin()
    {
    	if($("#id").val() == "")
    	{
    		alert("아이디를 입력하세요.");
    		$("#id").focus();
    		return;
    	}
    	
    	if($("#pw").val() == "")
    	{
    		alert("비밀번호를 입력하세요.");
    		$("#pw").focus();
    		return;
    	}
    	
    	if($("#pw").val() != $("#pwcheck").val())
    	{
    		alert("비밀번호가 일치하지 않습니다.");
    		$("#pw").focus();
    		return;
    	}
    	
    	if($("#name").val() == "")
    	{
    		alert("이름을 입력하세요.");
    		$("#name").focus();
    		return;
    	}
    	
    	if($("#nickname").val() == "")
    	{
    		alert("닉네임을 입력하세요.");
    		$("#nickname").focus();
    		return;
    	}
    	
    	if($("#email").val() == "")
    	{
    		alert("이메일을 입력하세요.");
    		$("#email").focus();
    		return;
    	}
    	
    	
    	id = $("#id").val();
    	
    	$.ajax({ // 비동기 요청을 수행하는데 사용, 전체를 새로고침 할 필요없음
    		type : "get",
    		url : "../member/idcheck.jsp?id=" + id,
    		dataType : "html",
    		success : function(data)
    		{
    			//통신이 성공적으로 이루어졌을때 이 함수를 타게된다.
    			data = data.trim();
    			//alert(data);
    			
    			if(data == "002")
    			{
    				if(confirm("회원가입을 진행하시겠습니까?") == 1)
    				{
    					// 회원가입 진행
    					$("#joinForm").submit();
    				}
    			}
    			if(data == "001")
    			{
    				alert("아이디가 입력되지 않았습니다.");
    			}
    			if(data == "003")
    			{
    				alert("이미 등록된 아이디 입니다.");
    			}
    		},
    		error : function(xhr, status, error)
    		{
    			//통신 오류 발생시
    		},
    		complete : function(data)
    		{
    			//통신이 성공하거나 실패했어도 이 함수를 타게된다.
    		}
    	});
    	
    	return;
    }

    
    </script>
    
	<form id="joinForm" name="joinForm" method="post" action="../member/joinok.jsp">    
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
			<td style="height:3px"></td>
		</tr>
		<tr>
			<td align="center"><input type="password" id="pwcheck" name="pwcheck" placeholder="비밀번호를 재입력하세요." style="width:70%; height:40px; background-color:#535151; border:1px solid white; color:white;"></td>			
		</tr>
	</table>
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:3px"></td>
		</tr>
		<tr>
			<td align="center"><input type="text" id="name" name="name" placeholder="이름을 입력하세요." style="width:70%; height:40px; background-color:#535151; border:1px solid white; color:white;"></td>			
		</tr>
	</table>		
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:3px"></td>
		</tr>
		<tr>
			<td align="center"><input type="text" id="nickname" name="nickname" placeholder="닉네임을 입력하세요." style="width:70%; height:40px; background-color:#535151; border:1px solid white; color:white;"></td>			
		</tr>
	</table>	
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:3px"></td>
		</tr>
		<tr>
			<td align="center"><input type="text" id="email" name="email" placeholder="이메일을 입력하세요." style="width:70%; height:40px; background-color:#535151; border:1px solid white; color:white;"></td>			
		</tr>
	</table>	
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:20px"></td>
		</tr>
		<tr>
			<td style="text-align:center;">
				<td colspan="2" style="text-align:center;">
				<input type="button" value="회원가입" onclick="DoJoin();" style="width:345px; height:45px; font-size:15pt; color:white; background-color:#2980B9;">			
			</td>
		</tr>
	</table>	
	<table border="0" style="width:100%;">
		<tr>
			<td style="height:50px"></td>
		</tr>

	</table>
	</form>