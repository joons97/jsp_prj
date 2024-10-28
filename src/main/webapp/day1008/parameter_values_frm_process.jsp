<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="이름이 중복되는 HTML Form Control 값 받기"
    %>
   <%
   //POST방식일때 한글처리
   request.setCharacterEncoding("UTF-8");
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
<% String method=request.getMethod(); 
	String color="#FF0000";
	if(method.equals("GET")){
		color="#0000FF";
	}//end if
%>

<h2><span style="color: <%=color%>"><%= method %>방식</span></h2>
<%
//<input type="radio"는 그룹으로 묶여 하나의 값이 전달된다. => getParameter
String gender=request.getParameter("gender");
//<input type="checkbox"는 그룹으로 묶이긴하나 여러개으 값이 같은 이름으로 전달
//배열로 처리 => getParameterValues
String[] hobby=request.getParameterValues("hobby");
%>
<ul>
	<li>입력값</li>
	<li>성별 : <%= gender %></li>
	<li>취미 :
	<% if(hobby==null){%>
	선택한 취미가 없습니다.
	<% }else{
		for(String selectHobby : hobby){
	%>
	<%= selectHobby %>
	<% 	}//end for
	}%>
	</li>
</ul>
</div>
</body>
</html>