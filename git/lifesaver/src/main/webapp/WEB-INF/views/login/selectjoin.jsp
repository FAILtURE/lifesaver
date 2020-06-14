<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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



</head>
<body>


	<div id="container">

	<div id="header">
		<img src="<c:url value="/resources/img/login/logo.png" ></c:url>" alt="로고" id="logo" />
	</div>




		<div id="selectjoin">
			<br /><br /><br /><br /><br /><br /><br /><br /><br />
			<img src="<c:url value="/resources/img/selectjoin/law.png" ></c:url>" id="law" />
			
			<a href="<c:url value="/registerSaver"></c:url>">
			<img src="<c:url value="/resources/img/selectjoin/saver.png" ></c:url>" id="saver" />
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
				
				<img src="<c:url value="/resources/img/login/logo2.png" ></c:url>" id="logo2" />
				Copyright  LifeSaver Corp.  All Right Reserved.
				
			</div>
		
	</div>

</body>
</html>

