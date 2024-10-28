<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="세션에 설정된 값을 얻는 페이지"
    session="true"
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
//session은 내장객체 이므로 scriptlet이나 expression에서 사용할 수 있다.
//1. 세션 값 읽기
String name=(String)session.getAttribute("name");

Object objAge=session.getAttribute("age");

int age=0;
if(objAge!=null){
	age=(int)objAge;
}

/* int age=(int)session.getAttribute("age");//unboxing */
%>
<%if( name==null ){ %>
세션에 값이 존재하지 않습니다.<br>
<form action="set_session.jsp">
<label for="name">이름</label>
<input type="text" name="name" id="name"/><br>
<label for="age">나이</label>
<select name="age" id="age">
<% for(int i=20;i<40;i++){ %>
<option value="<%= i %>"><%= i %></option>
<% }//end for %>
</select>
<br>
<button class="btn btn-sm btn-primary" style="margin-left: 20px;">입력</button>
</form>
<% }else{ %>
세션에 값 있습니다..<br>
<button type="button" class="btn btn-primary">
  <%= name %> <span class="badge text-bg-secondary"><%= age %></span>
</button>
<% }//end%>
<br>
<a href="remove_session.jsp">삭제</a>
</div>
</body>
</html>