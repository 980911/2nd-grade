<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <jsp:useBean id="now" class="java.util.Date"/>
    <fmt:formatDate value="{$now}"/><p>
    
    <fmt:setLocale value="en_US"/>
    <fmt:bundle basename="text">
 			<fmt:message key="national"/><br>
 			 <fmt:message key="language"/><br>
 			 <fmt:message key="job"/><p>
 			 </fmt:bundle>
 			 
 			 