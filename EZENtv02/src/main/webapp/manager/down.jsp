<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ezentv.vo.*" %>       
<%@ page import="ezentv.dto.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>    
<%
String no = request.getParameter("no");
if( no == null || no.equals("") )
{
	response.sendRedirect("../main/main.jsp");
	return;
}
ContentsDTO dto = new ContentsDTO();
ContentsVO  vo  = dto.Read(no);
if( vo == null )
{
	response.sendRedirect("../main/main.jsp");
	return;	
}

String phyname = vo.getThumfile_phyname();
String fname   = vo.getThumfile_fname();

//첨부파일을 하드디스크에서 읽어서 브라우저에 전송한다.
String uploadPath = "C:\\Users\\502\\eclipse-workspace\\STUDY\\EZENtv02\\src\\main\\upload";
String fileName = uploadPath + "\\" + phyname;
//out.println(fileName);

//브라우저에 파일명을 보낸다.
fname = URLEncoder.encode(fname,"utf-8");
//System.out.println(fname);
response.setContentType("application/octet-stream");   
response.setHeader("Content-Disposition","attachment; filename=" + fname);

File file = new File(fileName);
FileInputStream fileIn = new FileInputStream(file);
ServletOutputStream ostream = response.getOutputStream();

byte[] outputByte = new byte[4096];
//copy binary contect to output stream
while(fileIn.read(outputByte, 0, 4096) != -1)
{
	ostream.write(outputByte, 0, 4096);
}
fileIn.close();
ostream.flush();
ostream.close();
%>