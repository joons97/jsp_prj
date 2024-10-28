<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="scope 생성 및 사용범위"
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

});//ready
</script>
</head>
<body>
<div id="wrap">
	<%-- 객체생성
	page - JSP페이지가 요청될 때마다 객체 생성, 생성된 객체는 해당 JSP에서만 사용된다
	request - JSP페이지가 요청될 때마다 객체생성, 생성된 객체는 해당 JSP와 
			forward로 이동한 JSP에서 사용된다.
	session - 웹 브라우저마다 하나의 객체가 생성되고, 생성된 객체는 모든 JSP에서 사용된다(개인화)
	application - 최초 접속자에 의해 단 하나의 객체가 생성, 생성된 객체는 모든 JSP에서
			사용된다. 모든 접속자는 하나의 객체를 사용
	 --%>
	<jsp:useBean id="cVO" class="day1016.CounterVO" scope="application"/>
	<!-- setter 호출 -->
	<jsp:setProperty property="cnt" name="cVO" value="1"/>
	당신은 이 페이지에 
	<strong><jsp:getProperty property="cnt" name="cVO"/></strong>
	번째 방문자 입니다.
	<a href="usescope2.jsp">이동</a>
	<%-- <%
	RequestDispatcher rd=request.getRequestDispatcher("usescope2.jsp");
	rd.forward(request, response);
	
	%> --%>
	<%
		String cnt=String.valueOf(cVO.getCnt());
		for(int i=0;i<cnt.length();i++){
		%>
		<img src="http://192.168.10.218/jsp_prj/day1016/images/num_<%= cnt.charAt(i) %>.png">
		<%	
			
		}//end for
	%>
	
</div>
</body>
</html>