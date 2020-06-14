<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>donation</title>
<style>

* {
    margin: 0px;
    padding: 0px;
}
html, body {
    height: 100%;
    background-color: WHITE;
}


	#donation {padding-top:25%;
	           padding-bottom:25%;
	           width:100%;
			   height: 100%;
			   text-align: center;
	           background-image: url(/resources/images/donationBg.png);}
	
</style>
</head>
<body>


	<div id="donation">
		<h4>
			응급상황의 <span style="color: red">국민</span>을 구조하는 것은 국가의 <span
				style="color: red">절대적 의무</span>이다<br /> <span style="color: red">'라이프세이버'</span>는
			국가의 절대적 의무를 행하는 중재자이자 국민이다
		</h4>

		<img alt="donate" src="/resources/images/donateUI.png">

		<h4>
			<span style="color: white">기부는</span> <span style="color: red">생명수호</span>
			<span style="color: white">를 하는</span>,<br /> <span style="color: white">모든 </span>
			<span style="color: red">'라이프 세이버'</span><span style="color: white">들을 위해 사용됩니다.</span></h4>
		<h4><span style="color: white">함께 참여한 기부 금액 :  ${totalprice}</span></h4>

		<a href="/corporation_mod"><button type="button" style="border: none"><img src="/resources/images/donationBtn.png"></button></a>
	</div>

</body>
</html>