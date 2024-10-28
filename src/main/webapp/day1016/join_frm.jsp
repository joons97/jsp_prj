<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="회원가입 폼"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>work0909</title>
<link rel="stylesheet" type="text/css" href="http://192.168.10.218/jsp_prj/common/css/main_20240911.css">
<!-- bootstrap CDN 시작 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">
td{ height: 40px }
.required{ color: #FF0000; font-weight: bold; }
#agree{ width: 1200px; height: 180px; border: 1px solid #333;
		overflow: auto; }

</style>
<!-- 다음 우편번호 API 시작 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 다음 우편번호 API 끝 -->

<script type="text/javascript">
	window.onload=function(){
		document.getElementById("idbtn2").addEventListener("click", idDup2);
		document.getElementById("findZipcode").addEventListener("click", searchZipcode);
		document.getElementById("btnSubmit").addEventListener("click", submit);
	}//onload
	
	//부모창에서 자식창으로 값 전달 : Query String을 만들어서 팝업창 띄우기
	function idDup2(){
		//1. 현재창에 아이디를 가져와서
		var id=document.memberFrm.id.value;
		//2. query string 만들어서 팝업을 띄운다
		window.open("id_dup.jsp?id="+id, "idDup",
				"width=465, height=370, top="+(window.screenY+100)+
				", left="+(window.screenX+200));
	}//idDup2
	
	function submit(){
		var pass1=document.memberFrm.pass.value;
		var pass2=document.memberFrm.chk_pass.value;
		if(pass1==""||pass1 != pass2){
			alert("비밀번호를 확인하세요");
			pass.focus();
			return;
		}//end if
		
		document.getElementById("memberFrm").submit();
	}//submit
	
</script>

<script type="text/javascript">
function searchZipcode(){
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = roadAddr;
            document.getElementById("addr2").focus();
        }
    }).open();
}//searchZipcode
</script>

</head>
<body>
<form name="memberFrm" id="memberFrm" action="join_frm_process.jsp" method="post">
<div align="center">
<h1>회원가입</h1>
<table>
	<!-- id 입력 -->
	<tr>
		<td><span class="required">*</span><label>아이디</label></td>
		<td>
			<input type="text" name="id" id="id" class="inputBox" style="width: 200px"> 
			<input type="button" id="idbtn2" class="idbtn btnMy" value="ID 중복 확인" style="width: 130px">
		</td> 
	</tr>

	<tr>
		<td><span class="required" >*</span>비밀번호</td>
		<td>
			<input type="password" name="pass" id="pass" class="inputBox" style="width: 200px"> 비밀번호 확인 
			<input type="password" name="chk_pass" id="chk_pass" class="inputBox" style="width: 200px">
		</td>
	</tr>

	<tr>
		<td><span class="required" >*</span>이름</td>
		<td><input type="text" name="name" id="name" class="inputBox" style="width: 200px"></td>
	</tr>
	
	<tr>
		<td><span class="required">*</span>생일</td>
		<td><input type="text" name="birth" id="birth" class="inputBox" maxlength="10" style="width: 150px"></td>
	</tr>


	<tr>
		<td>연락처</td>
		<td><input type="tel" name="tel" id="tel" class="inputBox" maxlength="13" style="width: 130px"></td>
	</tr>

	<tr>
		<td><span class="required">*</span>휴대폰</td>
		<td>
			<input type="tel" name="cellphone" id="cellphone" class="inputBox" maxlength="13" style="width: 130px"> 
			<input type="checkbox" name="save" value="phoneSave"> 저장
		</td>
	</tr>
	
	<tr>
		<td><span class="required">*</span>이메일</td>
		<td>
			<input type="email" name="email" id="email" class="inputBox" style="width: 170px"> @
			<select size="1" name="email2" class="inputBox">
				<option value="none">선택해주세요</option>
				<option value="gmail.com">지메일</option>
				<option value="naver.com">네이버 메일</option>
				<option value="daum.net">다음메일</option>
				<option value="hotmail.com">핫메일</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td><span class="required">*</span>성별</td>
		<td>
			<input type="radio" name="gender" value="남"> 남자 
			<input type="radio"	name="gender" value="여"> 여자</td>
	</tr>
	
	<tr>
		<td>관심언어</td>
		<td>
			<input type="checkbox" name="lang" value="java"> Java
			<input type="checkbox" name="lang" value="c"> C/C++
			<input type="checkbox" name="lang" value="PyThon"> PyThon
			<input type="checkbox" name="lang" value="JSP"> JSP
			<input type="checkbox" name="lang" value="HTML"> HTML
			<input type="checkbox" name="lang" value="CSS"> CSS
			<input type="checkbox" name="lang" value="JavaScript"> JavaScript
	</tr>

	<tr>
		<td>소재지</td>
		<td><input type="text" name="loc" id="loc" list="addr" placeholder="선택해주세요" class="inputBox">

			<datalist id="addr">
				<option value="강원">
				<option value="경기">
				<option value="경남">
				<option value="경북">
				<option value="광주">
				<option value="대구">
				<option value="대전">
				<option value="부산">
				<option value="서울">
				<option value="울산">
				<option value="인천">
				<option value="전남">
				<option value="전북">
			</datalist>
		</td>
	</tr>

	<tr>
		<td><span class="required">*</span>우편번호</td>
		<td>
			<input type="text" name="zipcode" id="zipcode" readonly="readonly" class="inputBox" style="width: 60px"> 
			<input type="button" value="우편번호 검색" id="findZipcode" class="btnMy" style="width: 140px">
		</td>
	</tr>

	<tr>
		<td><span class="required">*</span>주소</td>
		<td>
			<input type="text" name="addr1" id="addr1" readonly="readonly" class="inputBox" style="width: 500px; margin-bottom: 3px"> <br> 
			<input type="text" name="addr2" id="addr2" class="inputBox" style="width: 500px">
		</td>
	</tr>
</table>
<div align="center" style="margin-top: 15px">
</div>
	<input type="button" id="btnSubmit" value="제출" class="btnMySubmit"> 
	<input type="reset" id="btnReset" value="취소" class="btnMyReset">
</div>
</form>
</body>
</html>
