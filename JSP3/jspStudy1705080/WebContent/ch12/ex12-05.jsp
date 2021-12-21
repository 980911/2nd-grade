<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("MYCookie", "admin");
	cookie.setMaxAge(60*60);
	response.addCookie(cookie);
%>

	<h4>EL Cookie 내장객체 예제</h4>
	MYCookie 쿠키 값 : ${cookie.MYCookie.value} <br>
	MYCookie 쿠키 값 : ${cookie['MYCookie']['value']} <br>
	MYCookie 유지시간 : ${cookie['MYCookie']['maxAge']} <br>
	MYCookie 쿠키 : ${cookie.MYCookie} <br>
	
	