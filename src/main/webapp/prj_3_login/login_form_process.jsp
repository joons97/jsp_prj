<%@page import="project1.user.UserAuthenticationDAO"%>
<%@page import="kr.co.sist.chipher.DataEncryption"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="post_chk.jsp" %>
<jsp:useBean id="uVO" class="project1.user.UserVO" scope="page"/>
<jsp:setProperty name="uVO" property="*"/>
<%
//비밀번호 일방향 hash
uVO.setPassword(DataEncryption.messageDigest("SHA-1", uVO.getPassword()));
UserAuthenticationDAO uDAO=UserAuthenticationDAO.getInstance();

boolean loginFlag=false;



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shotcut icon" href="http://192.168.10.218/jsp_prj/common/images/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="http://192.168.10.218/jsp_prj/common/css/main_20240911.css">
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">

</style>
<script type="text/javascript">
$(function(){

});//ready
</script>
</head>
<body>
<div id="wrap">

</div>
</body>
</html>