<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="비밀번호 찾기 1-2"
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
.container {
    text-align: left;
    margin: 0px auto;
    margin-top: 20px;
    padding: 40px;
    border-radius: 10px;
    width: 500px;
}

.logo_link {
    display: block;
    margin-bottom: 20px;
    text-align: center;
}

.logo_fp2 {
    width: 180px;
    margin: 0 auto;
}

h4 {
    font-weight: bold;
}

hr {
	border: 0;
    border-bottom: 2px solid #000;
    width: 100%;
    margin-bottom: 20px;
}

.description {
    margin-top: 10px;
    margin-bottom: 20px;
    font-size: 14px;
    color: #666;
}

.input_text{ 
	width: 30px;	
}

.btn_submit {
    display: block;
    margin: 100px auto;
    background-color: #28a745;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

.btn_submit:hover {
    background-color: #218838;
}

</style>
<script type="text/javascript">
$(function(){

});//ready
</script>
</head>
<body>
<div id="wrap">
<jsp:include page="header.jsp"/>
<div class="container">
	<a href="#" class="logo_link">
        <img src="http://192.168.10.218/jsp_prj/prj_3_login/images/logo.png" alt="EGO EMPORIUM" class="logo_fp2">
    </a>
    <h4>비밀번호 찾기</h4>
    <hr>
    <p class="description">회원가입 시 입력했던 질문의 답을 입력하세요</p>
    <!-- 질문 및 답변칸 -->
    <div class="input-group flex-nowrap">
  	<span class="input-group-text" id="addon-wrapping">비밀번호 확인 질문</span>
  	<input type="text" class="form-control input_text" placeholder="질문" aria-label="Username" aria-describedby="addon-wrapping" readonly="readonly">
	</div>

	<div class="input-group flex-nowrap">
  	<span class="input-group-text" id="addon-wrapping">비밀번호 확인 답변</span>
  	<input type="text" class="form-control input_text" placeholder="답변을 입력하세요" aria-label="Username" aria-describedby="addon-wrapping">
	</div>
    <!-- 다음 버튼 -->
    <button class="btn_submit" onclick="window.open('find_password_3.jsp', 'idDup',
	'width=550, height=450, top='+(window.screenY+200)+
	', left='+(window.screenX+300));">다음</button>
</div>
</div>
</html>









