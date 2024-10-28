<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="입력된 값을 받아서 세션에 할당"
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
//파라메터에 입력된 값을 받아와서 세션에 설정
String name=request.getParameter("name");
String paramAge=request.getParameter("age");
int age=Integer.parseInt(paramAge);

//Tomcat은 세션의 기본 생존 시간 30분=>
session.setMaxInactiveInterval(60);//하나의 JSP에서만 설정하면 모든 JSP에 적용

session.setAttribute("age", age);//autoboxing
session.setAttribute("name", name);
%>
세션에 설정 값<a href="get_session.jsp">읽기</a>
</div>
</body>
</html>