<%@page import="kr.co.sist.user.board.BoardDAO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../common/jsp/session_chk.jsp" %>
<%@ include file="../common/jsp/post_chk.jsp" %>

<jsp:useBean id="bVO" class="kr.co.sist.user.board.BoardVO" scope="page"/>
<jsp:setProperty property="*" name="bVO"/>
<jsp:setProperty property="ip" name="bVO" value="<%= remoteIp %>"/>
<%
	boolean insertFlag=false;
	try{
		BoardDAO bDAO=BoardDAO.getInstance();
		bDAO.insertBoard(bVO);
		insertFlag=true;
	}catch(SQLException se){
		se.printStackTrace();
	}//end catch
	pageContext.setAttribute("insertFlag", insertFlag);
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
/* jsp가 먼저 실행되기 때문에 jsp의 값을 javaScript에서 사용가능 */
if(${ insertFlag }){
	alert("${ userData.id }님 글을 작성하였습니다.");
	location.href="board_list.jsp";
}else{
	alert("${ userData.id }님 글쓰기에 문제가 발생하였습니다.");
	history.back();
}//end if

$(function(){

});//ready
</script>
</head>
<body>
<div id="wrap">

</div>
</body>
</html>