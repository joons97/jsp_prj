<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shotcut icon" href="http://192.168.10.218/html_prj/common/images/favicon.ico"/>
<link rel="stylesheet" type="text/css" href="http://192.168.10.218/html_prj/common/css/main_20240911.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
#wrap{ background: #FFF url(http://192.168.10.218/html_prj/js0923/images/id_dup_bg.png) no-repeat;
		width: 460px; height: 365px; position: relative; 
		margin: 0px auto;}
#textId{ position: absolute; top:210px; left:70px;}
#btnId{ position: absolute; top:210px; left:270px; }
#btncf{ position: absolute; top:300px; left:200px; }
#chkid{ position: absolute; top: 260px; left:40px;
		color: #666666; }
#avid{ font-weight: bold; color: #333;}
</style>
<script type="text/javascript">
window.onload=function(){
	document.getElementById("btncf").addEventListener("click", sendId);
}//onload

function sendId(){
	//1.자식창의 아이디 값을 가져와서
	var subId=document.idDupFrm.textId.value;
	//2.부모창에 HTML Form Control에 설정하고
	opener.window.document.memberFrm.id.value=subId;
	//3.자식창을 닫는다
	self.close();
}//sendId
</script>
</head>
<body>
<div id="wrap">
<form name="idDupFrm">
<input type="text" name="textId" id="textId" class="inputbox" value="${ param.id }"/>
<input type="button" id="btnId" class="btn btn-outline-primary btn-sm" value="ID 중복확인"/>
<div id="chkid">사용하실 아이디는(은) <span id="avid">사용 가능 한 아이디</span> 입니다.</div>
<input type="button" id="btncf" class="btn btn-secondary btn-sm" value="사용하기"/>
</form>
</div>
</body>
</html>