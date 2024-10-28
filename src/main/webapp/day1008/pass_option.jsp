<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="비밀번호 보이기/ 숨기기"
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
	// 버튼 클릭 시 비밀번호 필드 타입을 변경하는 함수
    $('#togglePassword').click(function() {
        var passwordInput = $('#password'); // 비밀번호 input 필드 선택
        
        // 현재 타입이 password이면 text로 변경, 그렇지 않으면 password로 변경
        if (passwordInput.attr('type') === 'password') {
            passwordInput.attr('type', 'text');
            $(this).text('비밀번호 숨기기'); // 버튼 텍스트 변경
        } else {
            passwordInput.attr('type', 'password');
            $(this).text('비밀번호 보기'); // 버튼 텍스트 변경
        }
    });
});//ready
</script>
</head>
<body>
<div id="wrap">
<form>
	<label for="password">비밀번호:</label>
	<input type="password" id="password" name="password">
	<!-- 클릭 시 input type을 변경하는 버튼 -->
	<button type="button" id="togglePassword">비밀번호 보기</button>
</form>
</div>
</body>
</html>