<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/saverjoin.css" ></c:url>">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
 
// 로그인 유지 버튼 모양 변경
function changeImg() {
	var on = document.getElementById('on');

		if (on.src.indexOf('off') == -1) {
			on.src = on.src.replace('on.png', 'off.png');
			// 로그인 유지 : 세션에 저장 
		} else {
			on.src = on.src.replace('off.png', 'on.png');
			// 로그인 유지 해제 : 세션에서 삭제
		}
	}
	

// 아이디(이메일)을 readonly로
$(function() {
	$(document).ready(function() {
		$('select[name=emailSelection]').change(function() {
		
			if ($(this).val() == "1") {
				$('#emaildomain').val("");
				$("#emaildomain").attr("readonly", false);
			} else {
				$('#emaildomain').val($(this).val());
				$("#emaildomain").attr("readonly", true);
			}
		});
	});	
});

// 우편번호 api
function openDaumPost(){
	new daum.Postcode({
		oncomplete: function(data) {   
	        	// 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postnumber').value = data.zonecode;
                document.getElementById("postaddress").value = data.roadAddress;
	        }
	}).open();
}

//우편번호 api2
function openDaumPost2(){
	new daum.Postcode({
		oncomplete: function(data) {   
	        	// 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("jobaddr").value = data.roadAddress;
	        }
	}).open();
}

</script>

<script type="text/javascript">
// 유효성 검사 
$(document).ready(function(){
		
		var checkIP = /^[a-zA-Z0-9]{4,16}$/; //ID와 PASSWORD 유효성 검사 정규식
	    var checkEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z]){1,99}$/;  //Email 유효성 검사 정규
	    var checkHangle = /^[\uAC00-\uD7A3]+$/; // 한글입력
		var checkPhone =  /^\d{3}-\d{3,4}-\d{4}$/;	// 휴대폰 유효성 검사 : 000-0000-0000
		
	
		    
	    var saver_license = document.getElementById("saver_license");
		var id = document.getElementById("id");
	    var pw = document.getElementById("pw");
	    var pwcheck = document.getElementById("pwcheck");
	    var name = document.getElementById("name");
	    var year = document.getElementById("year");
	    var month = document.getElementById("month"); 
	    var day = document.getElementById("day");
	    var checkgender = document.getElementById("checkgender");
	    var phone = document.getElementById("phone");
	    var post = document.getElementById("post");
	    var addr1 = document.getElementById("addr1");

	
		
	
	$("#okbutton").on('click', function(){
		
		//라이센스 유효성 검사
		if(saver_license.value==''){
			alert("자격번호를 입력해주세요!");
			saver_license.focus();
			return false;
		}
		
		//아이디 유효성 검사
		if(id.value==''){
			alert("카카오 또는 구글 인증을 통해 아이디를 입력하세요!")
			id.focus();
			return false;
		}
	    
	    //비밀번호 유효성 검사
	    if(pw.value==''){
	    	  alert("비밀번호를 입력해주세요!");
	    	  pw.focus();
	          return false;
	    }if(!checkIP.test(pw.value)){
	    	alert("4~16자 영문 대 소문자, 숫자를 사용하세요!");
	    	pw.focus();
	         return false;
	    }if(pwcheck.value==''){
	    	alert("비밀번호 확인을 입력해주세요!");
	    	pwcheck.focus();
	        return false;
	    }if(pw.value!=pwcheck.value){
	    	alert("비밀번호가 일치하지 않습니다!");
	    	pwcheck.focus();
	    	return false;
	    }
	    
	    // 이름 유효성 검사
	    if(name.value==''){
	    	$('#nameCheck').text("필수정보 입니다.");
	    	name.focus();
	        return false;
	    }if(!checkHangle.test(name.value)){
	    	$('#nameCheck').text("한글로 입력해주세요");
	    	name.focus();
	        return false;
	    }
	    
	   // 생년월일 유효성 검사
	   if(year.value=='선택'){
		   $('#birthdayCheck').text("생년월일을 입력해주세요.");
	        return false;
	    }if(month.value=='선택'){
	    	$('#birthdayCheck').text("생년월일을 입력해주세요.");
	        return false;
	    }if(day.value=='선택'){
	    	$('#birthdayCheck').text("생년월일을 입력해주세요.");
	        return false;
	    }
	    
	    // 성별 유효성 검사
		if(gender.value==''){
			$('#genderCheck').text("성별을 선택해주세요.");
			return false;
		}
	    
	    // 연락처 유효성 검사
	    if(phone.value=="선택"){
	    	$('#phoneCheck').text("연락처를 입력해주세요");
	    	return false;
	    }if(!checkPhone.test(phone.value)){
	    	$('#phoneCheck').text("연락처를 정확하게 입력해주세요 : 000-0000-0000");
	    	return false;
	    }
	    
	    // 주소 유효성 검사
	    if(postnumber.value==''){
	    	$('#addCheck').text("주소를 입력해주세요");
	    	return false;
	    }if(postaddress.value==''){
	    	$('#addCheck').text("주소를 입력해주세요");
	    	return false;
	    }

	/* 	document.frm.action = './saverjoinOK';
		document.frm.method = "GET"; 
		document.frm.submit(); */
		alert("회원가입이 완료되었습니다.");
	
	
	});
		
});//jquery end


</script>
</head>
<body>



