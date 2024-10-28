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
	<a href="jstl_choose.jsp?grade=guest">손님</a>
	<a href="jstl_choose.jsp?grade=user">사용자</a>
	<a href="jstl_choose.jsp?grade=admin">관리자</a>
	<div>
	<c:choose>
		<c:when test="${ param.grade == 'guest' }">
		<a href="">읽기</a>
		</c:when>
		<c:when test="${ param.grade == 'user' }">
		<a href="">읽기</a>
		<a href="">쓰기</a>
		</c:when>
		<c:when test="${ param.grade eq 'admin' }">
		<a href="">읽기</a>
		<a href="">쓰기</a>
		<a href="">삭제</a>
		</c:when>
		<c:otherwise>
		인증을 해주세요
		</c:otherwise>
	</c:choose>
	</div>
</div>
</body>
</html>