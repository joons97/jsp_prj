<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
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
@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard-dynamic-subset.css');

body,html {height:100%;margin:0;padding:0;font-family:'pretendard'}
ul, li, dl, dt, dd, p, span{margin:0;padding:0}
a{text-decoration:none;color:#777}
li{list-style:none}
a{text-decoration:none}
*, :after, :before{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}

.wrap {display:flex;flex-flow:column;align-items: center;justify-content: center;gap:5px;height:100vh}

.wrap .radio_area label{cursor:pointer;display:flex;align-items:center;gap:15px;height:40px;padding:0 18px 0 15px;border-radius:30px;font-size:15px;font-weight:500;color:#999;background:#f2f2f2;transition:all .2s}
.wrap .radio_area label span{opacity:.3;display:flex;width:18px;height:18px;border:2px solid #111;border-radius:50%;transition:all .2s}
.wrap .radio_area label span:before{content:"";width:6px;height:6px;margin:auto;border-radius:50%;background:#111;transition:all .2s}
.wrap .radio_area label:hover{background:#e1e1e1}
.radio_area input[type=radio]{display:none}
.radio_area input[type=radio]:checked + label{color:#fff;background:#111}
.radio_area input[type=radio]:checked + label span{opacity:1;border-color:#fff}
.radio_area input[type=radio]:checked + label span:before{background:#fff}
</style>
<script type="text/javascript">
$(function(){

});//ready
</script>
</head>
<body>
<div class="wrap">
<div class="radio_area">
    <input type="radio" name="it_radio" id="it_radio1">
    <label for="it_radio1"><span></span>키위 🥝 </label>  
  </div>
  <div class="radio_area">
    <input type="radio" name="it_radio" id="it_radio2">
    <label for="it_radio2"><span></span>수박 🍉 </label>  
  </div>  
  <div class="radio_area">
    <input type="radio" name="it_radio" id="it_radio3">
    <label for="it_radio3"><span></span>딸기 🍓 </label>  
  </div>
</div>
</body>
</html>