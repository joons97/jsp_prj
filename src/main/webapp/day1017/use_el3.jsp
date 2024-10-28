<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    isELIgnored="false"
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
<div>
<h2>scope객체의 사용</h2>
<%
	String msg="오늘은 목요일 입니다.";
%>
<h3>EL에서는 변수를 직접 접근할 수 없다.</h3>
${ msg }<br>
Expression : <%= msg %><br>
<%
//EL에서 변수를 사용하려면 변수를 scope객체에 저장하고, scope객체에 저장된 이름을 사용하여
//변수를 사용한다.
//1. scope객체에 저장
pageContext.setAttribute("m", msg);
%>
2. EL에서 scope객체를 사용한 접근 : <strong>${ pageScope.m }</strong>
	${ m }
<%
pageContext.setAttribute("pMsg", "page 메시지");
request.setAttribute("rMsg", "request 메시지");
session.setAttribute("sMsg", "session 메시지");
application.setAttribute("aMsg", "application 메시지");
%>
<h2>scope객체를 사용한 접근</h2>
pageScope : ${ pageScope.pMsg } ( ${ pMsg } )<br>
reqeustScope : ${ requestScope.rMsg } ( ${ rMsg } )<br>
sessionScope : ${ sessionScope.sMsg } ( ${ sMsg } )<br>
applicationScope : ${ applicationScope.aMsg } ( ${ aMsg } )<br>

<%
pageContext.setAttribute("test", "page 메시지");
request.setAttribute("test", "request 메시지");
session.setAttribute("test", "session 메시지");
application.setAttribute("test", "application 메시지");
%>
<h2>scope객체에 같은 이름이 존재</h2>
<!-- scope객체를 생략하고 이름만 사용하면 생명이 가장 짧은 객체부터 사용 -->
pageScope : ${ pageScope.test } ( ${ test } )<br>
reqeustScope : ${ requestScope.test } ( ${ test } )<br>
sessionScope : ${ sessionScope.test } ( ${ test } )<br>
applicationScope : ${ applicationScope.test } ( ${ test } )<br>



</div>
</div>
</body>
</html>