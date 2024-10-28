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
	<a href="member/join_frm.jsp">회원가입</a>
	
	<c:choose>
	<c:when test="${ empty sessionScope.userData }">
	<a href="login/login_frm.jsp">로그인</a>
	</c:when>
	<c:otherwise>
	<a href="login/login_frm.jsp">로그아웃</a>
	<a href="mypage/mypage.jsp" title="마이페이지"><c:out value="${ userData.id }(${ userData.name })님 로그인 중"/></a>
	</c:otherwise>
	</c:choose>
	
	<a href="board/board_list.jsp">게시판</a>
</div>
</body>
</html>