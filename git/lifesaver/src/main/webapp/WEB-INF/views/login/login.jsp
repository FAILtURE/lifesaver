<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

html, body {
	color: #454545;
	font-family: Noto Sans CJK JP;
	font-weight: bold;
	font-size: 10.5px;
}
 
img {
	max-width: 100%;
	max-height: auto;
}
#container {
	width: 600px;
	padding: 20px;
	margin: 10px auto;
	text-align: center;
	

}

#header {
	padding: 20px;
	margin-bottom: 20px;
	/* border: 1px solid black; */
}

#logincontents {
	padding-top: 20px;
	clear: both;
	background-color: rgb(249, 249, 249);
	/* border: 1px solid red; */
}

input {
	width: 70%;
	margin-bottom: 10px;
	padding: 20px;
	border: 1px solid gray;
	border-radius: 5px 5px 5px 5px;
}

#submitbutton {
	background-image: url("/resources/img/login/login.png");
	background-position: center;
}

#keep{
	margin-bottom: 5px;
} 



#keeplogin{
	background-color: rgb(249, 249, 249);
	padding-top: 10px;
	padding-left: 60px;
	padding-right: 60px;
	text-align: left;
	font-size: 15px;
	/* border: 1px solid blue; */
}

#findid{
	margin-bottom: -1px;
}

#menus{
	background-color: rgb(249, 249, 249);
	padding-bottom: -60px;
	padding-left: 60px;
	padding-right: 60px;
}


#kakao{
	background-color: rgb(249, 249, 249);
}

#line1{
	margin-bottom: 7px;
	
}

#line2{
	margin-bottom: 60px;
	
}

#loginkakao {
	font-size: 14px;
	background-color: rgb(249, 249, 249);
}


#logo2 {
	margin-bottom: -10px;
} 

#footer {
	margin-top: -10px;
}

@media(max-width: 400px) {
	#container{
	width: auto;
	}
	#logincontents{
	width: auto;
	}
	#keeplogin{
	width: auto;
	}
	#menus{
	width: auto;
	}
	#agree{
	width: auto;
	}
	#footer{
	width: auto;
	}
	#loginkakao {
	width: auto;
	}
	img{
	width: auto;
	}
	#logo2{
	width: 20%;
	height: 20%;
	margin-bottom: -5px;
	}
	 
	
	 
	
}
</style>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">

function changeImg() {
	var on = document.getElementById('on');

	if(on.src.indexOf('off') == -1) {			// == -1 : src 주소 내에 'off'가 없음
	on.src = on.src.replace('on.png', 'off.png');
	
	// 로그인 유지 : 세션에 저장 
	
	
	} else {
	on.src = on.src.replace('off.png', 'on.png');
	
	// 로그인 유지 해제 : 세션에서 삭제
	
	}
	}
	
function newLogin(){

    Kakao.Auth.loginForm({
      success: function(authObj) {
        alert(JSON.stringify(authObj));
      },
      fail: function(err) {
        alert(JSON.stringify(err));
      }
   })
  }


</script>


</head>
<body>


	<div id="container">

	<div id="header">
		<img src="<c:url value='/resources/img/login/logo.png'/>" alt="로고" id="logo" />
	</div>
	


	<form action="./normalLogin" method="post">

		<div id="logincontents">
			<br />
			<br />
			<br />
			<input type="text" name="id" id="id" placeholder="아이디"> <br />
			<input type="password" name="pw" id="pw" placeholder="비밀번호"> <br /> <br />
			
			<input type="submit" value="" id="submitbutton">
		
			
		</div>

			<div id="menus">
				
				아이디 찾기 / 비밀번호 찾기 / <a href="<c:url value="/registerAgree" />">회원가입</a>
				
		
				<br /><br />
			
		
		
			
			<a href="
https://kauth.kakao.com/oauth/authorize?client_id=5461997da2e1069ba99ac732d8c5018c&redirect_uri=http://13.209.132.37:8080/lifesaver/kakaologin&response_type=code&scope=account_email
			">
			<img src="<c:url value='/resources/img/login/kakao.png'/>" id="kakao" style="width: 88%;">
			
			</a>
		

					<br /><br /> 
			</div>
</form>		


	
			<div id="loginkakao">
			카카오 계정으로 로그인
			<br />
			<img src="<c:url value='/resources/img/login/line.png'/>" id="line2" />
			
		
			</div>
			
			<div id="agree">
				<br />
				<br />
				이용약관 | 개인정보처리방침 | 책임의 한계와 법적 고지 | 회원정보 고객센터
				<br />
				<br />
			</div>
			
			<div id="footer">
				
				<img src="<c:url value='/resources/img/login/logo2.png'/>" id="logo2" />
				Copyright  LifeSaver Corp.  All Right Reserved.
				
			
			</div>
	</div>
	

</body>
</html>
