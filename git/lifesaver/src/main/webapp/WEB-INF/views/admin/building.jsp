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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=119f00e9c183b4e48ccbded04cfb8f47&libraries=services"></script>
<script>


$(document).ready(function (){
    $('#notice').dataTable({
    	
    	info : false,
    	scrollX: true,
    	filter: true,
    
       
    	language: {
            "emptyTable": "데이터가 없어요.",
            "lengthMenu": "페이지당 _MENU_ 개씩 보기",
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
        }
    	
    });
    /* $('#notice tbody').on('click', 'tr', function () {
    	var table = $('#notice').DataTable();
        var data = table.row( this ).data();
        alert( 'You clicked on '+data[0]+'\'s row' );
    } ); */

    
    /*컬럼별 검색  */
     $('#notice_filter').prepend('<select id="select" name="col_select"><option value = saver_code>건물이름</option>'
    		 +'<option value = ssb_situation_num>건물주소</option>'
    		 +'<option value = sit_saver_stat>담당자 전화번호</option>'
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

     $('#notice_filter').append('<input type="button" id="searchinfo"  value ="검색">');
     $('#notice_filter').prepend('<input type="button" id="save"  value ="저장">');
    
   	$("#searchinfo").on("click", function () {
    	console.log("반응");
    	
    	document.frm.method = "post";
    	document.frm.action = "/search";
    	document.frm.submit();
	});  
    

}); 

</script>
<body class="no-skin">
<div id="admin_logo">
		<a href="/lifesaver/admin"><img src='<c:url value="/resources/admin/admin_logo.gif"></c:url>' alt="로고" /></a>
	</div>

	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default    navbar-collapse       h-navbar" style="background-color:#f52a41">
		<script type="text/javascript">
			try{ace.settings.check('navbar' , 'fixed')}catch(e){}
		</script>

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
								<a href="/adminlogout">
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
	</div>
	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container" >
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
				<li class="hover" >
					<a href="/lifesaver/admin">
						<!-- <i class="menu-icon fa fa-volume-up"></i> -->
						<img src="<c:url value='/resources/admin/icon/total.png'/>" alt="asdf" style ="margin-left: 22px" /><br />
						<span class="menu-text">
							종합상황판
						</span>

						<b class="arrow fa fa-angle-down"></b>
					</a>
				</li>

				<li class="hover">
					<a href="/lifesaver/guard.page">
						<img src="<c:url value='/resources/admin/icon/emergency.png'/>" alt="asdf" style ="margin-left: 50px" /><br />
						<span class="menu-text"> 
							응급 출동 가드 지표
						 </span>
						<b class="arrow fa fa-angle-down"></b>
					</a>
				</li>
				<li class="over">
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
				<li class="active open hover">
					<a href="/lifesaver/building.page">
						<img src="<c:url value='/resources/admin/icon/building.png'/>" alt="asdf" style ="margin-left: 20px" /><br />
						<span class="menu-text"> 
							건물조회
						</span>
						<b class="arrow fa fa-angle-down"></b>
					</a>
		

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
						<h1 class="page-title">병원조회</h1>
					</div>
					<!-- /.page-header -->
					<div class="row" style="width: 50%;">
						<div class="col-xs-12" id = "boxcontents">
							<!-- PAGE CONTENT BEGINS -->
							
			<table id="notice"  style ="width:100%;  text-align: center; border: 1px solid black">	
			<thead >
				
				 <tr>
					 <th rowspan="2">병원코드</th>
					 <!-- //<th colspan="1">병원위치</th> -->
					 <th rowspan="2">병원이름</th>
					 <!-- <th rowspan="2">담당자 전화번호</th> -->
					 <th rowspan="2">위도</th>
				 </tr>
				
				 <tr>
					 
					<th>경도</th>
				 </tr>
				 </thead>
				 <tbody style ="width:130%;  text-align: center; border: 1px solid black">
				 <c:forEach var="AEDList" items="${AEDList }">
					 <tr>
						 <td>
						 	<c:out value="${AEDList.AED_LOC }"></c:out>
						 	<%-- <input type="hidden" name="hos_code" value="<c:out value="${hosList.hos_code }"></c:out>" /> --%>
						 </td>
						 <td>
						 	<c:out value="${AEDList.aed_name }"></c:out>
						 </td>
						 	<%-- <input type="hidden" class="hosName" name="hos_name" value="<c:out value="${hosList.hos_name }"></c:out>" /> --%>
						 <td>
						 	<c:out value="${AEDList.aed_lati }"></c:out>
						 	<%-- <input type="hidden" name="hos_road" value="<c:out value="${hosList.hos_road }"></c:out>" /> --%>
						 </td>
						 <td>
						 	<c:out value="${AEDList.aed_longti }"></c:out>
						 	<%-- <input type="hidden" name="hos_jiburn" value="<c:out value="${hosList.hos_jiburn }"></c:out>" /> --%>
						 </td>
						 <!-- <td>2020-06-04-07:00</td> -->
					 </tr>
				 </c:forEach>	 
				 </tbody>
		    </table>
			</div>
		</div>
	</div>
	<div id="map" style="width:50%;height:400px; ">
			
		</div>
		<!-- <input type="button" id="addRow" value="추가"/> -->
<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
		    center: new kakao.maps.LatLng(37.4767747,	126.8914771), // 지도의 중심좌표
		    level: 6 // 지도의 확대 레벨
		};  
		
		//지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		<c:forEach var="AEDList" items="${AEDList }">

		var coords = new kakao.maps.LatLng(
				<c:out value="${AEDList.aed_lati }"></c:out>, 
				<c:out value="${AEDList.aed_longti }"></c:out>
				);
		
		var marker = new kakao.maps.Marker({
	        map: map,
	        position: coords
	    });
		
		</c:forEach>
		//주소-좌표 변환 객체를 생성합니다
		//var geocoder = new kakao.maps.services.Geocoder();
		
		//주소로 좌표를 검색합니다
		/* geocoder.addressSearch('전남 나주시 남평읍 나주호로 442-129', function(result, status) {
		
		// 정상적으로 검색이 완료됐으면 
		 if (status === kakao.maps.services.Status.OK) {
		
		    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		    // 결과값으로 받은 위치를 마커로 표시합니다
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: coords
		    });
		
		    // 인포윈도우로 장소에 대한 설명을 표시합니다
		    var infowindow = new kakao.maps.InfoWindow({
		        content: '<div style="width:150px;text-align:center;padding:6px 0;">구트아카데미</div>'
		    });
		    infowindow.open(map, marker);
		
		    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		    map.setCenter(coords);
		}
	});     */
		 
		
		$('#notice tbody').on('click', 'td', function () {
		    	var table = $('#notice').DataTable();
		        var data = table.cell(this).data();
		        
		        var a;
		       	for(var i = 0; i<data.length; i++){
		        		a += data[i]
		        	}
		        a = a.substr(9);
		        
		        /* alert( 'You are Double clicked on '+a+'\'s row' ); */
		        
		      //주소로 좌표를 검색합니다
				geocoder.addressSearch(a, function(result, status) {
				
				// 정상적으로 검색이 완료됐으면 
				 if (status === kakao.maps.services.Status.OK) {
				
				    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				
				    // 결과값으로 받은 위치를 마커로 표시합니다
				    var marker = new kakao.maps.Marker({
				        map: map,
				        position: coords
				    });
				
				    // 인포윈도우로 장소에 대한 설명을 표시합니다
				    var infowindow = new kakao.maps.InfoWindow({
				        content: '<div style="width:150px;text-align:center;padding:6px 0;">'+a+'</div>'
				    });
				    infowindow.open(map, marker);
				
				    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				    map.setCenter(coords);
				}
			});
		    });
	</script>
</div>
							<!-- PAGE CONTENT ENDS -->
						</div><!-- /.col -->
					</div><!-- /.row -->
			<!-- 	</div>/.page-content-area
			</div>/.page-content
		</div>/.main-content -->
		<div class="footer">
			<div class="footer-inner">
				<!-- #section:basics/footer -->
				<div class="footer-content">
					<span class="bigger-120">
						<img src='<c:url value="/resources/admin/icon/lifeSaverSmall.png"></c:url>' alt="안나옴" />
						<a href="http://www.iamport.kr" target="_blank">LifeSavor</a> &copy; 2020
					</span>
					&nbsp; &nbsp;
					<span class="action-buttons">
						<a href="https://www.facebook.com/iamportservice" target="_blank">
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
	</div>
</body>
<style type="text/css">
.dataTables_wrapper .dataTables_paginate {
   margin-right: 874px;
   width : 100%;
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
.row{
	float: left;
}

#map{
	
	margin:10px;
	padding-left: 10px;
	clear: inherit;
}

</style>

</html>
