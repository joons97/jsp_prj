<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="meta 태그를 사용한 페이지 이동"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="30;http://sist.co.kr">
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
	var timeInSeconds = 30;  // 30초 설정
    startCountdown(timeInSeconds);
});//ready

// 카운트다운 함수
function startCountdown(duration) {
    var timer = duration;
    var countdownElement = $('#countdown');  // jQuery로 요소 선택

    var interval = setInterval(function () {
        countdownElement.text(timer + "초");  // jQuery로 텍스트 업데이트

        if (--timer < 0) {
            clearInterval(interval);  // 시간이 0이 되면 타이머 종료
            countdownElement.text("시간 종료!");  // jQuery로 메시지 변경
        }//end if
    }, 1000);  // 1초마다 실행
}
</script>
</head>
<body>
<div id="wrap">
	접속하신 서버주소인 http://test.com은 2024년 11월 01일 부터
	<strong>http://sist.co.kr</strong>로 변경되니다.<br>
	이전 도메인은 추후 사용하실 수 없으며 새로운 도메인으로만 접속 가능<br>
	<span id="countdown">30초</span> 후 변경된 도메인으로 자동 연결 됩니다.<br>
	바로 이동하시려면 <a href="http://sist.co.kr">여기</a>를 클릭
</div>
</body>
</html>