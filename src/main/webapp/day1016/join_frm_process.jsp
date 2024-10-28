<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="회원가입 정보"
    %>
<% request.setCharacterEncoding("UTF-8"); %>
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
#wrap{ width: 600px; margin: 0px auto;}
#body{ border: 1px solid #333; background-color: #F4F2C4;
	padding-left: 8px; }
.css{ font-weight: bold; font-size: 20px; color: #FF55AA; }

</style>
<script type="text/javascript">
$(function(){

});//ready
</script>
</head>
<body>
<div id="wrap">
<% request.setCharacterEncoding("UTF-8"); %>
	<!--1. VO객체를 생성 -->
	<jsp:useBean id="mVO" class="day1016.memberVO" scope="page"></jsp:useBean>
	<!--2. setter method 호출
	( *설정하면 web parameter명과 VO의 instance variable명이 
		일치하는 setter method를 자동으로 호출해준다. ) -->
	<jsp:setProperty property="*" name="mVO"/>
<div id="header" align="center">
<h1><strong>회원 정보</strong></h1>
</div>
<div id="body">
<h2><span class="css"><jsp:getProperty property="name" name="mVO"/>님 회원가입을 축하합니다.</span></h2>
ID : <jsp:getProperty property="id" name="mVO"/><br>
PASSWORD : <jsp:getProperty property="pass" name="mVO"/><br>
이름 : <jsp:getProperty property="name" name="mVO"/><br>
생일 : <jsp:getProperty property="birth" name="mVO"/><br>
연락처 : <jsp:getProperty property="tel" name="mVO"/><br>
휴대폰번호 : <jsp:getProperty property="cellphone" name="mVO"/><br>
이메일 : <jsp:getProperty property="email" name="mVO"/>@<jsp:getProperty property="email2" name="mVO"/><br>
성별 : <jsp:getProperty property="gender" name="mVO"/><br>
관심언어 : <% 
String[] lang=mVO.getLang();
if(lang==null){%>
	관심언어가 없습니다.
<%} else{
for(String temp : lang){%>
	<%= temp %>
<%}//end for
}//end if%><br>
소재지 : <jsp:getProperty property="loc" name="mVO"/><br>
우편번호 : <jsp:getProperty property="zipcode" name="mVO"/><br>
주소 : <jsp:getProperty property="addr1" name="mVO"/><br><jsp:getProperty property="addr2" name="mVO"/>
</div>
</div>
</body>
</html>