

window.onload = function()
{
	$("#menuB").mouseover(function(){  // 마우스 올렸을때 글자색 바꾸고 A테이블 소환
		$(this).css("color", "#535151");
		$("#menuTableA").css("display", "none");
		var menuID = $(this).attr("id");
		
		switch(menuID)
		{
			case "menuB" :$("#menuTableA").css("display", "");
				break;
		}
	});
	$("#menuB").mouseout(function(){   // 마우스 땠을때 글자색
		$(this).css("color", "white");
	});
						
	
	$("#menuTableA").mouseleave(function(){
		$(this).toggle();
	});
	
	$("#menuTableB").mouseleave(function(){
		$(this).toggle();
	});
	
	$("#userImg").click(function() {		
		$.ajax({
			type : "get",
			url : "../member/login.jsp",
			dataType : "html",
			success : function(data)
			{
				//통신이 성공적으로 이루어졌을때 이 함수를 타게된다.
				$("#modalText").html(data);
				$("#modalBody").css("height","350px");
				$("#modalWrap").css("display","block");
				DoJoinSet();
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
		
	});
	
	$("#userLoginImg").mouseover(function(){  // 마우스 올렸을때 글자색 바꾸고 B테이블 소환
		$(this).css("color", "#535151");
		$("#menuTableB").css("display", "none");
		var menuID = $(this).attr("id");
		
		switch(menuID)
		{
			case "userLoginImg" :$("#menuTableB").css("display", "");
				break;
		}
	});
	
	$("#closeBtn").click(function() {
		$("#modalWrap").css("display","none");
	});
	
	window.onclick = function(event) {
		console.log(event.target);
		if (event.target == document.getElementById("modalWrap")) 
		{
			$("#modalWrap").css("display","none");
		}
	}	
	
	new Swiper('.swiper-container', {

		slidesPerView : 5, // 동시에 보여줄 슬라이드 갯수
		spaceBetween : 50, // 슬라이드간 간격
		slidesPerGroup : 5, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

		// 그룹수가 맞지 않을 경우 빈칸으로 메우기
		// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		loopFillGroupWithBlank : true,

		loop : true, // 무한 반복

		navigation : { // 네비게이션
			nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
		},
	});
	
}
    
function DoJoinSet()
{
	$("#join").click(function() {
		$.ajax({
			type : "get",
			url : "../member/join.jsp",
			dataType : "html",
			success : function(data)
			{
				//통신이 성공적으로 이루어졌을때 이 함수를 타게된다.
				$("#modalText").html(data);
				$("#modalBody").css("height","550px");
				$("#modalWrap").css("display","block");
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
		
	});		
	
	$("#id_find").click(function() {
		$.ajax({
			type : "get",
			url : "../member/id_find.jsp",
			dataType : "html",
			success : function(data)
			{
				//통신이 성공적으로 이루어졌을때 이 함수를 타게된다.
				$("#modalText").html(data);
				$("#modalBody").css("height","350px");
				$("#modalWrap").css("display","block");
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
		
	});	
	
	$("#pw_find").click(function() {
		$.ajax({
			type : "get",
			url : "../member/pw_find.jsp",
			dataType : "html",
			success : function(data)
			{
				//통신이 성공적으로 이루어졌을때 이 함수를 타게된다.
				$("#modalText").html(data);
				$("#modalBody").css("height","350px");
				$("#modalWrap").css("display","block");
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
		
	});				
}

$( document ).ready( function() {
	
	$('.autoplay').slick({
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  spaceBetween: 10,
		  autoplay: true,
		  autoplaySpeed: 1800,
		  cssEase: 'linear',
		  fade: true,
		  
		});
	
	$('.center').slick({
		  centerMode: true,
		  centerPadding: '10px',
		  slidesToShow: 6,
		  autoplay: true,             //슬라이드 자동 시작(true or false) ▶기본값 false
		  autoplaySpeed: 2000,
		  speed: 2000, 
		  responsive: [
		    {
		      breakpoint: 768,
		      settings: {
		        arrows: false,
		        centerMode: true,
		        centerPadding: '40px',
		        slidesToShow: 3,
		        autoplay: true,             //슬라이드 자동 시작(true or false) ▶기본값 false
		        autoplaySpeed: 2000,
		      }
		    },
		    {
		      breakpoint: 480,
		      settings: {
		        arrows: false,
		        centerMode: true,
		        centerPadding: '40px',
		        slidesToShow: 1,
		        autoplay: true,             //슬라이드 자동 시작(true or false) ▶기본값 false
		        autoplaySpeed: 2000,
		      }
		    }
		  ]
		});
  } );
