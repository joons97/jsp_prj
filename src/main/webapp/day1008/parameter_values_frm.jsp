<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="이름이 같은 HTML Form Control"
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
	$("#btnGet").click(function(){
		$("#frmGet").submit();
	});
	
	$("#btnPost").click(function(){
		$("#frmPost").submit();
	});
});//ready
</script>
</head>
<body>
<div id="wrap">
<h2>GET방식 전송</h2>
<form name="frmGet" id="frmGet" method="get" action="parameter_values_frm_process.jsp">
<h2>checked 속성으로 값 얻기</h2>
<input type="radio" name="gender" value="남자">남자
<input type="radio" name="gender" value="여자">여자
<br>
<input type="checkbox" name="hobby" value="영화감상"/>영화
<input type="checkbox" name="hobby" value="음악감상"/>음악
<input type="checkbox" name="hobby" value="게임"/>게임
<input type="checkbox" name="hobby" value="운동"/>운동
<input type="checkbox" name="hobby" value="등산"/>등산
<input type="checkbox" name="hobby" value="낚시"/>낚시
<div>
<input type="button" value="GET방식 값전송" class="btn btn-primary" id="btnGet"/>
</div>
</form>
<br>
<h2>POST방식 전송</h2>
<form name="frmPost" id="frmPost" method="post" action="parameter_values_frm_process.jsp">
<h2>checked 속성으로 값 얻기</h2>
<input type="radio" name="gender" value="남자">남자
<input type="radio" name="gender" value="여자">여자
<br>
<input type="checkbox" name="hobby" value="영화감상"/>영화
<input type="checkbox" name="hobby" value="음악감상"/>음악
<input type="checkbox" name="hobby" value="게임"/>게임
<input type="checkbox" name="hobby" value="운동"/>운동
<input type="checkbox" name="hobby" value="등산"/>등산
<input type="checkbox" name="hobby" value="낚시"/>낚시
<div>
<input type="button" value="POST방식 값전송" class="btn btn-success" id="btnPost"/>
</div>
</form>
</div>
</body>
</html>