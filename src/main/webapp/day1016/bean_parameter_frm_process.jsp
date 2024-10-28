<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="web parameter를 useBean 표준액션을 사용하여 VO로 손쉽게 받기"
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
<% request.setCharacterEncoding("UTF-8"); %>
	<!--1. VO객체를 생성 -->
	<jsp:useBean id="fcVO" class="day1016.FormControlVO" scope="page"></jsp:useBean>
	<!--2. setter method 호출
	( *설정하면 web parameter명과 VO의 instance variable명이 
		일치하는 setter method를 자동으로 호출해준다. ) -->
	<jsp:setProperty property="*" name="fcVO"/>
	
	<h2>입력 값</h2>
	<ul>
	<li>이름 : <jsp:getProperty property="name" name="fcVO"/> </li>
	<li>나이 : <jsp:getProperty property="age" name="fcVO"/> </li>
	<li>성별 : <jsp:getProperty property="gender" name="fcVO"/> </li>
	<li>취미 : 
		<%-- <%= Arrays.toString(fcVO.getHobby()) %> --%>
		<% 
		String[] hobby=fcVO.getHobby();
		if(hobby == null){
			out.println("<strong>선택한 취미가 없습니다.</strong>");
		}else{
			for(String temp : hobby){
				out.print(temp);
				out.print(" ");
			}//end for
				
		}//end else
		%> 
	</li>
	
	</ul>
	
</div>
</body>
</html>