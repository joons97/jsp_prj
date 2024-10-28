<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="JSP에서 class field로 코드를 생성"
    %>
<%!
	//class field
	String name;//instance varible
%>
<%!
	public String getName(){
		return name;
	}
%>

<%!
/**
라디오버튼의 갯수, 라디오버튼 이름, checked할 라디오버튼의 번호
*/
public String createRadioCheck(String type, int radioCnt, String radioName, int checkedNum){
	
	StringBuilder tempRadio=new StringBuilder();
	
	for(int score=0; score<radioCnt+1; score++){
		
		tempRadio.append("<input type='").append(type).append("' name='")
		.append(radioName)
		.append("' value='").append(score).append("'")
		.append(score==checkedNum?" checked='checked'":"").append("/>")
		.append(score).append("점 ");
	}//end for
	
	return tempRadio.toString();
}//createRadio
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
<%
	name="테스트";
%>
이름은 : <%= getName() %> 입니다.

<div>
<%
String[] names={"김지훈","김현우","이일환","이인혁","황찬욱"};
%>
<div style="width:700px">
<table class="table table-hover">
    <tr>
        <th style="width:90px;">이름</th><th style="width:610px; text-align: center">점수</th>
    </tr>

<% for(int i=0;i<5;i++){ %>
    <tr>
        <td style="font-weight: bold;"><%= names[i] %></td>
        <td>
	<%= createRadioCheck("radio", 10, "score_"+i, 0) %>
        </td>
    </tr>
<%}//end for %>

</table>

</div>
<%= createRadioCheck("checkbox", 5, "temp", 0) %>
</div>
</div>
</body>
</html>