<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.setAttribute("login" ,null);

response.sendRedirect("../main/main.jsp");
%>