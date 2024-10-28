<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="http://192.168.10.218/jsp_prj/login/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    <title>로그인</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="http://192.168.10.218/jsp_prj/login/css/bootstrap.min.css" rel="stylesheet">

<meta name="theme-color" content="#712cf9">
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <!-- Custom styles for this template -->
    <link href="http://192.168.10.218/jsp_prj/login/sign-in.css" rel="stylesheet">

<script type="text/javascript">
window.onload=function(){
	document.getElementById("floatingInput").addEventListener("keyup", idKeyValue);
	document.getElementById("floatingPassword").addEventListener("keyup", passKeyValue);
	document.getElementById("btnLogin").addEventListener("click", chkNull);
}//onload

function idKeyValue(evt){
	var email=document.logFrm.floatingInput.value;
	if(email.trim() != "" && evt.which==13){
		document.logFrm.floatingPassword.focus();
	}//end if
	
}//idKeyValue

function passKeyValue(evt){
	var email=document.logFrm.floatingInput.value;
	var pass=document.logFrm.floatingPassword.value;
	if(email.trim() != "" && pass.trim() != "" && evt.which==13){
		alert("로그인 이동")
		return;
	}//end if
	
	if(email.trim() == "" && evt.which==13){
		document.logFrm.floatingInput.focus();
	}//end if
	
}//passKeyValue

function chkNull(){
	
	var obj=document.logFrm;
	
	var idNode=obj.floatingInput;
	if(idNode.value.replaceAll(/ /g,"") == ""){
		idNode.focus();
		return;
	}//end if
	
	var passNode=obj.floatingPassword;
	if(passNode.value.replaceAll(/ /g,"") == ""){
		passNode.focus();
		return;
	}//end if
	
	$("#loginFrm").submit();
	
}//chkNull



</script>
  </head>
  <body class="d-flex align-items-center py-4 bg-body-tertiary">
    
<main class="form-signin w-100 m-auto">
  <form name="logFrm" id=loginFrm action="login_frm_process.jsp" method="post">
    <h1 class="h3 mb-3 fw-normal">로그인</h1>

    <div class="form-floating">
      <input type="email" class="form-control" name="id" id="floatingInput" placeholder="name@example.com">
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="pass" id="floatingPassword" placeholder="Password">
    </div>
    
    <input class="btn btn-primary w-100 py-2" id="btnLogin" type="button" value="로그인"/>
  </form>
</main>
<script src="http://192.168.10.218/jsp_prj/login/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
