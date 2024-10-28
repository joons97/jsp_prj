<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<style type="text/css">
header{ 
	background-color:#af7de7; 
	height:100px; 
	width: 100%;
	padding-left: 150px;
    top: 0;
    left: 0;
    right: 0;
    z-index: 999;
}
	
.manu{ 
	margin:0 auto; 
	background-color:#af7de7; 
	max-width:90%;
	min-width:700px;
	height:100px;
}

.img_div{ 
	display:inline-block; 
	width:72px; 
	height:72px;
	margin-top:14px;
	margin-left: 18px; 
	float: left;
}

.search_div { 
	display:inline-block;
	margin-right: 30px; 
	margin-top: 30px;
	float: right; 
}

.search_button_div{
	display:inline;
	margin-top: 5px;
	float: left;
}

.search_form_div{
	display:inline;
	float: right;
	border:1px solid #f2f2f2;
	background-color: #fff;
	border-radius: 30px;
	padding-bottom: 3px;
}

.search_input{
	border:0px;
	padding-left: 15px;
	border-radius: 30px;
}
.search_input:focus{
	outline:none;
}

.search_btn{
	border-radius: 100%;
	margin-right: 2px;
	border: none;
	background-color: #fff;
}

#logo_img{ 
	border-radius:50%;
}

#login_btn{
	color:#fff;
}

.header_inline { 
	display: inline; 
}

.btn:hover { 
	color: #ff0000; 
}
</style>

<header>
<div class="manu">
	<div class="img_div">
	<a href="#" class="manu-link">
	<img src="https://shop-phinf.pstatic.net/20240806_143/1722911189831GfusA_PNG/45699262431325566_112145065.png?type=m120" width="72" height="72" id="logo_img">
	</a>
	</div>
	<div class="search_div">
		<div class="search_button_div">
			<input type="button" class="btn btn-sm header_inline" id="login_btn" value="마이페이지" />
			<input type="button" class="btn btn-sm header_inline" id="login_btn" value="로그인" onclick="location.href='login_page_o.jsp'"/>
		</div>
		
		<div class="search_form_div">
			<form>
			<input type="text" class="search_input" id="search" style="width: 200px; height: 40px;" placeholder="검색어를 입력하세요."/>
			<button class="search_btn">★</button>
			</form>
		</div>
	</div>
</div>
</header>