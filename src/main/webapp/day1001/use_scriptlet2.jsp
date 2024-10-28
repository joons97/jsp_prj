<%@page import="day1001.ImgVO"%>
<%@page import="java.util.List"%>
<%@page import="day1001.DataProcess"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.time.YearMonth"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="scriptlet"%>
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
    $("#btn").click(function(){
        printDate();
    });
});//ready

function printDate(){
    let year=$("#sel").val();
    let month=$("#month").val();
    let day=$("#day").val();
    var output=year+"년"+month+"월"+day+"일";
    $("#output").html(output);
}//printDate
</script>
</head>
<body>
<div id="wrap">
<%
	int nowYear=LocalDate.now().getYear();
	int nowMonth=LocalDate.now().getMonthValue();
	int today=LocalDate.now().getDayOfMonth();
	int lastDay=Calendar.getInstance().getActualMaximum(Calendar.DATE);
%>
    <select id="sel" name="sel">
<%-- <%
	for(int i=2024;i>1949;i--){
%>
        <option value="<%= i %>"><%= i %></option>
<%}//end for %>
    </select> --%>
<%
	for(int i=nowYear;i>1949;i--){
%>
        <option value="<%= i %>"><%= i %></option>
<%}//end for %>
    </select>년
	<select id="month" name="month">
<%
	for(int month=1;month<13;month++){%>
	<option value="<%= month %>"<%= month==nowMonth?" selected='selected'":"" %>><%= month %></option>
<%}//end for %>
	</select>월
	<select id="day" name="day">
	<% for(int day=1;day<lastDay+1;day++){ %>
	<option value="<%= day %>"<%= day==today?" selected='selected'":"" %>><%= day %></option>
	<%}//end for %>
	</select>
<input type="button" value="날짜얻기" class="btn btn-primary btn-sm" id="btn"/>
<div id="output"></div>

<div>
<% for(int i=1;i<7;i++){ %>
<img src="http://192.168.10.218/jsp_prj/day1001/images/dice_<%= i %>.png">
<%}//end for %>
</div>

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
	<% for(int score=0;score<11;score++){ %>
        <input type="radio" name="score_<%= i %>" value="<%= 
        score %>"<%= score==0?" checked='checked'":"" %>><%= score %>점 
	<%}//end for %>
        </td>
    </tr>
<%}//end for %>

</table>
</div>

<%
	//List에 저장된 이미지와 설명을 Card로 출력
	DataProcess dp=new DataProcess();
	List<ImgVO> list=dp.searchData();
		
	if(list.isEmpty()){
%>
<marquee>로딩된 이미지가 없습니다.</marquee>
<%		
	}//end if
	
	for( ImgVO iVO : list ){
%>
<div class="card" style="width: 18rem; float: left">
  <img src="http://192.168.10.218/jsp_prj/day1001/images/<%= iVO.getImg() %>" class="card-img-top" alt="..."
  	style="width: 260px;height: 200px;">
  <div class="card-body">
    <p class="card-text"><%
    	if(iVO.getInfo().length()>50){
    %>
    <%= iVO.getInfo().substring(0, 49) %>...
    <%    }else{//end if %>
    <%= iVO.getInfo() %>
    <%}//end else %></p>
  </div>
</div>
<%}//end for %>

<%
	//scriptlet에서는 method를 작성할 수 없다.
	//( 자바 문법에는 method를 중첩정의할 수 없다. )
	/* public void test(){
	
	} */
%>

</div>
</body>
</html>






