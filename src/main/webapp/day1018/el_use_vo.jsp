<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
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
<!-- 객체화 + scope객체 저장 -->
<jsp:useBean id="tVO" class="day1016.TestVO" scope="page"/>
<!-- setter method를 호출하여 값을 설정 -->
<jsp:setProperty property="name" name="tVO" value="김현우"/>
<jsp:setProperty property="myAge" name="tVO" value="20"/>

<!-- EL을 사용하여 출력 : get을 제외한 method명을 소문자로 기술 -->
이름 : <c:out value="${ tVO.name }"/><br>
나이 : <c:out value="${ tVO.myAge }"/><br>

</div>
</body>
</html>