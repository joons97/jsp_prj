<%@page import="java.util.ArrayList"%>
<%@page import="day1018.DataDAO"%>
<%@page import="day1018.DataVO"%>
<%@page import="java.util.List"%>
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
<%
	DataDAO dDAO=new DataDAO();
	List<DataVO> list=dDAO.selectData();
	
	//scope 객체에 할당
	pageContext.setAttribute("list", list);
%>
<table class="table table-hover">
<thead>
<tr>
	<th style="width:80px;">번호</th>
	<th style="width:120px;">이미지</th>
	<th style="width:200px;">이름</th>
	<th style="width:400px;">설명</th>
</tr>
</thead>

<tbody>
<c:if test="${ empty list }">
<tr>
<td colspan="4">데이터가 없습니다.</td>
</tr>
</c:if>
<c:forEach var="dataVO" items="${ list }" varStatus="ind">
<tr>
<td><c:out value="${ ind.count }"/> </td>
<td><img src="../common/images/${ dataVO.img }"
	 style="width:110px; height:80px;"/> </td>
<td><a href="detail.jsp?num=${ dataVO.itemNum }"><c:out value="${ dataVO.name }"/></a></td>
	<td><c:out value="${ dataVO.info }"/></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>