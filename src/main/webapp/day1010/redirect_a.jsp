<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="redirect의 사용"
    %>
<%
	boolean flag=new Random().nextBoolean();
	if(flag){//세션에 값이 존재하는 지 유무를 판단기준으로 사용한다.
		response.sendRedirect("redirect_b.jsp");
		return;//*
	}//end if
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
	정상적인 요청이 있을 때 제공할 내용들...
</div>
</body>
</html>
<%
System.out.println("---------------코드실행---------------");
%>