<form action="<c:url value="/saverjoinOK"/>" name="frm">

	<div id="container">

		<div id="header">
			<img src="<c:url value="/resources/img/saverjoin/logo.png" ></c:url>" alt="로고" id="logo" /> <br /> 
			<span id="step">Step.1 약관동의&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Step.2 회원정보입력&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Step.3 가입완료</span> <br /> <img src="<c:url value="/resources/img/saverjoin/actionLine.png" ></c:url>" alt="" />
				
		</div>
		
	

		<div id="frame">
		
			<div id="authtext">SNS 인증하기</div>
			
			<div id="auth">
			<a href="https://kauth.kakao.com/oauth/authorize?client_id=5461997da2e1069ba99ac732d8c5018c&redirect_uri=http://13.209.132.37:8080/lifesaver/registerAuth&response_type=code&scope=account_email">
				<img src="<c:url value="/resources/img/saverjoin/kakaoBtn.png" ></c:url>" alt="" /> 
			</a>
				<img src="<c:url value="/resources/img/saverjoin/googleBtn.png" ></c:url>" alt="" />
			</div>
			
			<div id="insert">

				<div id="licensefield" class="fields">
				
					<div id="license_name" class="names">면허번호 *</div>
					<div id="license_text" class="texts">
						<input type="text" name="saver_license" id="saver_license"/>
					</div>
				</div>
				
				<div id="idfield" class="fields">
				
					<div id="id_name" class="names">아이디 *</div>
					<div id="id_text" class="texts">
					
						<c:if test="${userId eq null }">
							<input type="text" name="id" id="id"/>
						</c:if>
						
						<c:if test="${userId ne null}">
							<input type="text" name="id" id="id" value="${userId }" readonly="readonly" />
						</c:if>
						
					</div>
				</div>
				
				<div id="pwfield" class="fields">
					<div id="pw_name" class="names">비밀번호 *</div>
					<div id="pw_text" class="texts">
						<input type="password" name="pw" id="pw" />
					</div>
				</div>
				
				<div id="pwcheckfield" class="fields">
					<div id="pwcheck_name" class="names">비밀번호확인 *</div>
					<div id="pwcheck_text" class="texts">
						<input type="password" name="" id="pwcheck" />
					</div>
				</div>
				
				<div id="namefield" class="fields" >
					<div id="name_name" class="names">이름 *</div>
					<div id="name_text" class="texts">
						<input type="text" name="name" id="name" />
					</div>
				</div>
				
				<div id="birthfield" class="fields">
					<div id="birth_name" class="names">생년월일 *</div>
					<div id="birth_text">
						<div id="yearselectionDIV" style="width: 157px;" class="texts">
							<select name="year" class="selection" id="year">
								<option>선택</option>
								<c:forEach var="i" begin="0" end="100" step="1">
									<option>${2020 - i }</option>	
								</c:forEach> 
							</select>
						</div>
						
						<div id="monthselectionDIV" style="width: 157px;" class="texts">
							<select name="month" class="selection" id="month">
								<option>선택</option>
								<c:forEach var="i" begin="1" end="12" step="1">
									<option>${i }</option>
								</c:forEach>
							</select>
						</div>
						
						<div id="dayselectionDIV" style="width: 157px;" class="texts">
							<select name="day" class="selection" id="day">
								<option>선택</option>
								<c:forEach var="i" begin="1" end="31" step="1">
									<option>${i }</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
				
				<div id="gender" class="fields">
					<div id="gender_name" class="names">성별 *</div>
					<div id="gender_text" class="texts">
						<input type="checkbox" id="cb1" name="checkgender" value="남">
  						<label for="cb1">남</label>
  						<input type="checkbox" id="cb2" name="checkgender" value="여">
  						<label for="cb2">여</label>
					</div>
				</div>
				
				<div id="phonefield" class="fields" >
					<div id="phone_name" class="names">휴대폰 *</div>
					<div id="phone_text" class="texts">
						<input type="text" name="phone" id="phone" placeholder="010-0000-0000" />
					</div>
				</div>
				
				<div id="addressfield" class="fields">
					<div id="address_name1" class="names">주소 *</div>
					<div id="address_text">
						<div id="address_text1" class="texts" style="width: 170px;">
								<input type="text" name="postnumber" id="postnumber" style="width: 170px;">	
						</div>
						<div id="post_button" class="buttons">
							<input type="button" value="우편 번호 검색" onclick="openDaumPost()" />
						</div>
					</div>
				</div>
				<div id="addressfield2" class="fields" >
					<div id="address_name2" class="names">&nbsp;</div>
						<div id="address_name2" class="texts">
							<input type="text" name="postaddress" id="postaddress"/>
					</div>
				</div>
				
				
				<div id="jobfield" class="fields" >
					<div id="job_name" class="names">소속 기관</div>
					<div id="job_text" class="texts">
						<input type="text" name="jobaddr" id="jobaddr"/>
					</div>
					<div id="job_button" class="buttons">
						<input type="button" value="기관 확인" onclick="openDaumPost2()"/>
					</div>
				</div>
				
				<div id="gradefield" class="fields" >
					<div id="grade_name" class="names">세이버 분류</div>
					<div id="grade_text" class="texts" style="width: 157px;">
						<select id="saver_grade" name="saver_grade">
							<option value="1">의사</option>
							<option value="2">간호사, 응급구조사</option>
							<option value="3">의료계 종사자</option>
							<option value="4">자격증 소지자</option>
						</select>
					</div>
				</div>
				
				<input type="submit" value="확인" id="okbutton" />
				<input type="button" value="이전" />
				
				</div> <!-- insert 종료 -->
		</div> <!-- frame 종료 -->
	</div>
	
	
</form>	
</body>
		
		

</html>
