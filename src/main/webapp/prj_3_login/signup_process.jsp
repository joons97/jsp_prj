<%@page import="kr.co.sist.chipher.DataEncryption"%>
<%@page import="java.sql.SQLException"%>
<%@page import="project1.user.UserAuthenticationDAO"%>
<%@page import="project1.user.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="post_chk.jsp" %>
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

});//ready
</script>
</head>
<body>
<div id="wrap">
<jsp:useBean id="uVO" class="project1.user.UserVO" scope="page"/>
<jsp:setProperty property="*" name="uVO"/>
<%
	UserAuthenticationDAO uDAO=UserAuthenticationDAO.getInstance();
	
	try{
		//암호화
		uVO.setPassword(DataEncryption.messageDigest("SHA-1", uVO.getPassword()));
		
		DataEncryption de=new DataEncryption("abcdef0123456789");
		//이메일, 이름, 폰번호, 질문답
		uVO.setEmail(de.encrypt(uVO.getEmail()));
		uVO.setName(de.encrypt(uVO.getName()));
		uVO.setPhone(de.encrypt(uVO.getPhone()));
		uVO.setSecurityAnswer(uVO.getSecurityAnswer());
		
		uDAO.insertUser(uVO);
		%>
		
		<script type="text/javascript">
		alert("회원가입 성공");
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
	           }//end if
	       });
		
		</script>
		
		<%
	}catch(SQLException se){
		se.printStackTrace();
		%>
		
		<script type="text/javascript">
			alert("회원가입중 문제 발생");
		</script>
		
		<%
	}//end catch
%>
</div>
</body>
</html>