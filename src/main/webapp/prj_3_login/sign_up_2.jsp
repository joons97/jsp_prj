<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="회원가입1-1"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shotcut icon" href="http://192.168.10.218/jsp_prj/common/images/favicon.ico"/>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- datepicker plugin -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>

<style type="text/css">
.container {
    width: 700px;
    margin: 0 auto;
    margin-top: 70px;
    padding: 20px;
    border-radius: 10px;
    position: relative;
}

.login_logo{
    position: absolute;
    top: -80px;
    left: 20%; 
    margin-bottom: 20px;
}

body {
    font-family: Arial, sans-serif;
    background-color: #fff;
    margin: 0;
    padding: 20px;
}

#signup_form {
    width: 500px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
}

.radio_wrap{
	display: flex;
    justify-content: center;
}

.btn_radio{
	width: 40%;
    padding: 8px;
    margin-bottom: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

input, select {
    width: 100%;
    padding: 8px;
    margin-bottom: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.password_wrap {
    position: relative;
}

.password_wrap button {
    position: absolute;
    right: 8px;
    top: 8px;
    background: none;
    border: none;
    cursor: pointer;
}
.id_wrap {
    position: relative;
}

.id_wrap button {
    position: absolute;
    font-size: 14px;
    color: #333;
    right: 8px;
    top: 8px;
    background: none;
    border: none;
    cursor: pointer;
}

.id_wrap button:hover{
	color: #aaaaff
}

#signup_btn {
    width: 100%;
    padding: 10px;
    margin-top : 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
}

#signup_btn:hover {
    background-color: #45a049;
}

</style>
<script type="text/javascript">
$(function(){
	$("#signup_btn").click(function(){
		event.preventDefault();
		chkNull();
	});
	
	$( "#birthdate" ).datepicker({
		changeMonth: true,
		changeYear: true,
		yearRange: "c-99:c+99",
        dateFormat: "yy-mm-dd",
        dayNamesMin: [ "일", "월", "화", "수", "목", "금", "토" ],
   		prevText: "이전월",
   		nextText: "다음월"
   	});
	
});//ready

function chkNull(){
	if($("#userId").val().trim() == ""){
		chkMsg("#userId", "아이디를");
		return;
	}//end if
	if($("#idDupFlag").val() != "Y"){
		alert("아이디 중복확인을 해주세요");
		$("#userId").focus();
		return;
	}
	if($("#password").val().trim() == ""){
		chkMsg("#password", "비밀번호를");
		return;
	}//end if
	if($("#password").val() != $("#chk_password").val()){
		alert("비밀번호를 다시 확인해주세요");
		$("#password").focus();
		return;
	}//end if
	if($("#email").val().trim() == ""){
		chkMsg("#email", "이메일을");
		return;
	}//end if
    if(!validateEmail($("#email").val())) {
        alert("이메일 형식이 맞지 않습니다. 예: test@test.com");
        $("#email").focus();
        return;
    }
	if($("#name").val().trim() == ""){
		chkMsg("#name", "이름을");
		return;
	}//end if
	
	if(window.opener){
	window.opener.location.href="login_page_o.jsp";			
	}
	Swal.fire({
           icon: 'success',
           title: '회원가입 완료!',
           text: '다시 로그인 해주세요.',
           confirmButtonText: '확인'
       }).then((result) => {
           if (result.isConfirmed) {
               // 확인 버튼을 눌렀을 때 현재 창을 login_page_o.jsp로 이동
               window.location.href = "login_page_o.jsp";
           }
       });
	
	
}

//유효성검사, 경고메시지 및 포커스 설정
function chkMsg(formControl, msg){
	alert(msg+ " 입력해주세요");
	$(formControl).focus();
}

//이메일 유효성 검사 함수
function validateEmail(email) {
    // 이메일 형식을 확인하는 정규식
    const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailPattern.test(email);
}

//아이디 중복확인
function idDup(){
	//1. 현재창에 아이디를 가져와서
	var id=document.getElementById('userId').value;
	//2. query string 만들어서 팝업을 띄운다
	window.open("id_dup.jsp?id="+id, "idDup",
			"width=485, height=390, top="+(window.screenY+100)+
			", left="+(window.screenX+200));
	
}

function togglePasswordVisibility() {
    const passwordInput = document.getElementById('password');
    const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
    passwordInput.setAttribute('type', type);
}
function toggleChkPasswordVisibility() {
    const passwordInput = document.getElementById('chk_password');
    const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
    passwordInput.setAttribute('type', type);
}
</script>
</head>
<body>
<div id="wrap">
<div class="container">
	<a href="#" class="login_logo_link">
		<img src="http://192.168.10.218/jsp_prj/prj_3_login/images/logo.png" alt="EGO EMPORIUM" class="login_logo">
	</a>
	
    <form id="signup_form">
    	<div class="id_wrap">
        <input type="text" id="userId" name="userId" placeholder="아이디" value="test">
        <button type="button" id="id_dup" onclick="idDup()">중복확인</button>
        <input type="hidden" id="idDupFlag" name="idDupFlag"/>
    	</div>

        <div class="password_wrap">
            <input type="password" id="password" name="password" placeholder="비밀번호" value="test1">
            <button type="button" id="togglePassword" onclick="togglePasswordVisibility()">👁️‍🗨️</button>
        </div>
        <div class="password_wrap">
            <input type="password" id="chk_password" name="chk_password" placeholder="비밀번호 확인"  value="test1">
            <button type="button" id="togglechkPassword" onclick="toggleChkPasswordVisibility()">👁️‍🗨️</button>
        </div>
		
        <input type="email" id="email" name="email" placeholder="이메일 주소">

        <input type="text" id="name" name="name" placeholder="이름">

        <input type="text" id="birthdate" name="birthdate" pattern="\d{8}" placeholder="생년월일 8자리">

		<div class="radio_wrap">
        <input type="radio" class="btn-check" id="male" name="gender" value="male">
        <label class="btn btn_radio" for="male">남자</label>
        <input type="radio" class="btn-check" id="female" name="gender" value="female">
        <label class="btn btn_radio" for="female">여자</label>
		</div>
        
        <input type="text" id="phone" name="phone" placeholder="휴대전화번호"><!--  pattern="\d{3}-\d{4}-\d{4}" required -->

        <label for="security_question">비밀번호 확인 질문</label>
        <select id="security_question" name="security_question">
            <option value="">질문을 선택하세요</option>
            <option value="place">기억에 남는 추억의 장소는?</option>
            <option value="first-phone">자신의 첫 번째 휴대폰 번호는?</option>
            <option value="teacher">가장 기억에 남는 선생님 성함은?</option>
            <option value="book">인상 깊게 읽은 책 이름은?</option>
            <option value="second-name">자신이 두번째로 존경하는 인물은?</option>
        </select>

        <label for="security_answer">비밀번호 확인 답변</label>
        <input type="text" id="security_answer" name="security_answer">

        <button id="signup_btn">완료</button>
    </form>
</div>

</div>
</body>
</html>