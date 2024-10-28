<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="데이터 처리결과를 받아와서 화면을 구현하여 응답되는 페이지"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shotcut icon" href="http://192.168.10.218/jsp_prj/common/images/favicon.ico"/>
<!-- <link rel="stylesheet" type="text/css" href="http://192.168.10.218/jsp_prj/common/css/main_20240911.css"> -->
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
<%
//업무처리한 결과(request scope에 저장)를 받아와서 화면을 구현하는 일
String name=(String)request.getAttribute("name");
List<String> list=(List<String>)request.getAttribute("data");

//forward_b.jsp에서 forward_a.jsp의 parameter를 받을수 있는 이유는
//forward()의 매개변수로 request를 전달해 주기 때문
String paramSelectNum=request.getParameter("selectNum");
int selectNum=paramSelectNum==null?0:Integer.parseInt(paramSelectNum);

%>
<div id="wrap">
<h3><%= name %></h3>
<ul class="nav nav-underline">
<% for(int i=0;i<list.size();i++){ %>
  <li class="nav-item">
    <a class="nav-link<%= i==selectNum?" active":"" %>" aria-current="page" href="forward_a.jsp?selectNum=<%= i %>" ><%= list.get(i) %></a>
  </li>
  <% }//end for %>
</ul>
</div>
</body>
</html>