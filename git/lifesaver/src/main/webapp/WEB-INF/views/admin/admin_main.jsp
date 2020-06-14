<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:ng="http://angularjs.org" lang="ko" xml:lang="ko" id="ng-app" ng-app="app">
<head prefix="og: http://ogp.me/ns#">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
	<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/font-awesome.min.css" />
	<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/ace-fonts.css" />
	<link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/ace.min.css" id="main-ace-style" />
    <link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/css/ace-skins.min.css" />
    <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://djqafk2qzyjhg.cloudfront.net/bower_components/owl-carousel//assets/owl.carousel.css">
	<!-- page specific plugin styles -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery || document.write("<script src='https://djqafk2qzyjhg.cloudfront.net/js/jquery.min.js'>"+"<"+"/script>");
	</script>
	<script type="text/javascript" src="https://djqafk2qzyjhg.cloudfront.net/ace-admin/assets/js/fuelux/fuelux.spinner.min.js" ></script>
	<script type="text/javascript" src="https://djqafk2qzyjhg.cloudfront.net/js/ace.min.js"></script>
    <script type="text/javascript" src="https://djqafk2qzyjhg.cloudfront.net/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://djqafk2qzyjhg.cloudfront.net/js/jquery.payment.min.js"></script>
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.6.js"></script> <!-- 위에 있어야 함 -->
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment.subscribe.js"></script>
	<script type="text/javascript" src="https://djqafk2qzyjhg.cloudfront.net/js/js.cookie.js"></script>
	<script type="text/javascript" src="https://djqafk2qzyjhg.cloudfront.net/bower_components/owl-carousel/owl.carousel.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
	<script src="https://cdn.datatables.net/1.10.5/js/jquery.dataTables.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="//cdn.datatables.net/plug-ins/f2c75b7247b/integration/jqueryui/dataTables.jqueryui.css">
	
	<script src="//cdn.datatables.net/plug-ins/f2c75b7247b/integration/jqueryui/dataTables.jqueryui.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	

	
	<!-- basic scripts -->
	<!--오른쪽 상단 메뉴 스타일 -->
	<style type="text/css">
        .ace-nav>li>span.item {
            background-color: #2e6589;
            color: #FFF;
            display: block;
            line-height: inherit;
            text-align: center;
            height: 100%;
            width: auto;
            min-width: 50px;
            padding: 0 8px;
            position: relative;
        }
      
		.topbannerbutton {
			position: absolute;
			top: 15px;
			right: 20px;
			color:#fff;
			height:30px;
			border:1px solid #fff;
			opacity:.5;
			padding:0 10px;
			line-height:30px;
			font-size:12px;
			font-weight:200;
			cursor:pointer;
			border-radius: 3px;;
			-webkit-transition: all 0.5s;
			-o-transition: all 0.5s;
			transition: all 0.5s;
		}
		.topbannerbutton i {
			margin-right:3px;
		}
		.topbannerbutton:hover {
			opacity: 1;
			-webkit-transition: all 0.5s;
			-o-transition: all 0.5s;
			transition: all 0.5s;
		}
		.topbannerbutton:active {
			position:relative;
			top:1px;
		}
        .stripe-banner {
        	position: relative;
            display: block;
            padding: 15px 20px;
            font-weight: bold;
            color: #fff;
            text-align: center;
            font-size: 18px;
        }

        .stripe-banner#danger {
            background-color: #d15b47;
        }

        .stripe-banner#normal {
            background-color: #115599;
        }
        .stripe-banner#normal a,
        .stripe-banner#danger a {
            color:#fff;
            padding:0 2px 2px 2px;
            margin:0 3px;
            text-decoration: none;
            border-bottom:1px solid #fff;
        }

        .plan-win {width:240px; line-height:135%; cursor:default; background-color:#fff;}
        .plan-win .line1 {background-color:#f2f2f2; padding:15px;}
        .plan-win .line1 .plan-main {font-size:16px; padding-bottom: 10px; font-weight:bold;}
        .plan-win .line1 .plan-sub {font-size:12px; color:#888; line-height: 130%;}
        .plan-win .line2 {background-color:#fff; padding:15px; list-style-type: none; margin:0;}
        .plan-win .line2 li {margin:0; padding:3px 0; font-weight:400;}
        .plan-win .line2 i {float:left; font-size:15px; width:20px; color:#4189CD;}
        .plan-win .line2 .plan-text {display:inline-block; font-size:12px;}
        .plan-win .line3 {padding:15px 0 8px 0; margin:0 15px; border-top:1px solid #ddd;}
        .plan-win .line3 .plan-price {font-size:18px; font-weight: bold;}
        .plan-win .line3 .plan-price span {font-size:12px; color:#999; font-weight: normal; padding-left: 5px;}
        .plan-win .line4 {padding:0 15px 15px 15px;}
        .plan-win .line4 button {cursor:pointer; outline:none; border:0px;}
        .plan-win .line4 button:active {outline:none;}

        .top-user-email {border-left:0!important; padding-left:10px!important; cursor:pointer!important;}
        .top-user-email .email-text {color:#fff!important; margin:0!important; padding:0!important;}
        .top-user-caret {border-left:0!important; padding:0 5px!important; color:#fff!important; cursor:pointer!important;}
        .top-user-pic {border-left:0!important; padding:7px 0px 0 5px!important; cursor:pointer!important;}
        .top-user-pic .thumbnail {width:30px!important; height:30px!important; border-radius:50%!important; text-align:center!important; overflow:hidden!important; background-color:#fff!important; line-height:30px!important; cursor:pointer!important;}
        .top-user-pic .thumbnail i {font-size:28px!important; color:#aaa!important; line-height:24px!important;}

        .plan-win {width:240px; line-height:135%; cursor:default; background-color:#fff;}
        .plan-win .line1 {background-color:#f2f2f2; padding:15px;}
        .plan-win .line1 .plan-main {font-size:16px; padding-bottom: 10px; font-weight:bold;}
        .plan-win .line1 .plan-sub {font-size:12px; color:#888; line-height: 130%;}
        .plan-win .line2 {background-color:#fff; padding:15px; list-style-type: none; margin:0;}
        .plan-win .line2 li {margin:0; padding:3px 0; font-weight:400;}
        .plan-win .line2 i {float:left; font-size:15px; width:20px; color:#4189CD;}
        .plan-win .line2 .plan-text {display:inline-block; font-size:12px;}
        .plan-win .line3 {padding:15px 0 8px 0; margin:0 15px; border-top:1px solid #ddd;}
        .plan-win .line3 .plan-price {font-size:18px; font-weight: bold;}
        .plan-win .line3 .plan-price span {font-size:12px; color:#999; font-weight: normal; padding-left: 5px;}
        .plan-win .line4 {padding:0 15px 15px 15px;}
        .plan-win .line4 button {cursor:pointer; outline:none; border:0px;}
        .plan-win .line4 button:active {outline:none;}

        .top-user-email {border-left:0!important; padding-left:10px!important; cursor:pointer!important;}
        .top-user-email .email-text {color:#fff!important; margin:0!important; padding:0!important;}
        .top-user-caret {border-left:0!important; padding:0 5px!important; color:#fff!important; cursor:pointer!important;}
        .top-user-pic {border-left:0!important; padding:7px 0px 0 5px!important; cursor:pointer!important;}
        .top-user-pic .thumbnail {width:30px!important; height:30px!important; border-radius:50%!important; text-align:center!important; overflow:hidden!important; background-color:#fff!important; line-height:30px!important; cursor:pointer!important;}
        .top-user-pic .thumbnail i {font-size:28px!important; color:#aaa!important; line-height:24px!important;}

        .badge {z-index: 1049;}
    </style>
    
   <style type="text/css">
   /* 배너 스타일 설정 */
   .sidebar.h-sidebar .nav-list {
    border-width: 0vw;
    border-bottom: 2px solid #f52a41;
	}
	
	.main-container{
	
	}
	.nav-list>li {
	border-style: #f52a41;
	}
	.no-skin .sidebar.h-sidebar .nav-list>li.active:before {
    background-color: #f52a41;
	}
	.no-skin .sidebar.h-sidebar .nav-list>li.active {
    border-color: #f52a41;
	}
	.no-skin .nav-list>li.active>a {
    font-weight: 700;
    color: #f52a41;
	}
	.page-header h1 {
    padding: 0;
    margin: 0 8px;
    font-size: 24px;
    font-weight: lighter;
    color: #f52a41;
}
#id-message-list-navbar {
	width: 100%;
	height : 150%;
	text-align: left;
	padding : 0px;
	
}
.notice {
	width: 131%;
	height : 150%;
	background-color : #fafafa;
	text-align: center;
	
}
.message-footer {
    background-color: white;
    text-align : center;
    padding : 25px 5px;
    border: 1px solid #E6E6E6;
    border-width: 1px 0;
    border-top: 4px solid #E4E9EE;
    height: 35px;
    
   
}
#id-message-infobar {
	overflow: scroll;
	width: 131%;
	height : 150%;
	margin-bottom: -12px;
	
}
.page-content {
    background-color: #fff;
    position: relative;
    margin: 0;
    padding: 8px 23px 0px;
  
   
}
#pagination a {
display:inline-block;
margin-right:5px;
cursor:pointer;
}

.fa-volume-up:before {
    content: "\f271";
    color : #ffffff;
}


   
   </style>
	<title>공지사항</title>
	
</head>

<script>

  $(document).ready(function (){
    $('#notice').dataTable({
    	
    	columns: [
            { width: '5%' },
            { width: '5%' },
            { width: '10%' },
            { width: '13%' },
            { width: '13%' },
            { width: '13%' },
            { width: '13%' },
            { width: '10%' },
            { width: '10%' },
            { width: '18%' }
         ],
    	info : true,
    	scrollX: true,
    	filter: true,
    	
    	language: {
            "emptyTable": "데이터가 없어요.",
            "lengthMenu": "페이지당 _MENU_ 개씩 보기" +  '<input type="button" id="admin_ssb_save"  value ="저장">',
            "infoEmpty": "데이터 없음",
            "infoFiltered": "( _MAX_건의 데이터에서 필터링됨 )",
            "search": " 에서 ",
            "zeroRecords": "일치하는 데이터가 없어요.",
            "loadingRecords": "로딩중...",
            "processing":     "잠시만 기다려 주세요...",
            "paginate": {
                "next": "다음",
                "previous": "이전"
            }
        },
        
        select: {
            style: 'multi'
     }
    
        	
    });
    
    
    $('#notice').on('change', 'tr', function () {
        $(this).css("background-color", "#B2EBF4");
      /*   document.frm.method = "post";
    	document.frm.action = "/admin_ssb_save";
    	document.frm.submit();
         */
       
    });
    
   
   /*  $('#notice').on('click', 'tr td',function () {
    	var tr = $(this);
        var td = tr.children();
        console.dir($(".status option:selected").val());

        		

       
    	$(this).css("background-color", "black");
	});
     */
    
    
    
    /*컬럼별 검색  */
     $('#notice_filter').prepend('<select id="select" name="col_select"><option value = saver_code>가드코드</option>'
    		 +'<option value = ssb_situation_num>사건번호</option>'
    		 +'<option value = sit_emr_arrtime>구급차 도착시간</option>'
    		 +'<option value = sit_saver_stat>세이버 도착 시 상태</option>'
    		 +'<option value = sit_emr_stat>구급차 도착 전 상태</option>'
    		 +'<option value = sit_hos_arrstatus>병원 도착 전 상태</option>'
    		 +'<option value = sit_unicare_Status>중환자실 내 상태</option>'
    		 +'<option value = sit_death_cuz>사인</option>'
    		 +'<option value = sit_arrest_cuz>심정지 원인</option>'
    		 +'<option value = sit_alive>환자 최종 소생 여부</option>'
     +'</select>');
    /* $('#notice > thead > tr').children().(function (indexInArray, valueOfElement) { 
      $('#select').append('<option>'+valueOfElement.innerHTML+'</option>')
      
      ;
    }); */
    
     $('#notice_filter input').unbind().bind('keyup', function () {
    	 $(this).attr("name", "val");
    	var table = $('#notice').DataTable();
        var colIndex = document.querySelector('#select').selectedIndex;
       /*  table.column(colIndex).search(this.value).draw(); */
    }); 
    
    
    
    /* 날짜 체크*/
   /*  $('#notice_filter').prepend('<input type="text" id="toDate" placeholder="yyyy-MM-dd"> ');
    $('#notice_filter').prepend('<input type="text" id="fromDate" placeholder="yyyy-MM-dd">~'); */

   
    $('click',function(){
    	$( "#toDate" ).datepicker({
        	dateFormat: 'yy-mm-dd'
        });
    	
       
    }); 
    $('click',function(){
    	$( "#fromDate" ).datepicker({
        	dateFormat: 'yy-mm-dd'
        });
       
    }); 
     $('#notice_filter').append('<input type="button" id="searchinfo"  value ="검색">');
    
   	$("#searchinfo").on("click", function () {
    	
    	document.frm.method = "post";
    	document.frm.action = "/lifesaver/search";
    	document.frm.submit();
	});
	
   	$("#admin_ssb_save").on("click", function () {
    	
    	document.frm.method = "post";
    	document.frm.action = "/lifesaver/admin_ssb_save";
    	document.frm.submit();
	}); 
    

}); 


</script>
<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<div id="admin_logo">
		<a href="/lifesaver/admin"><img src='<c:url value="/resources/admin/admin_logo.gif"></c:url>' alt="로고" /></a>
	</div>
	<div id="navbar" class="navbar navbar-default    navbar-collapse       h-navbar" style="background-color:#f52a41">
		<script type="text/javascript">
			try{ace.settings.check('navbar' , 'fixed')}catch(e){}
		</script>

<div class="navbar-container" id="navbar-container" >
			<!-- <div class="navbar-header pull-left" style="background-color: #f52a41" > -->
				<!-- #section:basics/navbar.layout.brand -->
				<a href="/lifesaver/home.page" class="navbar-brand">
					<small>종합상황판</small>
				</a>
				<!-- /section:basics/navbar.layout.brand -->
				<!-- </div> -->
			<!-- #section:basics/navbar.dropdown -->
			<div class="navbar-buttons navbar-header pull-right collapse navbar-collapse hidden-xs" role="navigation">
				<ul class="nav ace-nav">
				    <li class="top-user-email">
                        <div class="email-text dropdown-toggle" data-toggle="dropdown">
                        <c:if test="${admin.id == 'admin' }">
                        	<c:out value="${admin.id}"></c:out>  
                        </c:if>
                        <c:if test="${admin.id != 'admin' }">
                        	<c:redirect url="/adminLogin"></c:redirect>
                        </c:if>                    
                        </div>
						<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
																					<!-- <li>
								<a href="/settings">
									<i class="ace-icon fa fa-cog"></i>
									시스템설정
								</a>
							</li>
							<li class="divider"></li>
														<li>
								<a href="#" style="background-color:#fff!important; cursor:default!important">
									<i class="ace-icon fa fa-question-circle"></i>
									고객센터 문의
								</a>
							</li>
							<li>
								<a href="mailto:cs@iamport.kr" style="font-size:11px!important;">
									<i class="ace-icon fa fa-question-circle" style="visibility:hidden;"></i>
									<span class="text-muted">일반문의-이메일</span> <br>
                                    <i class="ace-icon fa fa-question-circle" style="visibility:hidden;"></i>
									<span style="font-size:14px; font-weight:600;">cs@iamport.kr</span>
								</a>
							</li>
							<li>
								<a href="mailto:support@iamport.kr" style="font-size:11px!important;">
									<i class="ace-icon fa fa-question-circle" style="visibility:hidden;"></i>
									<span class="text-muted">기술문의-이메일</span> <br>
                                    <i class="ace-icon fa fa-question-circle" style="visibility:hidden;"></i>
									<span style="font-size:14px; font-weight:600;">support@iamport.kr</span>
								</a>
							</li>
							<li>
								<a href="#" style="background-color:#fff!important; cursor:default!important; font-size:11px!important;">
									<i class="ace-icon fa fa-question-circle" style="visibility:hidden;"></i>
                                    <span class="text-muted">전화 (10:00-18:00)</span> <br>
									<i class="ace-icon fa fa-question-circle" style="visibility:hidden;"></i>
									<span style="font-size:14px; font-weight:600;">1670-5176</span>
								</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="#" data-toggle="modal" data-target="#changePasswordModal">
									<i class="ace-icon fa fa-lock"></i>
									비밀번호 변경
								</a>
							</li> -->
							<li class="divider"></li>
							<li>
								<a href="/lifesaver/adminlogout">
									<i class="ace-icon fa fa-power-off"></i>
									로그아웃
								</a>
							</li>
													</ul>

				  </li>
				  				  <li class="top-user-caret">
              <i class="ace-icon fa fa-caret-down"></i>
				  </li>
				  <li class="top-user-pic">
				    <div class="thumbnail">
              <i class="icon ion-person"></i>
            </div>
				  </li>
				  					<!-- /section:basics/navbar.user_menu -->
				</ul>
			</div>
			
		</div><!-- /.navbar-container -->
	</div>
	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container" >
	<form name="frm" id="admin_frm" >
		<script type="text/javascript">
			try{ace.settings.check('main-container' , 'fixed')}catch(e){}
		</script>
		<!-- #section:basics/sidebar.horizontal -->
		<div id="sidebar" class="sidebar h-sidebar navbar-collapse collapse" >
			<script type="text/javascript">
				try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
			</script>
			<!-- /.sidebar-shortcuts -->
			<ul class="nav nav-list"  >
				<li class="active open hover" >
					<a href="/lifesaver/admin">
						<!-- <i class="menu-icon fa fa-volume-up"></i> -->
						<img src="<c:url value='/resources/admin/icon/total.png'/>" alt="asdf" style ="margin-left: 22px" /><br />
						<span class="menu-text">
							종합상황판
						</span>

						<b class="arrow fa fa-angle-down"></b>
					</a>
				</li>

				<li class=" hover">
					<a href="/lifesaver/guard.page">
						<img src="<c:url value='/resources/admin/icon/emergency.png'/>" alt="asdf" style ="margin-left: 50px" /><br />
						<span class="menu-text"> 
							응급 출동 가드 지표
						 </span>
						<b class="arrow fa fa-angle-down"></b>
					</a>
				</li>
				<li class=" hover">
					<a href="/lifesaver/authorization.page">
						<img src="<c:url value='/resources/admin/icon/autho.png'/>" alt="asdf" style ="margin-left: 19px" /><br />
						<span class="menu-text">
							승인대기
						</span>
						<b class="arrow fa fa-angle-down"></b>
					</a>
				</li>
						
				<li class=" hover">
					<a href="/lifesaver/hospital.page">
						<img src="<c:url value='/resources/admin/icon/hospital.png'/>" alt="asdf" style ="margin-left: 17px" /><br />
						<span class="menu-text">
							병원조회
						 </span>
						<b class="arrow fa fa-angle-down"></b>
					</a>
				</li>
				<li class=" hover">
					<a href="/lifesaver/building.page">
						<img src="<c:url value='/resources/admin/icon/building.png'/>" alt="asdf" style ="margin-left: 20px" /><br />
						<span class="menu-text"> 
							건물조회
						</span>
						<b class="arrow fa fa-angle-down"></b>
					</a>
				</li>
			</ul>
			<!-- #section:basics/sidebar.layout.minimize -->
			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse" >
				<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right" ></i>
			</div>

			<!-- /section:basics/sidebar.layout.minimize -->
			<script type="text/javascript">
				try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
			</script>
		</div>

		<!-- /section:basics/sidebar.horizontal -->
		<div class="main-content">
			<div class="page-content">
				<!-- /section:settings.box -->
				<div class="page-content-area">
					<div class="page-header"  style="float: left; width: 100%; padding:11.5px; " >
						<h1 class="page-title">종합상황판</h1>
					</div>
					<!-- /.page-header -->
					<div class="row">
						<div class="col-xs-12" id = boxcontents>
							<!-- PAGE CONTENT BEGINS -->
		
			<table id="notice"  style ="width:100%;  text-align: center; border: 1px solid black">	
			<thead >
				
				 <tr>
					 <th rowspan="2">가드코드</th>
					<!--  <th colspan="1">사건번호</th> -->
					 <th rowspan="2">사건번호</th>
					 <th rowspan="2">구급차 도착시간</th>
					 <th rowspan="2">세이버 도착 시 상태</th>
					 <th rowspan="2">구급차 도착 전 상태</th>
					 <th rowspan="2">병원 도착 전 상태</th>
					 <th rowspan="2">중환자실 내 상태</th>
					 <th rowspan="2">사인</th>
					 <th rowspan="2">심정지 원인</th>
					 					 
				 </tr>
				
				 <tr>
					 <th>환자 최종 소생 여부</th>
					 
				 </tr>
				 </thead>
				 <tbody style ="width:130%;  text-align: center; border: 1px solid black">
				 <c:forEach var="list" items="${list }">
				 <tr>
					 <td>
						 <c:out value="${list.saver_code }"></c:out>
						 <input type="hidden" name="saver_code" value="<c:out value="${list.saver_code }"></c:out>" />					 
					 </td>
					 <td>
						 <c:out value="${list.ssb_situation_num }"></c:out>
						 <input type="hidden" name="ssb_situation_num" value="<c:out value="${list.ssb_situation_num }"></c:out>" />
					 </td>
					 <td>
					 	<c:out value="${list.sit_emr_arrtime }"></c:out>
					 	<input type="hidden" name="sit_emr_arrtime" value="<c:out value="${list.sit_emr_arrtime }"></c:out>" />
					 </td>
					 
					 <td>
					 	<c:choose>
					 		<c:when test="${list.sit_saver_stat== 'cardiac_arrest' }">
					 		<div id="adminDivStatCA">
							 <select name="sit_saver_stat" id="status" class="status">
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="death" >death</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_saver_stat== 'resuscitation' }">
						 	<div id="adminDivStatRC">
						 		<select name="sit_saver_stat" id="status" class="status" >
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="death">death</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_saver_stat== 'complete cure' }">
						 	<div id="adminDivStatCC">
						 		<select name="sit_saver_stat" id="status" class="status">
							 	<option value="complete cure">complete cure</option>
							 	<option value="death">death</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_saver_stat== 'death' }">
						 	<div id="adminDivStatDE">
						 	<select name="sit_saver_stat" id="status" class="status" >
							 	<option value="death">death</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
					 	</c:choose>
					 </td>
					 	
					 <td>
					 	<c:choose>
					 		<c:when test="${list.sit_emr_stat== 'cardiac_arrest' }">
					 		<div id="adminDivStatCA">
							 <select name="sit_emr_stat" id="status" class="status">
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="death">death</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_emr_stat== 'resuscitation' }">
						 	<div id="adminDivStatRC">
						 		<select name="sit_emr_stat" id="status" class="status" >
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="death">death</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_emr_stat== 'complete cure' }">
						 	<div id="adminDivStatCC">
						 		<select name="sit_emr_stat" id="status" class="status">
							 	<option value="complete cure">complete cure</option>
							 	<option value="death">death</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_emr_stat== 'death' }">
						 	<div id="adminDivStatDE">
						 		<select name="sit_emr_stat" id="status" class="status" >
							 	<option value="death">death</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
					 	</c:choose>
					 </td>
					 <td>
					 	<c:choose>
					 		<c:when test="${list.sit_hos_arrstatus== 'cardiac_arrest' }">
					 		<div id="adminDivStatCA">
							 <select name="sit_hos_arrstatus" id="status" class="status">
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="death">death</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_hos_arrstatus== 'resuscitation' }">
						 	<div id="adminDivStatRC">
						 		<select name="sit_hos_arrstatus" id="status" class="status" >
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="death">death</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_hos_arrstatus== 'complete cure' }">
						 	<div id="adminDivStatCC">
						 		<select name="sit_hos_arrstatus" id="status" class="status">
							 	<option value="complete cure">complete cure</option>
							 	<option value="death">death</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_hos_arrstatus== 'death' }">
						 	<div id="adminDivStatDE">
						 		<select name="sit_hos_arrstatus" id="status" class="status" >
							 	<option value="death">death</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
					 	</c:choose>
					 </td>
					 <td>
					 	<c:choose>
					 		<c:when test="${list.sit_unicare_Status== 'cardiac_arrest' }">
					 		<div id="adminDivStatCA">
							 <select name="sit_unicare_Status" id="status" class="status">
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="death">death</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_unicare_Status== 'resuscitation' }">
						 	<div id="adminDivStatRC">
						 		<select name="sit_unicare_Status" id="status" class="status" >
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="death">death</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_unicare_Status== 'complete cure' }">
						 	<div id="adminDivStatCC">
						 		<select name="sit_unicare_Status" id="status" class="status">
							 	<option value="complete cure">complete cure</option>
							 	<option value="death">death</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 </select>
							 </div>
						 	</c:when>
						 	<c:when test="${list.sit_unicare_Status== 'death' }">
						 	<div id="adminDivStatDE">
						 		<select name="sit_unicare_Status" id="status" class="status" >
							 	<option value="death">death</option>
							 	<option value="resuscitation">resuscitation</option>
							 	<option value="cardiac_arrest">cardiac_arrest</option>
							 	<option value="complete cure">complete cure</option>
							 </select>
							 </div>
						 	</c:when>
					 	</c:choose>
					 </td>
					 <td>
					 <c:choose>
					 	<c:when test="${list.sit_death_cuz != null }">
						        <input type="text" name="sit_death_cuz" value="<c:out value="${list.sit_death_cuz}"></c:out>" />
						 </c:when>
						 <c:otherwise>
						 	<input type="text" name="sit_death_cuz"  placeholder="사인을 작성해주세요"/>
						 </c:otherwise>
					 </c:choose>					 	
					 </td>
					 <td>			 
					<c:choose>
					 	<c:when test="${list.sit_arrest_cuz != null }">
						        <input type="text" name="sit_arrest_cuz"  value="<c:out value="${list.sit_arrest_cuz}"></c:out>"/>
						 </c:when>
						 <c:otherwise>
						 	<input type="text" name="sit_arrest_cuz"  placeholder="심정지 원인을 작성해주세요"/>
						 </c:otherwise>
					 </c:choose>
					 </td>
						<c:choose>
						    <c:when test="${list.sit_alive eq 0 }">
						        <td>
						        	사망
						        	<input type="hidden" name="sit_alive"  value="<c:out value="${list.sit_alive}"></c:out>"/>
						        </td>
						    </c:when>
						    <c:otherwise>
						        <td>
						        	생존
						        	<input type="hidden" name="sit_alive"  value="<c:out value="${list.sit_alive}"></c:out>"/>
						        </td>
						    </c:otherwise>
						</c:choose>
				 </tr>	
				 </c:forEach> 
				 </tbody>
		    </table>
		   
			</div>
		</div>
	</div>
</div>
							<!-- PAGE CONTENT ENDS -->
						</div><!-- /.col -->
						</form>
					</div><!-- /.row -->
			<!-- 	</div>/.page-content-area
			</div>/.page-content
		</div>/.main-content -->
		<div class="footer">
			<div class="footer-inner">
				<!-- #section:basics/footer -->
				<div class="footer-content">
					<span class="bigger-120">
						<span class="blue bolder">(주)</span>
						<a href="http://www.iamport.kr" target="_blank">LifeSaver</a> &copy; 2020
					</span>
					&nbsp; &nbsp;
					<span class="action-buttons">
						<a href="https://www.facebook.com/" target="_blank">
							<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
						</a>
					</span>
				</div>
				<!-- /section:basics/footer -->
			</div>
		</div>
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	
</body>
<style type="text/css">
.dataTables_wrapper .dataTables_paginate {
   margin-right: 874px;
   width : 80%;
}
table.dataTable thead th, table.dataTable tfoot th {
    font-weight: bold;
    text-align: center;
}
table.dataTable tbody th, table.dataTable tbody td {
    padding: 8px 10px;
    border: 1px solid gray;
}


table.dataTable thead th, table.dataTable thead td, table.dataTable tfoot th, table.dataTable tfoot td {
    padding: 2px 10px;
}

.dataTable>thead>tr>th[class*=sort]:after {
    content: ""; 
}
#admin_frm{
	display: inline;
}

#adminDivStatCA{
	background-color: #22a8e2;
	text-align: left;
}
#adminDivStatCC{
	background-color: black;
	text-align: left;
}
#adminDivStatRC{
	background-color: #cae25a;
	text-align: left;
}
#adminDivStatDE{
	background-color: #ff6161;
	text-align: left;
}

#status{
	margin: 0;
	vertical-align: middle;
	text-align: center;
}




</style>

</html>
