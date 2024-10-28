<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="out 내장객체의 사용"
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
#text{ font-size: 20px; }
</style>
<script type="text/javascript">
$(function(){

});//ready
</script>
</head>
<body>
<div id="wrap">
<%
String msg="오늘은 목요일 입니다";

out.print("<strong>");//소스보기 시에 줄 변경 x
out.print(msg);
out.println("</strong>");

out.println("<strong>");//소스보기 시에 줄 변경 o
out.println(msg);
out.println("</strong>");

for(int i=1;i<7;i++){
	out.print("<h");
	out.print(i);
	out.print(">");
	out.print(msg);
	out.print("</h");
	out.print(i);
	out.println(">");
}//end for

String[] url={"http://google.com", "http://naver.com", "http://daum.net"};
String[] urlText={"구글", "네이버", "다음"};

/* for(int j=0;j<3;j++){
	out.print("<a href='");
	out.print(url[j]);
	out.print("'><span id='text'>");
	out.print(urlText[j]);
	out.println("</span></a>");
}//end for */

StringBuilder linkTxt=new StringBuilder();
for(int j=0;j<url.length;j++){
	linkTxt.append("<a href='").append(url[j]).append("'><span id='text'>")
	.append(urlText[j]).append("</span></a>\n");
}//end for
out.print(linkTxt);
%>


</div>
</body>
</html>









