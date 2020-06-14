<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>관리자 로그인</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/bootstrap.min.css" />
		<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/ace.min.css" />
		<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/ace.onpage-help.css" />
	
		<script type="text/javascript">
			window.jQuery || document.write("<script src='https://djqafk2qzyjhg.cloudfront.net/js/jquery.min.js'>"+"<"+"/script>");
		</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function () {
		$("#btn-login").on("click", function () {
			document.UserLoginForm.method = "post";
			document.UserLoginForm.action = "/lifesaver/adminLogin";
			document.UserLoginForm.submit();
		});
	});

</script>
	</head>

	<body class="login-layout light-login">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<img src="<c:url value='/resources/admin/admin_login.png'/>" alt="asdf" /><br />
								</h1>
								<h4 class="blue" id="id-company-text">관리자페이지</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								
<div id="login-box" class="login-box visible widget-box no-border">
	<div class="widget-body">
		<div class="widget-main">
			<h4 class="header blue lighter bigger">
				<i class="ace-icon fa fa-coffee green"></i>
				로그인
			</h4>
			<span style="color: red"><c:out value="${war }"></c:out></span>
			<form  id="UserLoginForm" name="UserLoginForm" accept-charset="utf-8">
				<fieldset>
					<label class="clearfix " style="display: block">
						<span class="block input-icon input-icon-right">
							<input id="email_input" type="text" class="form-control" placeholder="아이디" name="id" />
							<i class="ace-icon fa fa-user"></i>
						</span>
					</label>

					<label class="clearfix " style="display: block">
						<span class="block input-icon input-icon-right">
							<input id="password_input" type="password" class="form-control" placeholder="패스워드" name="pwd" />
							<i class="ace-icon fa fa-lock"></i>
						</span>
					</label>

					<!-- Google Authenticator -->
					
					<div class="space"></div>

					<div class="center">
						<button id="btn-login" type="button" class="width-50 btn btn-sm btn-primary">
							<i class="ace-icon fa fa-key"></i>
							<span class="bigger-110">로그인</span>
						</button>
					</div>

					<div class="space-4"></div>
				</fieldset>
			</form>
		</div><!-- /.widget-main -->

		<div class="toolbar clearfix" style = "background-color: #fa5241;">
			
			<div style = "background-color: #fa5241;">
				<a href="#" data-target="#signup-box" class="user-signup-link" style="color: #ffffff">
					메인사이트 이동
					<i class="ace-icon fa fa-arrow-right"></i>
				</a>
			</div>
		</div>
	</div><!-- /.widget-body -->
</div><!-- /.login-box -->

<div id="forgot-box" class="forgot-box widget-box no-border">
	<div class="widget-body">
		<div class="widget-main">
			<h4 class="header red lighter bigger">
				<i class="ace-icon fa fa-key"></i>
				비밀번호 찾기/변경
			</h4>
			
			<div class="space-6"></div>
			<p>
				가입하신 Email주소로 비밀번호 변경 링크를 발송합니다.
			</p>

			<form onsubmit="return false">
				<fieldset>
					<label class="block clearfix">
						<span class="block input-icon input-icon-right">
							<input id="req-passwd-email" type="email" class="form-control" placeholder="Email" name=""/>
							<i class="ace-icon fa fa-envelope"></i>
						</span>
					</label>

					<div class="center">
						<button id="btn-change-passwd" type="button" class="width-55 btn btn-sm btn-danger">
							<i class="ace-icon fa fa-lightbulb-o"></i>
							<span id="msg-change-passwd" class="bigger-110" data-progress="메일 발송 중입니다.." data-default="변경링크 받기">변경링크 받기</span>
						</button>
					</div>
				</fieldset>
			</form>
		</div><!-- /.widget-main -->

		<div class="toolbar center">
			<a href="#" data-target="#login-box" class="back-to-login-link">
				로그인 하기
				<i class="ace-icon fa fa-arrow-right"></i>
			</a>
		</div>
	</div><!-- /.widget-body -->
</div><!-- /.forgot-box -->

<div id="signup-box" class="signup-box widget-box no-border">
	<div class="widget-body">
		<div class="widget-main">
			<h4 class="header green lighter bigger">
				<i class="ace-icon fa fa-users blue"></i>
				회원가입
			</h4>

						<div class="space-6"></div>
			<p> Email주소를 아이디로 사용합니다 : </p>

			<form action="/users/register" id="UserRegisterForm" name="UserRegisterForm" method="post" accept-charset="utf-8">
				<fieldset>
					<label class="block clearfix">
						<span class="block input-icon input-icon-right">
							<input type="text" class="form-control" placeholder="아이디(Email)" name="user_email"/>
							<i class="ace-icon fa fa-user"></i>
						</span>
					</label>

					<label class="block clearfix">
						<span class="block input-icon input-icon-right">
							<input type="password" class="form-control" placeholder="비밀번호" name="password"/>
							<i class="ace-icon fa fa-lock"></i>
						</span>
					</label>

					<label class="block clearfix">
						<span class="block input-icon input-icon-right">
							<input type="password" class="form-control" placeholder="비밀번호 확인" name="confirm_password"/>
							<i class="ace-icon fa fa-retweet"></i>
						</span>
					</label>

					<label class="block">
						<input type="checkbox" class="ace" id="chk-terms"/>
						<span class="lbl">
							<a href="/pages/terms" target="terms">아임포트이용약관</a>
							에 동의합니다.
						</span>
					</label>

					<label class="block">
						<input type="checkbox" class="ace" id="chk-privacy"/>
						<span class="lbl">
							<a href="/pages/privacy" target="privacy">개인정보취급방침</a>
							에 동의합니다.
						</span>
					</label>

					<div class="space-24"></div>

					<div class="center">
						<button id="btn-register" type="button" class="width-65 btn btn-sm btn-success">
							<span class="bigger-110">등록하기</span>

							<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
						</button>
					</div>
				</fieldset>
			</form>
		</div>

		<div class="toolbar center">
			<a href="#" data-target="#login-box" class="back-to-login-link">
				<i class="ace-icon fa fa-arrow-left"></i>
				로그인하기
			</a>
		</div>
	</div><!-- /.widget-body -->
</div><!-- /.signup-box -->
<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
	window.jQuery || document.write("<script src='/js/jquery.min.js'>"+"<"+"/script>");
</script>

<!-- <![endif]-->
							</div><!-- /.position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->
	</body>
	<style type="text/css">
 .fa-coffee:before {
    content: "\f138";
    
}
.grey {
    color: #fa5241 !important;
}

-->
</style>
</html>
