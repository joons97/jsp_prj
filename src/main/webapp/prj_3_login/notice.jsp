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
<link rel="stylesheet" type="text/css" href="http://192.168.10.218/jsp_prj/common/css/main_20240911.css">
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">
.notice_nav {
    display: flex;
    margin: 20px 0;
    border-top:2px solid #dddddd;
    border-bottom:2px solid #dddddd;
    padding: 5px;
    padding-left: 50px;
}

.notice_nav a {
    text-decoration: none;
    color: black;
    padding: 20px 15px;
    font-size: 14px;
    font-weight: bold;
}

.notice_nav a:hover {
    background-color: #ddd;
}

.content {
    text-align: center;
}

.table-container {
    margin: 20px auto;
    width: 90%;
    text-align: center;
}

.table_text{
	font-weight: bold;
	font-size: 25px;
	float: left;
	margin-bottom: 15px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
    font-size: 13px;
}

table td{
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	height: 60px;
}

table th {
	border-top: 2px solid #333;
    background-color: #f4f4f4;
    height: 60px;
}

#th_div{
	width: 10%;
}
#th_name{
	width: 70%;
}
#th_date{
	width: 10%;
}
#th_view{
	width: 10%;
}

tbody a{
	text-decoration: none;
	color: #333;
}
tbody a:hover{
	
	text-decoration: none;
}

.notice_pagination {
    display: flex;
    margin-top: 50px;
    justify-content: center;
    list-style: none;
    padding: 0;
}

.notice_pagination li {
    margin: 0 5px;
}

.notice_pagination li a {
    padding: 10px 15px;
    text-decoration: none;
    background-color: #eee;
    color: black;
    border-radius: 5px;
}

.notice_pagination li a:hover {
    background-color: #ddd;
}

.search-box {
    margin-top: 80px;
    display: flex;
    justify-content: center;
}

.search-box input[type="text"] {
    width: 200px;
    padding: 10px;
    font-size: 16px;
}

.search-box button {
    padding: 10px 20px;
    font-size: 16px;
    background-color: #a384dd;
    color: white;
    border: none;
    cursor: pointer;
}

.search-box button:hover {
    background-color: #8c6ec6;
}
</style>
<script type="text/javascript">
$(function(){

});//ready
</script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="notice_nav">
    <a href="#">베스트</a>
    <a href="#">전체상품</a>
    <a href="#">공지사항</a>
</div>

<div class="content">
<div class="table-container">
<span class="table_text">공지사항</span>
<table>
    <thead>
        <tr>
            <th id="th_div">구분</th>
            <th id="th_name">제목</th>
            <th id="th_date">작성일</th>
            <th id="th_view">조회수</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>일반</td>
            <td><a href="notice_detail.jsp">기본공지</a></td>
            <td>2024.08.09</td>
            <td>88</td>
        </tr>
    </tbody>
</table>

<ul class="notice_pagination">
    <li><a href="#">1</a></li>
</ul>

<div class="search-box">
    <input type="text" placeholder="공지 제목 검색">
    <button>검색</button>
</div>
</div>
</div>

<footer style="height: 300px; text-align: center;">
푸터
</footer>

</body>
</html>