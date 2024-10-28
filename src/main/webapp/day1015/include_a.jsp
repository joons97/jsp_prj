<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="공통디자인을 사용한 페이지"
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
#title{ font-size: 22px; }
</style>
<script type="text/javascript">
$(function(){

});//ready
</script>
</head>
<body>
<div id="wrap">
	<div id="header">
	<jsp:include page="header.jsp"/>
	</div>
	<div id="container">
		사용자에게 제공하는 내용 :<%-- <%= msg %>:변수,method의 공유 x --%>
		<br>
		<a href="include_a.jsp?birth=20241015">요청</a>
		<a href="include_a.jsp">리셋</a>
		<br>
		요청값 : ${ param.birth }
		<%-- <%
		String ss=request.getParameter("birth");
		%> --%>
	</div>
	<div id="footer">
	<jsp:include page="footer.jsp"/>
	</div>
</div>
</body>
</html>