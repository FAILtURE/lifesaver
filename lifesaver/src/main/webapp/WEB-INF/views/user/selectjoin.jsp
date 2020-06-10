<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

#selectjoin {
	clear: both;
	background-color: rgb(249, 249, 249);
	/* border: 1px solid red; */
}

#law, #saver {
	width: 71.5%;
	height: 71.5%;
	margin-bottom: 15px;
}


#logo2 {
	margin-bottom: -10px;
} 

#footer {
	margin-top: -10px;
}

@media(max-width: 720px) {
	
	#container{
	width: auto;
	}
	#header{
	width: auto;
	}
	#selectjoin{
	width: auto;
	}
	#agree{
	width: auto;
	}
	#footer{
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
	#logo{
	width: 70%;
	height: 70%;
	}
	 
	
	 
	
}
</style>

<script type="text/javascript">

function changeImg() {
	var on = document.getElementById('on');

	if(on.src.indexOf('off') == -1) {
	on.src = on.src.replace('on.png', 'off.png');
	
	// 로그인 유지 : 세션에 저장 
	
	
	} else {
	on.src = on.src.replace('off.png', 'on.png');
	
	// 로그인 유지 해제 : 세션에서 삭제
	
	}
	}


</script>


</head>
<body>


	<div id="container">

	<div id="header">
		<img src="img/login/logo.png" alt="로고" id="logo" />
	</div>



		<div id="selectjoin">
			<br /><br /><br /><br /><br /><br /><br /><br /><br />
			<img src="img/selectjoin/law.png" id="law" />
		
			<a href="./registerSaver">
			<img src="img/selectjoin/saver.png" id="saver" />
			</a>
			
		</div>	
			
			<div id="agree">
				<br />
				<br />
				이용약관 | 개인정보처리방침 | 책임의 한계와 법적 고지 | 회원정보 고객센터
				<br />
				<br />
			</div>
			
			<div id="footer">
				
				<img src="img/login/logo2.png" id="logo2" />
				Copyright  LifeSaver Corp.  All Right Reserved.
			
			</div>
		
	</div>

</body>
</html>

