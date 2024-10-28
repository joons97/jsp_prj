<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="아이디찾기1-1"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="shotcut icon" href="http://192.168.10.218/jsp_prj/common/images/favicon.ico"/>
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">
.containerDiv {
    margin: 0px auto;
    text-align: center;
}
.find_links {
	width: 100%;
	line-height:50px;
    background-color: #af7de7;
    padding: 10px;
    color: white;
    top: 0;
    left: 0;
    right: 0;
}
.find_links a {
    color: white;
    text-decoration: none;
    margin: 0 20px;
    font-size: 16px;
}

.img_div{ 
	display:inline-block; 
	width:0px; 
	height:10px;
	float: left;
}

#logo_img{ 
	border-radius:50%;
}

.formDiv {
    margin: 0px auto;
    padding-top: 30px;
    background-color: #fff;
}

.input_text{
	width: 400px;
	height: 50px;
}

.input_text span{
	width: 100px;
}

.bold{
	width: 60%;
	margin: 0px auto;
    text-align: left;
    font-size: 20px;
    font-weight: bold;
}

.sub{
	width: 60%;
	margin: 0px auto;
    text-align: left;
    font-size: 12px;
    margin-bottom: 20px;
}

.find_id_input{
	width: 60%;
	margin: 0px auto;
	margin-top: 30px;
	
}

#find_id_btn_submit {
    width: 100px;
    margin-top: 50px;
    padding: 10px;
    background-color: #d2d2d2;
    color: white;
    border: 1px solid #aaa;
    cursor: pointer;
}

.input-group label:hover{
	cursor: text;
}

</style>
<script type="text/javascript">
$(function(){
	$("#find_id_btn_submit").click(function(){
		window.location.href="find_id_2.jsp";
	});
});//ready
</script>
</head>
<body>
<div class="containerDiv">
<!-- 상단 아이디 찾기 / 비밀번호 찾기 -->
<div class="find_links">
	<div class="img_div">
	<a href="#" class="manu-link">
	<img src="https://shop-phinf.pstatic.net/20240806_143/1722911189831GfusA_PNG/45699262431325566_112145065.png?type=m120" width="50" height="50" id="logo_img">
	</a>
	</div>
    <a href="find_id.jsp">아이디 찾기</a>
    <a href="find_password_1.jsp">비밀번호 찾기</a>
</div>

<!-- 폼 -->
<div class="formDiv">
    <form action="#">
    <div class="bold">아이디 찾기</div>
    <div class="sub"><hr style="border: 0; border-bottom: 2px solid #000;">이름, 휴대전화, 이메일주소를 입력하세요</div>
    
    <div class="find_id_input">
    <div class="input-group flex-nowrap input_text">
  	<span class="input-group-text" id="addon-wrapping"><label for="name">이름</label></span>
  	<input type="text" class="form-control" id="name" placeholder="이름" aria-label="Username" aria-describedby="addon-wrapping">
	</div>

	<div class="input-group flex-nowrap input_text">
  	<span class="input-group-text" id="addon-wrapping"><label for="phone">휴대전화</label></span>
  	<input type="text" class="form-control" id="phone" placeholder="휴대전화" aria-label="Username" aria-describedby="addon-wrapping">
	</div>

	<div class="input-group flex-nowrap input_text">
 	<span class="input-group-text" id="addon-wrapping"><label for="birth">생년월일</label></span>
 	<input type="text" class="form-control" id="birth" placeholder="생년월일" aria-label="Username" aria-describedby="addon-wrapping">
	</div>
    </div>
        
        <div class="find_id_button">
            <input type="button" id="find_id_btn_submit" value="다음">
        </div>
    </form>
</div>
</div>
</body>
</html>