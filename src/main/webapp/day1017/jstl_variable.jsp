<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="JSTL 변수의 사용"
    %>
<!-- 지시자 선언 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- 2. Tag Lib에서 제공하는 태그를 사용 -->
<!-- 변수선언 -->
<c:set var="msg" value="오늘은 목요일 입니다" />
<c:set var="day" value="17" />

<!-- 출력 => EL -->
<h2>변수 출력</h2>
${ msg }<br>
<c:out value="msg"/><br>
<c:out value="${ msg }"/><br>
<c:out value="${ day }"/>일<br>
<c:out value="${ day+1 }"/>일<br>
<!-- 변수삭제 -->
<h2>변수 삭제 후 출력</h2>
<c:remove var="msg"/>
msg : <c:out value="${ msg }"/><br>
day : <c:out value="${ day }"/><br>

<h2>태그 출력</h2>
<c:set var="tag" value="오늘은 <strong>목요일</strong>입니다" />
${ tag }<br>
<c:out value="${ tag }" escapeXml="false" /><br>

<c:set var="name" value="이인혁" />
<input type="checkbox" value="${ name }"><c:out value="${ name }"/>
</div>
</body>
</html>