<%@page import="kr.co.sist.user.member.WebMemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty userData }">
<c:redirect url="http://192.168.10.218/jsp_prj/index.jsp"/>
</c:if>
<%
String remoteIp=request.getRemoteAddr(); // 접속자 IP
String sessionId=
((WebMemberVO)session.getAttribute("userData")).getId();
//로그인 한 계정의 id
%>