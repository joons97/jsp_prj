<%@page import="java.sql.SQLException"%>
<%@page import="kr.co.sist.user.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../common/jsp/session_chk.jsp" %>
<%@ include file="../common/jsp/post_chk.jsp" %>

<jsp:useBean id="bVO" class="kr.co.sist.user.board.BoardVO" scope="page"/>
<jsp:setProperty name="bVO" property="*"/>
<%-- setProperty했을 때 글번호, 글제목(필요없음), 내용 3가지를 받는다. --%>
<%
	bVO.setWriter( sessionId );

	BoardDAO bDAO=BoardDAO.getInstance();
	int cnt=0;
	
	try{
	cnt=bDAO.updateBoard(bVO); //0-실패(num이 외부에서 변경), 1-성공
	}catch(SQLException se){
		cnt=-1;//-1 DB에 문제발생
		se.printStackTrace();
	}

	pageContext.setAttribute("cnt", cnt);//-1,0,1
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
var msg="DB에서 문제가 발생했습니다.";
var cnt=${ cnt };
if( cnt  == 0 ){
	msg="글 번호가 외부에서 임의로 수정되었습니다.";
}//end if
if( cnt  == 1 ){
	msg="글이 수정되었습니다.";	
}//end if

alert( msg );

if( cnt == -1 || cnt == 0){
	history.back();
}else{
	location.href="board_list.jsp?currentPage=${ param.currentPage }";
}//end else

$(function(){

});//ready
</script>
</head>
<body>
<div id="wrap">

</div>
</body>
</html>