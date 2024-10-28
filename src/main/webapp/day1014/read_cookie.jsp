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
//1. 쿠키들 읽기
Cookie[] cookies=request.getCookies();
boolean readFlag=false;//읽어들인 쿠키가 있는지 판단

if( cookies != null){
	String cookieName="";
	String cookieValue="";
	//읽어들인 쿠키 반복
	for(Cookie tempCookies : cookies){
		//3. 이름 얻기
		cookieName=tempCookies.getName();
		if(!"JSESSIONID".equals(cookieName)){//접속자의 브라우저 쿠키가 생성되는지 판단
		readFlag=true;
		//4. 쿠키 값 얻기
		cookieValue=tempCookies.getValue();
		%>
		쿠키명 : <%= cookieName %>, 쿠키값 : <%= cookieValue %><br>
	
		<%
		}//end if
	}//end for
}//end if
if(!readFlag){
%>
<h2>쿠키가 존재하지 않습니다.</h2>
쿠키<a href="add_cookie.jsp">심기</a>
<%	
}else{%>
쿠키<a href="remove_cookie.jsp">삭제</a>
<%}//end else %>

</div>
</body>
</html>