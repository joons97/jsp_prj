<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
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
<%
//1. 쿠키생성
Cookie cookieName=new Cookie("name", "이일환");
Cookie cookieAge=new Cookie("age", "25");
//2. 생존시간 설정
cookieName.setMaxAge(60*60*1);
cookieAge.setMaxAge(10);
//3. 쿠키 심기(출력 스트림 사용)
response.addCookie(cookieName);
response.addCookie(cookieAge);

%>
<h2>쿠키심기 완료</h2>
<a href="read_cookie.jsp">읽기</a>
</div>
</body>
</html>