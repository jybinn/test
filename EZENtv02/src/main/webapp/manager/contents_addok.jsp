<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>    
<%@ page import="java.io.*" %>
<%@ page import="ezentv.dto.*" %>
<%@ page import="ezentv.vo.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
String uploadPath = "C:\\Users\\502\\eclipse-workspace\\STUDY\\EZENtv02\\src\\main\\upload";
//업로드가 가능한 최대 파일 크기를 지정한다.
int size = 10 * 1024 * 1024;

MultipartRequest multi = new MultipartRequest(request,uploadPath,size,
		"UTF-8",new DefaultFileRenamePolicy());
//request.setCharacterEncoding("UTF-8");


String no  			    = multi.getParameter("contents_no");
String thumfile_phyname = "";
String thumfile_fname  	= (String)multi.getFilesystemName("thumfile");
String trailer  		= multi.getParameter("trailer");
String title  			= multi.getParameter("title");
String opendate  		= multi.getParameter("opendate");
String screen_info  	= multi.getParameter("screen_info");
String running_time  	= multi.getParameter("running_time");
String nation 			= multi.getParameter("nation");
String story 			= multi.getParameter("story").replace("\n", "<br>");
String grade            = multi.getParameter("grade");
String genre 			= multi.getParameter("genre");
String OTTaddr_neflix   = multi.getParameter("OTTaddr_neflix");
String OTTaddr_disney   = multi.getParameter("OTTaddr_disney");
String OTTaddr_coupang  = multi.getParameter("OTTaddr_coupang");
String OTTaddr_watcha   = multi.getParameter("OTTaddr_watcha");
String uploaddate  	 	= multi.getParameter("uploaddate");


if(thumfile_fname != null)
{
	//논리명을 물리명 이름으로 변경한다.
	thumfile_phyname = UUID.randomUUID().toString();
	
	//파일 이름 변경
	String orgName = uploadPath + "\\" + thumfile_fname;
	String newName = uploadPath + "\\" + thumfile_phyname;		

	File srcFile    = new File(orgName);
	File targetFile = new File(newName);
	srcFile.renameTo(targetFile);
	
	out.println("원래 파일명 : " + orgName + "<br>");
	out.println("바뀐 파일명 : " + newName + "<br>");	
}

ContentsVO vo = new ContentsVO();
vo.setContents_no(no);
vo.setThumfile_phyname(thumfile_phyname);
vo.setThumfile_fname(thumfile_fname);
vo.setTralier_link(trailer);
vo.setTitle(title);
vo.setOpendate(opendate);
vo.setScreen_info(screen_info);
vo.setRunning_time(running_time);
vo.setNation(nation);
vo.setStory(story);
vo.setGrade(grade);
vo.setGenre(genre);
vo.setOTTaddr_neflix(OTTaddr_neflix);
vo.setOTTaddr_disney(OTTaddr_disney);
vo.setOTTaddr_coupang(OTTaddr_coupang);
vo.setOTTaddr_watcha(OTTaddr_watcha);
vo.setUploaddate(uploaddate);

ContentsDTO dto = new ContentsDTO();
dto.Insert(vo);

//response.sendRedirect("../info/contents_Info.jsp?no=" + vo.getContents_no());
%>

번호: <%= vo.getContents_no() %>
<br>
첨부파일:<%= vo.getThumfile_phyname() %>
<br>
첨부파일2:<%=  vo.getThumfile_fname() %>
<br>
예고편:<%= vo.getTralier_link() %>
<br>
제목:<%= vo.getTitle() %>
<br>
출시일:<%= vo.getOpendate() %>
<br>
상영정보:<%= vo.getScreen_info() %>
<br>
상영시간:<%= vo.getRunning_time() %>
<br>
국가:<%= vo.getNation() %>
<br>
줄거리:<%= vo.getStory() %>
<br>
등급:<%= vo.getGrade() %>
<br>
장르:<%= vo.getGenre() %>
<br>
넷플릭스:<%= vo.getOTTaddr_neflix() %>
<br>
디즈니:<%= vo.getOTTaddr_disney() %>
<br>
쿠팡:<%= vo.getOTTaddr_coupang() %>
<br>
왓챠:<%= vo.getOTTaddr_watcha() %>
<br>
업로드일:<%= vo.getUploaddate() %>
<br>
