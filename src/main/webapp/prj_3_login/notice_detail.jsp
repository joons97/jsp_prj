<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="공지사항 페이지"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shotcut icon" href="http://192.168.10.218/jsp_prj/common/images/favicon.ico"/>
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">
.navDiv {
    display: flex;
    margin: 20px 0;
    border-top:2px solid #dddddd;
    border-bottom:2px solid #dddddd;
    padding: 5px;
    padding-left: 50px;
}

.navDiv a {
    text-decoration: none;
    color: black;
    padding: 20px 15px;
    font-size: 14px;
    font-weight: bold;
}

.navDiv a:hover {
    background-color: #ddd;
}

.notice_content {
    margin: 20px auto;
    width: 90%;
}

.notice_list{
	border-bottom: 2px solid #333;
	padding-bottom: 15px;
	text-align: right;
}

.table_text{
	font-size: 12px;
	text-decoration: none;
	color: gray;
}

.notice_title{
	font-weight: bold;
	font-size: 20px;
	border-bottom: 1px solid #ccc;
	padding-top: 20px;
	padding-bottom: 20px;
	
}

#category{
	color: #ff0000;
	margin: 5px;
}

.date_view{
	font-weight: normal;
	font-size: 13px;
	color: #aaa;
	margin: 7px;
}

.content{
	border-bottom: 1px solid #ccc;
	height: 700px;
}

</style>
<script type="text/javascript">
$(function(){

});//ready
</script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="navDiv">
    <a href="#">베스트</a>
    <a href="#">전체상품</a>
    <a href="#">공지사항</a>
</div>

<div class="notice_content">
	<div class="notice_list">
	<a href="notice.jsp" class="table_text">전체 공지사항 보기</a>
	</div>
	<div class="notice_title">
		<span id="category">[분류]</span>타이틀
		<div class="date_view">
			<span class="input_date">2024.08.09 15:51</span> 조회수<span class="notice_view">123</span>
		</div>
	</div>
	
	<div class="content">
	내용
	</div>
	
	<footer style="height: 300px; text-align: center;">
	푸터
	</footer>

</div>
</body>
</html>