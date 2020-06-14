<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- META DATA -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">


    <title>Life Saver</title>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <link rel="shortcut icon" href='<c:out value="/resources/img/images/ico/favicon.png" />'>



    <!-- STYLESHEETS -->
    <link rel="stylesheet" href='<c:url value="/resources/css/lifeSaver.css" />' type="text/css" />

    <!-- GOOGLE WEB FONTS -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&family=Roboto:wght@700&display=swap" rel="stylesheet">


<!-- 스크립트 시작 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
var cookiedata = document.cookie;

function kout(){
	
	function setCookie( name , value , expired ){
		 
		 var date = new Date();
		 date.setHours(date.getHours() + expired);
		 var expried_set = "expries="+date.toGMTString();
		 document.cookie = name + "=" + value + "; path=/;" + expried_set + ";" 
	}
function getCookie(name){
		 
	    var nameofCookie = name + "=";
	    var x = 0;
	    while(x <= document.cookie.length){
	        var y = ( x + nameofCookie.length);
	        if(document.cookie.substring(x,y) == nameofCookie){
	            if((endofCookie = document.cookie.indexOf(";",y)) == -1)
	                endofCookie = document.cookie.length;
	            return unescape(document.cookie.substring(y,endofCookie));
	        }
	        x = document.cookie.indexOf(" ",x) + 1;
	        if( x == 0 )
	            break;
	        }
	        
	        return "";
	}
	
	Kakao.init('62a01cd8367a4cda69419da6793187ca');//카카오에서 제공 myceo.co.kr 수정
	Kakao.Auth.logout();
	setCookie("kakao_login","",-1);  // 쿠키삭제 (로그아웃)

}

</script>
</head>

<body>
    <!-- NAVIGATION -->
    <nav class="navbar-fixed-top" id="navigation">
        <div class="headernavibar01">
            <div class="headernavbar02">
                <div class="phone">
                    <a href=""><img src='<c:url value="/resources/img/phone.png"></c:url>' alt=""><span style="font-family: 'Roboto', sans-serif; font-size:12px; color:white;">080-8282-1253</span></a>

                </div>
                <ul class="nav__menu">

                    <li><a href="">세이버소개</a></li>
                    <li>
                          <img src='<c:url value="/resources/img/sideBar.png"></c:url>' alt="세이버소개.jpg">
                    </li>
                     <c:if test="${id eq null}">
                    
                    <li><a href="<c:url value="/login"/>">로그인</a></li>
                    
                    </c:if>
                    
                    <c:if test="${id ne null }">
                    
                  
               
                    <li><a href="<c:url value="/logout"/>" onclick="kout()">로그아웃</a></li>
                    
                    </c:if>
                    
                    <li>
                        <img src='<c:url value="/resources/img/sideBar.png"></c:url>' alt=""> 
                    </li>
                    <li><a href="<c:url value="/registerAgree"/>">회원가입</a></li>
                    <li>
                    
                    
                        <img src='<c:url value="/resources/img/sideBar.png" />' alt="">
                    </li>
                    <li><a href="">ENG</a></li>
                </ul>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 center">
                    <!-- LOGO -->
                    <a class="brand pull-left" href="">
                  
                        <img src=' <c:url value="/resources/img/logo_re.png"/>' alt="LifeSaver">
                    </a>
                    <!-- END LOGO -->

                    <!-- <-- MOBILE MENU BUTTON -->
                    <div class="mobile-menu" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="bs-navbar" aria-expanded="false">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </div>
                    <!-- END MOBILE MENU BUTTON -->
                    <div class="main__navibar" id="main__navibar">
                        <ul id="main-menu" class="collapse navbar-collapse">

                            <li><a href="#page-status" id="status-move">세이버현황</a></li>
                            <li><a href="#page-grade" id="grade-move">세이버등급</a></li>
                            <li><a href="#page-features" id="feature-move">응급의료정보</a></li>
                            <li><a href="#page-about" id="about-move">응급의료이슈</a></li>
                            <li><a href="#page-blog" id="blog-move">지도</a></li>
                            <!-- <li><a href="#page-contact">나눔소통</a></li> -->

                        </ul>
                        <!-- END MAIN MENU -->
                    </div>

                    <!-- MAIN MENU -->
                    <!-- END MAIN MENU -->


                </div>
            </div>
        </div>
    </nav>
    <!-- END NAVIGATION -->


    <!-- PAGE | Intro -->
    <div class="pages white paralax page-welcome" id="page-welcome">
        <div class="overlay"></div>
        <!-- Centralized content -->
        <div class="centralized">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 center">
                        <!-- Animated logo -->
                        <div class="logo">
                            <div class="scrollNormal">
                                <a href="#page-work">
                                  <img src='<c:url value="/resources/img/AED.png"></c:url>' width="140" height="140">
                                </a>
                            </div>
                            <div class="scrollDown">
                                <a href="#page-blog">
								  <img src='<c:url value="/resources/img/call.png"></c:url>' width="140" height="140">
                                </a>
                            </div>
                        </div>

                        <div class="line-divider" id="welcome-messages">
                            <ul class="slides">
                                <li>
                                    <h1>LifeSaver</h1>
                                </li>
                                <li>
                                    <h1 style="font-family: 'Roboto', sans-serif">5분의 희망</h1>
                                </li>

                            </ul>
                        </div>
                        <p>The Five Minute Hope</p>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END PAGE | Intro -->
    <!-- PAGE | 세이버현황 start -->
    <div class="pages page-work" id="page-status">
                <div class="saverStatusBg">
        <!-- DB로 현황을 받아오는 부분 -->
        	<div class="totalSaver" style="width: 150px; height: 50px; background-color: white; margin-top: 430px; position: absolute; margin-left: 370px; font-size: 60px"> <c:out value="${totalSaver }"></c:out></div>
        	<div class="totalSaver" style="width: 150px; height: 50px; background-color: white; margin-top: 767px; position: absolute; margin-left: 1405px; font-size: 60px; padding: 36px;" > <c:out value="${sum }"></c:out></div>
        	<div class="totalSaver" style="width: 150px; height: 50px; background-color: white; margin-top: 767px; position: absolute; margin-left: 370px; font-size: 60px; " > <c:out value="${todayHelp }"></c:out></div>
            <img src='<c:url value="/resources/img/saverStatusBG.png"></c:url>' id="page-saverStatus" alt="">
            
        </div>
        <!-- 영역 차지하는 공간 -->
        <div class="rating__footer">

        </div>
    </div>

    <!-- PAGE | 세이버현황 end -->
    <!-- PAGE | 세이버등급 -->
    <div class="pages page-clients" id="page-grade">

        <div class="rating__title">
            <img src='<c:url value="/resources/img/pageLine.png"></c:url>' id="logoLine" />
            <h2 class="rating__Text"><strong>라이프 세이버 ?</strong></h2>
        </div>
        <div class="rating__subTitle">
            <h4 class="rating__infoText">
                <span class="rating__redText">'라이프세이버'</span>응급환자 발생시 신고부터 대처까지의 모든 응급 처치 과정들을 부담없이 <br /> 즉각 시행할 수 있는 일반인들의 분위기를 만들고,
                <span class="rating__redText">'라이프세이버'</span>시스템 도입을 통한 <br /> 좀더 체계적인 <span class="rating__redText">심
                    정지 사망</span>으로 인한 사망 퍼센티지의 감소에 목적을 가지고 있다
            </h4>
        </div>
        <div class="rating__mainSub">
            <h6 id="subText">※<span class="rating__redText">'보건의료인'</span>외 CPR교육을 이수받은 '일반인'도 신청이 가능합니다.</h6>
        </div>
        <div class="rating__mainContents">

            <div class="rating__step01">
                 <img src='<c:url value="/resources/img/saver01.png"></c:url>' alt="" />
            </div>

            <div class="rating__step02">

                 <img src='<c:url value="/resources/img/saver02.png"></c:url>' alt="" />
            </div>
            <div class="rating__step03">

                <img src='<c:url value="/resources/img/saver03.png"></c:url>' alt="" />
            </div>
            <div class="rating__step04">

                <img src='<c:url value="/resources/img/saver04.png"></c:url>' alt="" />
            </div>
            <div class="rating__footerSub">
                <h6 class="ratingText">※<span class="rating__redText"> ‘라이프 세이버’</span>는 응급조치를 교육받고 수료증을 발급받은 ‘전문인력’을 지칭하는 단어입니다.</h6>
            </div>


        </div>

        <div class="rating__footer">

        </div>

    </div>

    <!-- PAGE | 세이버등급 end -->

    <!-- PAGE | 응급의료정보 -->
    <div class="pages page-work" id="page-features">
        <div class="container">
            <!-- 타이틀-->
            <header>
           
                <h4><img src='<c:url value="resources/img/images/emergencyPage_icon.png"/>' alt=""></h4>
                <h3><strong style="font-size: 25px;">응급의료정보</strong></h3>

                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <p style="font-size:15px;font-weight:600;color:#636363;">
                            응급의료 서비스를 보다 신속하고 편리하게 이용할 수 있도록 21세기 선진 응급의료사업 추진
                        </p>
                    </div>
                </div>
                <!-- 타이틀 end -->
                <!-- Sub menu 네비바 -->
                <!-- 
            Params: 
                plugin-filter: Defines links for filtering.
            -->
                <nav class="submenu">
                    <ul>
                        <li>
                            <a href="#" class="plugin-filter active" data-filter="all">전체</a>
                        </li>
                        <li>
                            <a href="#" class="plugin-filter" data-filter="typography">CPR/AED정보</a>
                        </li>
                        <li>
                            <a href="#" class="plugin-filter" data-filter="illustration">응급의료정보</a>
                        </li>
                        <li>
                            <a href="#" class="plugin-filter" data-filter="branding">법령정보</a>
                        </li>
                        <li>
                            <a href="#" class="plugin-filter" data-filter="photography">기타정보</a>
                        </li>
                    </ul>
                </nav>
            </header>
            <!-- Sub menu 네비바 | End  -->

            <!-- 응급의료정보 | contents-->
            <article>



                <!-- 심페소생술 | start -->
                <ul class="thumbnails plugin-filter-elements portfolio-items">
                    <li class="col-md-4 mix illustration typography">
                        <a href="<c:url value="/cprpage" />" data-destination="portfolio-items" data-insert="before">
                            <!--  -->
                            
                            
                            
                            <img src='<c:url value="/resources/img/asd/cpr_aed.png" />' alt="Treble">

                            <!-- Portfolio name, activated on hover -->
                            <div class="portfolio-overlay">
                                <h4 style="font-size: larger;">심페소생술(CPR)</h4>
                            </div>
                        </a>
                    </li>
                    <!-- 심페소생술 | end-->
                    <!-- 제생동기 | start -->
                    <!-- col-md-4 mix typography illustration-- =>네비게이션에 데이터값을 입력해줘서 리스트 시킴 -->
                    <li class="col-md-4 mix typography illustration">
                        <a href="<c:url value="/aedinfopage" />" data-destination="portfolio-items" data-insert="before">
                        
                       
                        
                            <img src=' <c:url value="resources/img/asd/aed_cpr.png"/>' alt="Treble">
                            <div class="portfolio-overlay">
                                <h4 style="font-size: larger;">제생동기(AED)</h4>
                            </div>
                        </a>
                    </li>
                    <!-- 제생동기 | end-->
                    <!-- 체계정보 | start -->
                    <li class="col-md-4 mix illustration">
                        <a href="#pages/portfolio/project_3.html" data-destination="portfolio-items" data-insert="before">
                        
                        
                        
                            <img src='<c:url value="resources/img/asd/emgerImg.png" />' alt="Treble">
                            <div class="portfolio-overlay">
                                <h4 style="font-size: larger;">응급의료체계정보</h4>
                            </div>
                        </a>
                    </li>
                    <!-- 체계정보 |end-->
                    <!-- 법령정보 | start -->
                    <li class="col-md-4 mix branding">
                        <a href="<c:url value="/lawpage" />" data-destination="portfolio-items" data-insert="before">
                        
                        
                        
                            <img src='<c:url value="resources/img/asd/samarianLaw.png" />' alt="Treble">
                            <div class="portfolio-overlay">
                                <h4 style="font-size: larger;">법령정보</h4>
                            </div>
                        </a>
                    </li>
                    <!-- 법령정보 | end -->
                    <!-- 자격증정보 | start -->
                    <li class="col-md-4 mix photography">
                        <a href="http://www.kacpr.org/page/page.php?category_idx=1&category1_code=1247206237&category2_code=1527733733&page_idx=1113&gubun=2" data-destination="portfolio-items" data-insert="before">
                          
                          
                            <img src='<c:url value="/resources/img/asd/license_ens.png" />'>
                            <div class="portfolio-overlay">
                                <h4 style="font-size: larger;">응급자격증정보</h4>
                            </div>
                        </a>
                    </li>
                    <!-- 자격증정보 | end-->
                    <!-- 응급의료교육정보 | start -->
                    <li class="col-md-4 mix photography">
                        <a href="https://www.e-gen.or.kr/education/institution.do" data-destination="portfolio-items" data-insert="before">
                         
                         
                         
                            <img src='<c:url value="resources/img/asd/educationcenter.png" />' alt="Treble">
                            <div class="portfolio-overlay">
                                <h4 style="font-size: larger;">응급의료교육정보</h4>
                            </div>
                        </a>
                    </li>
                    <!-- 응급의료교육정보 | end-->
                </ul>
            </article>
            <!-- 응급의료정보 | contents | end-->

            <!-- Footer | 응급의료정보 | start -->
            <footer>
                <div class="show-more-cube">

                    <span style="font-size: large;font-weight:bold;color:#ff4343;">Scroll</span>
                    </a>
                </div>
            </footer>
            <!-- End footer | 응급의료정보 | end -->
        </div>
    </div>

    <!-- PAGE | 응급의료정보 end -->

    <!-- PAGE | 의료정보 출처 -->
    <div class="pages page-clients" id="page-clients">
        <div class="container">
            <h4 class="line-divider-inline center">참고 및 의료정보 출처</h4>
            <!-- 기관 logos -->
            <div class="row">
           
                <div class="col-md-2 col-sm-6 center">
                    <img src=' <c:url value="resources/img/images/pages/clients/01.png" />' alt="Treble">
                </div>
                <div class="col-md-2 col-sm-6 center">
                    <img src=' <c:url value="resources/img/images/pages/clients/02.png" />' alt="Treble">
                </div>
                <div class="col-md-2 col-sm-6 center">
                    <img src=' <c:url value="resources/img/images/pages/clients/03.png" />' alt="Treble">
                </div>
                <div class="col-md-2 col-sm-6 center">
                    <img src=' <c:url value="resources/img/images/pages/clients/04.png" />' alt="Treble">
                </div>
                <div class="col-md-2 col-sm-6 center">
                    <img src=' <c:url value="resources/img/images/pages/clients/05.png" />' alt="Treble">
                </div>
                <div class="col-md-2 col-sm-6 center">
                    <img src=' <c:url value="resources/img/images/pages/clients/06.png" />' alt="Treble">
                </div>
            </div>
            <hr />
            <!-- 라이퍼 세이버에 대한 간략 소개-->
            <div class="row">
                <div class="col-md-8 col-md-offset-2 center smallFontBy08">
                    <p>
                        <span style="font-weight: 800;color:#ff4343">라이프 세이버는 어떤일을 하나요?</span> <br><br>· <strong>응급환자의
                            신고 접수를 받으면 신속하게 현장으로 출동해서 환자의 상태를 자세하게 살펴보고 응급처치를 합니다.</strong> <br>
                        <strong>· 응급처치가 끝난 후 가까운 병원으로 환자를 안전하게 옮기고 응급처치에 대한 내용을 기록해서 담당 의사에게 알려줍니다.</strong>

                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- END PAGE | 의료정보 출처 end -->



    <!-- PAGE | 응급의료이슈  -->
    <div class="pages page-blog" id="page-about">
        <div class="container">
            <!-- Header -->
            <header>
                <div class="title__mark">  
                    <img src=' <c:url value="/resources/img/pageLine.png" />' alt="">
                </div>
                <div class="header__title">
                    <h3>응급의료이슈</h3>

                </div>

            </header>
            <!-- End Header -->

            <!-- Article -->
            <article>
                <!-- Blog articles -->
                <ul class="thumbnails">
                    <!-- Blog post -->
                    <li class="col-md-4">

                        <!-- Blog image -->
                        <a href="http://www.knn.co.kr/197909">
                            <img src='<c:url value="/resources/img/issue01.png"></c:url>' alt="">
                        </a>

                        <!-- Blog title -->
                        <h5>
                            시민과 경찰이 구하다.<br />
                            <small>2019년 12월20일</small>
                        </h5>


                        <div class="read-more">
                            <a href="http://www.knn.co.kr/197909">전문 보기</a>
                        </div>
                    </li>
                    <li class="col-md-4">
                        <a href="https://imnews.imbc.com/replay/2019/nwdesk/article/5246731_28802.html">
                            <img src='<c:url value="/resources/img/issue02.png"></c:url>' alt="">
                        </a>
                        <h5>
                            손발'착착'시민의식<br />
                            <small>2019년 04월12일</small>
                        </h5>

                        <div class="read-more">
                            <a href="https://imnews.imbc.com/replay/2019/nwdesk/article/5246731_28802.html ">
                                전문보기</a>
                        </div>
                    </li>
                    <li class="col-md-4">
                        <a href="http://news.kbs.co.kr/news/view.do?ncd=4453967&ref=A%20-">
                            <img src='<c:url value="/resources/img/issue03.png"></c:url>' alt="Treble">
                        </a>
                        <h5>
                            '영상통화'로 골든타임을 잡다<br />
                            <small>2020년 05월25일</small>
                        </h5>

                        <div class="read-more">
                            <a href="http://news.kbs.co.kr/news/view.do?ncd=4453967&ref=A%20-">전문보기</a>
                        </div>
                    </li>

                    <li class="col-md-4">
                        <a href="https://www.youtube.com/watch?v=bqWDsHwkn4w">
                           <img src='<c:url value="/resources/img/issue04.png"></c:url>' alt="">
                        </a>
                        <h5>
                            '23초 만에 달려와'심페소생..사라진'천사'<br />
                            <small>2019년 08월09일</small>
                        </h5>
                        <!--  -->
                        <div class="read-more">
                            <a href="https://www.youtube.com/watch?v=bqWDsHwkn4w">
                                전문보기</a>
                        </div>
                    </li>
                    <li class="col-md-4">
                        <a href="https://www.youtube.com/watch?v=k-i7NLw6X8Y">
                            <img src='<c:url value="/resources/img/issue05.png"></c:url>' alt="">
                        </a>
                        <h5>
                            ‘심폐소생술’…방법 모를 땐?<br />
                            <small>2018년 03월21일</small>
                        </h5>

                        <div class="read-more">
                            <a href="https://www.youtube.com/watch?v=k-i7NLw6X8Y">전문보기</a>
                        </div>
                    </li>
                    <li class="col-md-4">
                        <a href="https://www.youtube.com/watch?v=1NZIbTy79DU">
                            <img src='<c:url value="/resources/img/issue06.png"></c:url>' alt="">
                        </a>
                        <h5>
                            주저 없이 필사적으로…기적의 '심폐소생술'<br />
                            <small>2015년 10월14일</small>
                        </h5>

                        <div class="read-more">
                            <a href="https://www.youtube.com/watch?v=1NZIbTy79DU">전문보기</a>
                        </div>
                    </li>

                </ul>
            </article>
            <!-- End Article -->

            <!-- Footer -->
            <footer>
                <!-- More blog posts -->
                <div class="show-more-cube">
                    <a href="./pages/blog/blog.html"><span>Life<br />Saver</span></a>
                </div>
            </footer>
            <!-- End Footer -->
        </div>
    </div>
    <!-- END PAGE | 응급의료이슈 end -->
    <!-- PAGE | 지도 -->
    <div class="saver__map" id="page-blog">
        <form name="popForm">
            <input type="hidden" name="cmd" value="openPop" />
            <input type="hidden" name="name" />
            <input type="hidden" name="tell" />
            <input type="hidden" name="code" />
            <input type="hidden" name="/img" />
        </form>

        <!--%@include file="MapAPI_St1_01.jsp" % -->
        <!-- 위도 경도 자동 생성 -->
        <div id="saver__mapwrap">
            <h3 align="center"> 생명 수호에 필요한 위치 정보를 제공합니다. </h3>
            <!-- 지도가 표시될 div -->
            <div id="map" style="width:100%;height:560px; margin:auto">
                <p align="center">
                    <button onclick="setZoomable(false)">지도 확대/축소 끄기</button>
                    <button onclick="setZoomable(true)">지도 확대/축소 켜기</button>
                </p>
                <!-- 지도 위에 표시될 마커 카테고리 -->
                <div class="category">
                    <ul>
                        <li id="apMenu" onclick="changeMarker('ap')"> <span class="ico_comm ico_carpark"></span>AED</li>
                        <li id="hpMenu" onclick="changeMarker('hp')"><span class="ico_comm ico_store"></span>ER/H</li>
                        <li id="mpMenu" onclick="changeMarker('mp')"><span class="ico_comm ico_coffee"></span>M/P</li>
                    </ul>
                </div>
            </div>
        </div>
        <p align="center"><br>
            <button onclick="setZoomable(false)">지도 확대/축소 끄기</button>
            <button onclick="setZoomable(true)">지도 확대/축소 켜기</button>
            <button onclick="getLocation()">현재 내 위치 보기</button><br><br>
            <button onclick="eraseAllCircles()">써클 삭제</button><br><br>


        </p>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=119f00e9c183b4e48ccbded04cfb8f47">
        </script>

        <script>
            function submitInfo(url, name, tell, code, img) {
                var myForm = document.popForm;
                window.open("", "popForm",
                    "toolbar=no, width=405, height=367, directories=no, status=no,    scrollorbars=no, resizable=no");
                myForm.action = url;
                myForm.method = "post";
                myForm.target = "popForm";
                myForm.name.value = name;
                myForm.tell.value = tell;
                myForm.code.value = code;
                myForm.img.value = img;
                myForm.submit();
            }

            function setZoomable(zoomable) { // 마우스 휠로 지도 확대,축소 가능여부를 설정합니다
                map.setZoomable(zoomable);
            }

            var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
                mapOption = {
                    center: new kakao.maps.LatLng(37.6389443, 127.0647295), // 지도의 중심좌표 
                    level: 4 // 지도의 확대 레벨 
                };
            var map = new kakao.maps.Map(mapContainer, mapOption);

            var drawingCircles = {};
            var drawingInfoOverlay = {};
            var drawingInfoMarker = {};

            var mapTypeControl = new kakao.maps.MapTypeControl();
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

            //제세동기 건물 위치 ap  마커가 표시될 좌표 배열입니다
            var apPositions = [
                new kakao.maps.LatLng(37.483327, 126.8972991),
                new kakao.maps.LatLng(37.6389443, 127.0647295), new kakao.maps.LatLng(37.6540782, 127.0566045), new kakao.maps.LatLng(37.6452024, 127.0566272), new kakao.maps.LatLng(37.6189132, 127.080284),
                new kakao.maps.LatLng(37.6406403, 127.0725163), new kakao.maps.LatLng(37.6550171, 127.0716009), new kakao.maps.LatLng(37.642332, 127.0566646), new kakao.maps.LatLng(37.6429841, 127.0742628),
                new kakao.maps.LatLng(37.619019, 127.0806814), new kakao.maps.LatLng(37.6287746, 127.0563772), new kakao.maps.LatLng(37.6601362, 127.0751796), new kakao.maps.LatLng(37.6543814, 127.0636656),
                new kakao.maps.LatLng(37.6797021, 127.0557699), new kakao.maps.LatLng(37.6294332, 127.0826468), new kakao.maps.LatLng(37.6771548, 127.0553068), new kakao.maps.LatLng(37.6660832, 127.0592794),
                new kakao.maps.LatLng(37.6273255, 127.093707), new kakao.maps.LatLng(37.6422357, 127.1108557), new kakao.maps.LatLng(37.6820698, 127.0767907), new kakao.maps.LatLng(37.6428027, 127.0664601),
                new kakao.maps.LatLng(37.6198099, 127.0581489), new kakao.maps.LatLng(37.6628678, 127.064417), new kakao.maps.LatLng(37.6347792, 127.069563), new kakao.maps.LatLng(37.6255571, 127.0729859),
                new kakao.maps.LatLng(37.6304778, 127.0901988), new kakao.maps.LatLng(37.637429, 127.0848667), new kakao.maps.LatLng(37.6189234, 127.0755897), new kakao.maps.LatLng(37.642332, 127.0566646),
                new kakao.maps.LatLng(37.6438715, 127.0585375), new kakao.maps.LatLng(37.6383233, 127.0519475), new kakao.maps.LatLng(37.6452024, 127.0566272), new kakao.maps.LatLng(37.6189132, 127.080284),
                new kakao.maps.LatLng(37.6481175, 127.0706261), new kakao.maps.LatLng(37.6226379, 127.0877996), new kakao.maps.LatLng(37.642332, 127.0566646), new kakao.maps.LatLng(37.6429841, 127.0742628),
                new kakao.maps.LatLng(37.6313974, 127.061568), new kakao.maps.LatLng(37.6501995, 127.0802507), new kakao.maps.LatLng(37.6601362, 127.0751796), new kakao.maps.LatLng(37.6543814, 127.0636656),
                new kakao.maps.LatLng(37.638841, 127.0661233), new kakao.maps.LatLng(37.6796626, 127.0524147), new kakao.maps.LatLng(37.6771548, 127.0553068), new kakao.maps.LatLng(37.6660832, 127.0592794),
                new kakao.maps.LatLng(37.6464986, 127.0688377), new kakao.maps.LatLng(37.6299987, 127.0605127), new kakao.maps.LatLng(37.6820698, 127.0767907), new kakao.maps.LatLng(37.6428027, 127.0664601),
                new kakao.maps.LatLng(37.6564936, 127.0760342), new kakao.maps.LatLng(37.6472529, 127.0650843), new kakao.maps.LatLng(37.6347792, 127.069563), new kakao.maps.LatLng(37.6255571, 127.0729859),
                new kakao.maps.LatLng(37.6678457, 127.0783464), new kakao.maps.LatLng(37.6281642, 127.0527347), new kakao.maps.LatLng(37.6189234, 127.0755897), new kakao.maps.LatLng(37.6180027, 127.0751526),
                new kakao.maps.LatLng(37.6302524, 127.0694461), new kakao.maps.LatLng(37.6638075, 127.0752635), new kakao.maps.LatLng(37.6705563, 127.0793058), new kakao.maps.LatLng(37.6603731, 127.0719807),
                new kakao.maps.LatLng(37.6408968, 127.0586079), new kakao.maps.LatLng(37.6728818, 127.0832321), new kakao.maps.LatLng(37.656095, 127.0634219), new kakao.maps.LatLng(37.615123, 127.0669139),
                new kakao.maps.LatLng(37.6420907, 127.0687149), new kakao.maps.LatLng(37.6218076, 127.0603111), new kakao.maps.LatLng(37.6201696, 127.0843884), new kakao.maps.LatLng(37.6304778, 127.0901988),
                new kakao.maps.LatLng(37.6335347, 127.0506487), new kakao.maps.LatLng(37.6209742, 127.0692369), new kakao.maps.LatLng(37.6304778, 127.0901988), new kakao.maps.LatLng(37.6540782, 127.0566045),
                new kakao.maps.LatLng(37.6248346, 127.0737922), new kakao.maps.LatLng(37.6378502, 127.1114314), new kakao.maps.LatLng(37.6575352, 127.0639274), new kakao.maps.LatLng(37.6575352, 127.0639274),
                new kakao.maps.LatLng(37.6392243, 127.0715448), new kakao.maps.LatLng(37.6366317, 127.066364), new kakao.maps.LatLng(37.6575352, 127.0639274), new kakao.maps.LatLng(37.6575352, 127.0639274),
                new kakao.maps.LatLng(37.6472483, 127.0778939), new kakao.maps.LatLng(37.6542123, 127.0747887), new kakao.maps.LatLng(37.6575352, 127.0639274), new kakao.maps.LatLng(37.6575352, 127.0639274),
                new kakao.maps.LatLng(37.6574623, 127.0786935), new kakao.maps.LatLng(37.6843334, 127.0536353), new kakao.maps.LatLng(37.6545778, 127.0729142), new kakao.maps.LatLng(37.663948, 127.0777916),
                new kakao.maps.LatLng(37.6589779, 127.0696351), new kakao.maps.LatLng(37.6649137, 127.0707636), new kakao.maps.LatLng(37.6456112, 127.0567104), new kakao.maps.LatLng(37.6679745, 127.0805358),
                new kakao.maps.LatLng(37.6548497, 127.066936), new kakao.maps.LatLng(37.6668073, 127.0516941), new kakao.maps.LatLng(37.6464986, 127.0688377), new kakao.maps.LatLng(37.6355789, 127.0515167),
                new kakao.maps.LatLng(37.6644821, 127.0638028), new kakao.maps.LatLng(37.661247, 127.0602415), new kakao.maps.LatLng(37.6828216, 127.0566861), new kakao.maps.LatLng(37.6472529, 127.0650843),
                new kakao.maps.LatLng(37.6671878, 127.0598254), new kakao.maps.LatLng(37.6591309, 127.0762599), new kakao.maps.LatLng(37.6324854, 127.0609448), new kakao.maps.LatLng(37.6246617, 127.0875778),
                new kakao.maps.LatLng(37.6876147, 127.0542784), new kakao.maps.LatLng(37.6859148, 127.0535291), new kakao.maps.LatLng(37.6332505, 127.0656144), new kakao.maps.LatLng(37.6302239, 127.0694838),
                new kakao.maps.LatLng(37.6338082, 127.0634525), new kakao.maps.LatLng(37.6520804, 127.0714561), new kakao.maps.LatLng(37.6433785, 127.069535), new kakao.maps.LatLng(37.6299987, 127.0605127),
                new kakao.maps.LatLng(37.6660026, 127.0783941), new kakao.maps.LatLng(37.6326105, 127.0644441), new kakao.maps.LatLng(37.6281642, 127.0527347), new kakao.maps.LatLng(37.642332, 127.0566646),
                /* 서울 광진구-----------------------------------------서울 금천구------------------------------------------------서울 동작구------------------------------------서울 용산구----------------------------------*/
                new kakao.maps.LatLng(37.567412, 127.005682), new kakao.maps.LatLng(37.4659864, 126.8895163), new kakao.maps.LatLng(37.56741164, 127.0056822), new kakao.maps.LatLng(37.5509473, 126.9892965),
                new kakao.maps.LatLng(37.567412, 127.005682), new kakao.maps.LatLng(37.4824138, 126.882238), new kakao.maps.LatLng(37.51005566, 126.9634445), new kakao.maps.LatLng(37.5324201, 126.9903488),
                new kakao.maps.LatLng(37.532112, 127.069453), new kakao.maps.LatLng(37.4776597, 126.8819289), new kakao.maps.LatLng(37.51161025, 126.9272269), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4767747, 126.8914771), new kakao.maps.LatLng(37.56741164, 127.0056822), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.476155, 126.8912875), new kakao.maps.LatLng(37.49873227, 126.9649066), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4726661, 126.8926854), new kakao.maps.LatLng(37.48733516, 126.9744099), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.545071, 127.098215), new kakao.maps.LatLng(37.4732495, 126.8917326), new kakao.maps.LatLng(37.48733516, 126.9744099), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.545062, 127.098198), new kakao.maps.LatLng(37.4681519, 126.8938326), new kakao.maps.LatLng(37.50248844, 126.9496254), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.538051, 127.082592), new kakao.maps.LatLng(37.4797138, 126.8876605), new kakao.maps.LatLng(37.50421232, 126.9596745), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.538728, 127.082014), new kakao.maps.LatLng(37.4496345, 126.9105021), new kakao.maps.LatLng(37.50421232, 126.9596745), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.538728, 127.082014), new kakao.maps.LatLng(37.4800099, 126.9064907), new kakao.maps.LatLng(37.50495694, 126.9469891), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.55863, 127.111707), new kakao.maps.LatLng(37.4532786, 126.9190099), new kakao.maps.LatLng(37.50962999, 126.9622051), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.534528, 127.073651), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.50863037, 126.9282839), new kakao.maps.LatLng(37.5324201, 126.9903488),
                new kakao.maps.LatLng(37.534528, 127.073651), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.49480285, 126.9615929), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.537, 127.072961), new kakao.maps.LatLng(37.4485533, 126.9194293), new kakao.maps.LatLng(37.49480285, 126.9615929), new kakao.maps.LatLng(37.5324201, 126.9903488),
                new kakao.maps.LatLng(37.540263, 127.065111), new kakao.maps.LatLng(37.4478533, 126.918271), new kakao.maps.LatLng(37.5054521, 126.9596784), new kakao.maps.LatLng(37.5324201, 126.9903488),
                new kakao.maps.LatLng(37.534528, 127.073651), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.50397389, 126.9609563), new kakao.maps.LatLng(37.5324201, 126.9903488),
                new kakao.maps.LatLng(37.55863, 127.111707), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.48898312, 126.9148425), new kakao.maps.LatLng(37.5324527, 126.9903488),
                new kakao.maps.LatLng(37.537, 127.072961), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.48443875, 126.980928), new kakao.maps.LatLng(37.5324201, 126.9903488),
                new kakao.maps.LatLng(37.540081, 127.09968), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.5099255, 126.9304271), new kakao.maps.LatLng(37.5243777, 126.994505),
                new kakao.maps.LatLng(37.538557, 127.072998), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.4877494, 126.9733831), new kakao.maps.LatLng(37.5243777, 126.994505),
                new kakao.maps.LatLng(37.551321, 127.107604), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.50444598, 126.9410904), new kakao.maps.LatLng(37.5243777, 126.994505),
                new kakao.maps.LatLng(37.55863, 127.111707), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.50264968, 126.9228475), new kakao.maps.LatLng(37.523952, 126.9923454),
                new kakao.maps.LatLng(37.557997, 127.112804), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.50524692, 126.9265318), new kakao.maps.LatLng(37.53483097, 126.9870294),
                new kakao.maps.LatLng(37.545518, 127.100729), new kakao.maps.LatLng(37.44897, 126.9185293), new kakao.maps.LatLng(37.50190153, 126.9223643), new kakao.maps.LatLng(37.5360669, 126.987859),
                new kakao.maps.LatLng(37.563873, 127.089525), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.49856662, 126.9205764), new kakao.maps.LatLng(37.5360669, 126.987859),
                new kakao.maps.LatLng(37.53222, 127.090162), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.51200968, 126.9397419), new kakao.maps.LatLng(37.5448696, 126.9891625),
                new kakao.maps.LatLng(37.536078, 127.07334), new kakao.maps.LatLng(37.448895, 126.9193515), new kakao.maps.LatLng(37.49055293, 126.9716271), new kakao.maps.LatLng(37.5339355, 127.0043336),
                new kakao.maps.LatLng(37.536078, 127.07334), new kakao.maps.LatLng(37.4480783, 126.9197848), new kakao.maps.LatLng(37.49280498, 126.9697446), new kakao.maps.LatLng(37.5339355, 127.0043336),
                new kakao.maps.LatLng(37.538364, 127.070921), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.50767662, 126.9289611), new kakao.maps.LatLng(37.5339355, 127.0043336),
                new kakao.maps.LatLng(37.553761, 127.08055), new kakao.maps.LatLng(37.4485283, 126.9193543), new kakao.maps.LatLng(37.50190153, 126.9223643), new kakao.maps.LatLng(37.5339355, 127.0043336),
                new kakao.maps.LatLng(37.555102, 127.075939), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.50398531, 126.9424032), new kakao.maps.LatLng(37.5339355, 127.0043336),
                new kakao.maps.LatLng(37.538071, 127.089029), new kakao.maps.LatLng(37.448271, 126.9187717), new kakao.maps.LatLng(37.5116033, 126.9572184), new kakao.maps.LatLng(37.5339355, 127.0043336),
                new kakao.maps.LatLng(37.547211, 127.096816), new kakao.maps.LatLng(37.4476449, 126.9193682), new kakao.maps.LatLng(37.50461575, 126.9229631), new kakao.maps.LatLng(37.5311243, 127.0062225),
                new kakao.maps.LatLng(37.542911, 127.083902), new kakao.maps.LatLng(37.4484505, 126.9188321), new kakao.maps.LatLng(37.49040892, 126.9179572), new kakao.maps.LatLng(37.5311243, 127.0062542),
                new kakao.maps.LatLng(37.542911, 127.083902), new kakao.maps.LatLng(37.4480061, 126.9188071), new kakao.maps.LatLng(37.49040892, 126.9179572), new kakao.maps.LatLng(37.5345111, 127.0004744),
                new kakao.maps.LatLng(37.537653, 127.070536), new kakao.maps.LatLng(37.4476505, 126.9193321), new kakao.maps.LatLng(37.49040892, 126.9179572), new kakao.maps.LatLng(37.5316229, 127.0077454),
                new kakao.maps.LatLng(37.55863, 127.111707), new kakao.maps.LatLng(37.4494867, 126.9129405), new kakao.maps.LatLng(37.50144862, 126.9516555), new kakao.maps.LatLng(37.5368373, 127.0092213),
                new kakao.maps.LatLng(37.55863, 127.111707), new kakao.maps.LatLng(37.4494062, 126.912935), new kakao.maps.LatLng(37.51366783, 126.9469422), new kakao.maps.LatLng(37.5299738, 127.0073854),
                new kakao.maps.LatLng(37.540816, 127.069031), new kakao.maps.LatLng(37.4494978, 126.9131461), new kakao.maps.LatLng(37.49904079, 126.9294737), new kakao.maps.LatLng(37.5312854, 127.0064665),
                new kakao.maps.LatLng(37.55863, 127.111707), new kakao.maps.LatLng(37.4492145, 126.913235), new kakao.maps.LatLng(37.49467231, 126.9177173), new kakao.maps.LatLng(37.5312854, 127.0064665),
                new kakao.maps.LatLng(37.55863, 127.111707), new kakao.maps.LatLng(37.4492311, 126.9129711), new kakao.maps.LatLng(37.49480285, 126.9615929), new kakao.maps.LatLng(37.5300071, 127.0106832),
                new kakao.maps.LatLng(37.55863, 127.111707), new kakao.maps.LatLng(37.4493414, 126.9137437), new kakao.maps.LatLng(37.49336759, 126.9238904), new kakao.maps.LatLng(37.5509911, 126.9823346),
                new kakao.maps.LatLng(37.55863, 127.111707), new kakao.maps.LatLng(37.4492006, 126.9134183), new kakao.maps.LatLng(37.48363408, 126.9756503), new kakao.maps.LatLng(37.5519102, 126.9801413),
                new kakao.maps.LatLng(37.538138, 127.095066), new kakao.maps.LatLng(37.4494978, 126.9131461), new kakao.maps.LatLng(37.48459633, 126.9754872), new kakao.maps.LatLng(37.5457852, 126.9747756),
                new kakao.maps.LatLng(37.552011, 127.078774), new kakao.maps.LatLng(37.4493367, 126.9129655), new kakao.maps.LatLng(37.48825796, 126.9751875), new kakao.maps.LatLng(37.5457358, 126.9747756),
                new kakao.maps.LatLng(37.546228, 127.070507), new kakao.maps.LatLng(37.4493895, 126.9132211), new kakao.maps.LatLng(37.50808541, 126.9331433), new kakao.maps.LatLng(37.5453891, 126.979489),
                new kakao.maps.LatLng(37.534857, 127.070583), new kakao.maps.LatLng(37.4493414, 126.9137437), new kakao.maps.LatLng(37.50276353, 126.923345), new kakao.maps.LatLng(37.5453891, 126.979489),
                new kakao.maps.LatLng(37.550537, 127.097916), new kakao.maps.LatLng(37.4493617, 126.9129628), new kakao.maps.LatLng(37.50182929, 126.9578814), new kakao.maps.LatLng(37.5463224, 126.9810267),
                new kakao.maps.LatLng(37.53132, 127.060592), new kakao.maps.LatLng(37.4491839, 126.9132155), new kakao.maps.LatLng(37.49487529, 126.9526684), new kakao.maps.LatLng(37.5463224, 126.9810267),
                new kakao.maps.LatLng(37.531885, 127.074277), new kakao.maps.LatLng(37.4799592, 126.9061199), new kakao.maps.LatLng(37.50061292, 126.9248853), new kakao.maps.LatLng(37.5473619, 126.9768231),
                new kakao.maps.LatLng(37.548548, 127.101801), new kakao.maps.LatLng(37.4573879, 126.8865496), new kakao.maps.LatLng(37.50285901, 126.9653819), new kakao.maps.LatLng(37.5385513, 126.9654268),
                new kakao.maps.LatLng(37.547178, 127.101926), new kakao.maps.LatLng(37.4721652, 126.8992835), new kakao.maps.LatLng(37.50321223, 126.9654429), new kakao.maps.LatLng(37.5385513, 126.9654268),
                new kakao.maps.LatLng(37.537571, 127.070576), new kakao.maps.LatLng(37.4496304, 126.9146113), new kakao.maps.LatLng(37.5033096, 126.9656532), new kakao.maps.LatLng(37.5385513, 126.9654268),
                new kakao.maps.LatLng(37.537571, 127.070576), new kakao.maps.LatLng(37.4592002, 126.9065618), new kakao.maps.LatLng(37.50583791, 126.9647812), new kakao.maps.LatLng(37.5385513, 126.9654268),
                new kakao.maps.LatLng(37.537571, 127.070576), new kakao.maps.LatLng(37.4463697, 126.9064648), new kakao.maps.LatLng(37.50629071, 126.9702172), new kakao.maps.LatLng(37.5385513, 126.9654268),
                new kakao.maps.LatLng(37.540352, 127.069441), new kakao.maps.LatLng(37.4463697, 126.9064648), new kakao.maps.LatLng(37.50704908, 126.9608628), new kakao.maps.LatLng(37.5385513, 126.9654268),
                new kakao.maps.LatLng(37.538998, 127.071216), new kakao.maps.LatLng(37.4564039, 126.8956186), new kakao.maps.LatLng(37.50704908, 126.9608628), new kakao.maps.LatLng(37.5385513, 126.9654268),
                new kakao.maps.LatLng(37.53505, 127.094687), new kakao.maps.LatLng(37.453037, 126.9032852), new kakao.maps.LatLng(37.50704908, 126.9608628), new kakao.maps.LatLng(37.5385513, 126.9654268),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4448642, 126.90534), new kakao.maps.LatLng(37.5047832, 126.9537943), new kakao.maps.LatLng(37.5385513, 126.9654268),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4702207, 126.8970524), new kakao.maps.LatLng(37.50952132, 126.9605177), new kakao.maps.LatLng(37.5372419, 126.9676267),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4496304, 126.9146113), new kakao.maps.LatLng(37.49279983, 126.914906), new kakao.maps.LatLng(37.5372099, 126.9676133),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4673157, 126.907999), new kakao.maps.LatLng(37.48260068, 126.965086), new kakao.maps.LatLng(37.5372099, 126.9676133),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4696965, 126.9068573), new kakao.maps.LatLng(37.5082938, 126.9651329), new kakao.maps.LatLng(37.5395577, 126.9612058),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4736526, 126.9022841), new kakao.maps.LatLng(37.48280607, 126.9649638), new kakao.maps.LatLng(37.5409685, 126.9595642),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4571067, 126.8959298), new kakao.maps.LatLng(37.50890703, 126.9329751), new kakao.maps.LatLng(37.5351219, 126.9716691),
                new kakao.maps.LatLng(37.565085, 127.085778), new kakao.maps.LatLng(37.4567594, 126.8955048), new kakao.maps.LatLng(37.51129715, 126.9486722), new kakao.maps.LatLng(37.5324792, 126.9950548),
                new kakao.maps.LatLng(37.537, 127.072961), new kakao.maps.LatLng(37.4570651, 126.8960351), new kakao.maps.LatLng(37.48815083, 126.9648709), new kakao.maps.LatLng(37.5266943, 127.0002404),
                new kakao.maps.LatLng(37.537, 127.072961), new kakao.maps.LatLng(37.4570651, 126.8960352), new kakao.maps.LatLng(37.49585333, 126.9161464), new kakao.maps.LatLng(37.5290615, 126.996542),
                new kakao.maps.LatLng(37.540064, 127.097812), new kakao.maps.LatLng(37.4565094, 126.894827), new kakao.maps.LatLng(37.48898312, 126.9148425), new kakao.maps.LatLng(37.5290615, 126.996542),
                new kakao.maps.LatLng(37.537804, 127.072631), new kakao.maps.LatLng(37.4502117, 126.897776), new kakao.maps.LatLng(37.49411478, 126.9765109), new kakao.maps.LatLng(37.524645, 127.0000902),
                new kakao.maps.LatLng(37.537804, 127.072631), new kakao.maps.LatLng(37.4768907, 126.8917839), new kakao.maps.LatLng(37.51068269, 126.9611952), new kakao.maps.LatLng(37.524645, 127.0000902),
                new kakao.maps.LatLng(37.567108, 127.088452), new kakao.maps.LatLng(37.4600572, 126.8928436), new kakao.maps.LatLng(37.4819443, 126.9782332), new kakao.maps.LatLng(37.5324185, 126.963074),
                new kakao.maps.LatLng(37.541811, 127.098982), new kakao.maps.LatLng(37.4464032, 126.9038157), new kakao.maps.LatLng(37.50615977, 126.953358), new kakao.maps.LatLng(37.5382852, 126.9552615),
                new kakao.maps.LatLng(37.543161, 127.095607), new kakao.maps.LatLng(37.4685936, 126.8914521), new kakao.maps.LatLng(37.51004126, 126.9634943), new kakao.maps.LatLng(37.5382852, 126.9552615),
                new kakao.maps.LatLng(37.533225, 127.07045), new kakao.maps.LatLng(37.4636107, 126.8968128), new kakao.maps.LatLng(37.50924203, 126.9633601), new kakao.maps.LatLng(37.5382852, 126.9552615),
                new kakao.maps.LatLng(37.532686, 127.067879), new kakao.maps.LatLng(37.4539481, 126.8995158), new kakao.maps.LatLng(37.49351335, 126.9788405), new kakao.maps.LatLng(37.5389156, 126.9575712),
                new kakao.maps.LatLng(37.541811, 127.098982), new kakao.maps.LatLng(37.4481477, 126.9148544), new kakao.maps.LatLng(37.49450656, 126.9541926), new kakao.maps.LatLng(37.5339083, 126.9615456),
                new kakao.maps.LatLng(37.544426, 127.100198), new kakao.maps.LatLng(37.4629094, 126.8904251), new kakao.maps.LatLng(37.4841614, 126.9670506), new kakao.maps.LatLng(37.5393233, 126.9557766),
                new kakao.maps.LatLng(37.543358, 127.101745), new kakao.maps.LatLng(37.4696049, 126.9063183), new kakao.maps.LatLng(37.48563674, 126.9670463), new kakao.maps.LatLng(37.5246635, 126.9777412),
                new kakao.maps.LatLng(37.535726, 127.095692), new kakao.maps.LatLng(37.4776442, 126.9104517), new kakao.maps.LatLng(37.48871727, 126.9621591), new kakao.maps.LatLng(37.5246635, 126.9777412),
                new kakao.maps.LatLng(37.537095, 127.092291), new kakao.maps.LatLng(37.4651475, 126.8944278), new kakao.maps.LatLng(37.48093917, 126.9716387), new kakao.maps.LatLng(37.5246635, 126.9777412),
                new kakao.maps.LatLng(37.537, 127.072961), new kakao.maps.LatLng(37.4651475, 126.8944278), new kakao.maps.LatLng(37.48329301, 126.9714456), new kakao.maps.LatLng(37.5246635, 126.9777271),
                new kakao.maps.LatLng(37.537, 127.072961), new kakao.maps.LatLng(37.4528831, 126.898681), new kakao.maps.LatLng(37.47949539, 126.9701389), new kakao.maps.LatLng(37.5246635, 126.9777271),
                new kakao.maps.LatLng(37.537, 127.072961), new kakao.maps.LatLng(37.451009, 126.8987062), new kakao.maps.LatLng(37.48586114, 126.9745415), new kakao.maps.LatLng(37.5246635, 126.9777271),
                new kakao.maps.LatLng(37.537, 127.072961), new kakao.maps.LatLng(37.456165, 126.8977936), new kakao.maps.LatLng(37.48636537, 126.9730398), new kakao.maps.LatLng(37.5246635, 126.9777412),
                new kakao.maps.LatLng(37.537397, 127.097622), new kakao.maps.LatLng(37.4534338, 126.8979479), new kakao.maps.LatLng(37.48662464, 126.9720577), new kakao.maps.LatLng(37.5246635, 126.9777271),
                new kakao.maps.LatLng(37.538728, 127.082014), new kakao.maps.LatLng(37.4520281, 126.9019868), new kakao.maps.LatLng(37.48982881, 126.9728803), new kakao.maps.LatLng(37.521174, 126.980938),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4552952, 126.8999074), new kakao.maps.LatLng(37.4891759, 126.9704517), new kakao.maps.LatLng(37.521174, 126.980938),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4700326, 126.896677), new kakao.maps.LatLng(37.49096018, 126.9716044), new kakao.maps.LatLng(37.5197774, 126.9911719),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4579225, 126.8877921), new kakao.maps.LatLng(37.50466298, 126.9728704), new kakao.maps.LatLng(37.5243749, 126.9671352),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.466064, 126.8997574), new kakao.maps.LatLng(37.48807183, 126.9822794), new kakao.maps.LatLng(37.5204982, 126.9910848),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4763858, 126.9072184), new kakao.maps.LatLng(37.50579068, 126.9684312), new kakao.maps.LatLng(37.5204423, 126.9946495),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.475149, 126.9031776), new kakao.maps.LatLng(37.50704908, 126.9608628), new kakao.maps.LatLng(37.5242755, 126.970731),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4673157, 126.9017602), new kakao.maps.LatLng(37.50455734, 126.9569374), new kakao.maps.LatLng(37.5242755, 126.970731),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4761052, 126.910635), new kakao.maps.LatLng(37.50034631, 126.9446175), new kakao.maps.LatLng(37.524132, 126.9803741),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.475019, 126.8995797), new kakao.maps.LatLng(37.51087112, 126.9267299), new kakao.maps.LatLng(37.5214444, 126.9921325),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4636746, 126.8841437), new kakao.maps.LatLng(37.50034624, 126.9372712), new kakao.maps.LatLng(37.5207028, 126.9949988),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4601486, 126.8860883), new kakao.maps.LatLng(37.50992616, 126.9538533), new kakao.maps.LatLng(37.5390222, 126.9958631),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4647017, 126.8884632), new kakao.maps.LatLng(37.50827279, 126.9672592), new kakao.maps.LatLng(37.5390222, 126.9958631),
                new kakao.maps.LatLng(37.54368, 127.104379), new kakao.maps.LatLng(37.4749024, 126.9063962), new kakao.maps.LatLng(37.50896791, 126.9656483), new kakao.maps.LatLng(37.544262, 126.9851493),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4673296, 126.8940381), new kakao.maps.LatLng(37.48542802, 126.9717467), new kakao.maps.LatLng(37.5460443, 126.9855627),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4565207, 126.8880292), new kakao.maps.LatLng(37.48880895, 126.9653062), new kakao.maps.LatLng(37.5460443, 126.9855627),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4672435, 126.894627), new kakao.maps.LatLng(37.48079728, 126.9710061), new kakao.maps.LatLng(37.5456881, 126.984274),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4516619, 126.9164432), new kakao.maps.LatLng(37.4847139, 126.9696122), new kakao.maps.LatLng(37.5426751, 126.984496),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4476688, 126.9084522), new kakao.maps.LatLng(37.49655671, 126.9818281), new kakao.maps.LatLng(37.5426751, 126.984496),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4512751, 126.9163544), new kakao.maps.LatLng(37.48443875, 126.980928), new kakao.maps.LatLng(37.5206868, 126.9625965),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4507507, 126.9157821), new kakao.maps.LatLng(37.49313816, 126.9768685), new kakao.maps.LatLng(37.5324844, 126.9963931),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4534785, 126.899616), new kakao.maps.LatLng(37.49440736, 126.980048), new kakao.maps.LatLng(37.5359977, 126.9664454),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4754668, 126.9084951), new kakao.maps.LatLng(37.50283956, 126.9782351), new kakao.maps.LatLng(37.5359977, 126.9664454),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4754191, 126.9079017), new kakao.maps.LatLng(37.50304264, 126.9802849), new kakao.maps.LatLng(37.5326545, 126.9502678),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.469302, 126.9030463), new kakao.maps.LatLng(37.48472776, 126.9709984), new kakao.maps.LatLng(37.5341025, 126.9542291),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4494156, 126.898306), new kakao.maps.LatLng(37.48340301, 126.9742588), new kakao.maps.LatLng(37.5341025, 126.9542291),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4492867, 126.8982353), new kakao.maps.LatLng(37.48523896, 126.9816266), new kakao.maps.LatLng(37.5341025, 126.9542291),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4602986, 126.9120211), new kakao.maps.LatLng(37.47751057, 126.9816935), new kakao.maps.LatLng(37.5352881, 126.955209),
                new kakao.maps.LatLng(37.537823, 127.09622), new kakao.maps.LatLng(37.4527397, 126.9172932), new kakao.maps.LatLng(37.47639404, 126.9736386), new kakao.maps.LatLng(37.5360588, 126.9649883),
                new kakao.maps.LatLng(37.537993, 127.091984), new kakao.maps.LatLng(37.4737499, 126.8979655), new kakao.maps.LatLng(37.48034725, 126.9791421), new kakao.maps.LatLng(37.5383109, 126.962951),
                new kakao.maps.LatLng(37.534538, 127.094184), new kakao.maps.LatLng(37.4778457, 126.8805448), new kakao.maps.LatLng(37.48300849, 126.9788203), new kakao.maps.LatLng(37.541126, 126.9675322),
                new kakao.maps.LatLng(37.544297, 127.085239), new kakao.maps.LatLng(37.4781634, 126.8963315), new kakao.maps.LatLng(37.51094382, 126.932893), new kakao.maps.LatLng(37.541126, 126.9675322),
                new kakao.maps.LatLng(37.538728, 127.082014), new kakao.maps.LatLng(37.4473949, 126.9161766), new kakao.maps.LatLng(37.49549482, 126.9286221), new kakao.maps.LatLng(37.541126, 126.9675312),
                new kakao.maps.LatLng(37.550182, 127.070651), new kakao.maps.LatLng(37.4415834, 126.9079017), new kakao.maps.LatLng(37.50750191, 126.9284764), new kakao.maps.LatLng(37.5401662, 126.9700719),
                new kakao.maps.LatLng(37.569068, 127.085829), new kakao.maps.LatLng(37.4700706, 126.8985222), new kakao.maps.LatLng(37.50440169, 126.9270959), new kakao.maps.LatLng(37.5401662, 126.9700719),
                new kakao.maps.LatLng(37.550291, 127.104706), new kakao.maps.LatLng(37.4548005, 126.9122591), new kakao.maps.LatLng(37.50982656, 126.9573415), new kakao.maps.LatLng(37.5401662, 126.9700719),
                new kakao.maps.LatLng(37.540977, 127.092024), new kakao.maps.LatLng(37.4747791, 126.8961869), new kakao.maps.LatLng(37.50822985, 126.9336408), new kakao.maps.LatLng(37.5427169, 126.9663628),
                new kakao.maps.LatLng(37.553122, 127.092383), new kakao.maps.LatLng(37.4649433, 126.8996491), new kakao.maps.LatLng(37.4937704, 126.9608619), new kakao.maps.LatLng(37.5427169, 126.9663628),
                new kakao.maps.LatLng(37.538364, 127.070921), new kakao.maps.LatLng(37.4668824, 126.8905104), new kakao.maps.LatLng(37.47642976, 126.9763672), new kakao.maps.LatLng(37.5427169, 126.9663628),
                new kakao.maps.LatLng(37.527713, 127.078979), new kakao.maps.LatLng(37.46672, 126.9088178), new kakao.maps.LatLng(37.47701921, 126.9798395), new kakao.maps.LatLng(37.5427169, 126.9663628),
                new kakao.maps.LatLng(37.549591, 127.081574), new kakao.maps.LatLng(37.4469171, 126.8989408), new kakao.maps.LatLng(37.50576005, 126.933371), new kakao.maps.LatLng(37.5230392, 126.9611214),
                new kakao.maps.LatLng(37.545999, 127.106822), new kakao.maps.LatLng(37.4743273, 126.8989408), new kakao.maps.LatLng(37.50412059, 126.939073), new kakao.maps.LatLng(37.520931, 126.9665039),
                new kakao.maps.LatLng(37.567897, 127.085002), new kakao.maps.LatLng(37.4468171, 126.9047685), new kakao.maps.LatLng(37.49241456, 126.9153994), new kakao.maps.LatLng(37.520931, 126.9665251),
                new kakao.maps.LatLng(37.542543, 127.073727), new kakao.maps.LatLng(37.4545343, 126.9044213), new kakao.maps.LatLng(37.50329884, 126.9401984), new kakao.maps.LatLng(37.520931, 126.9665251),
                new kakao.maps.LatLng(37.563506, 127.090716), new kakao.maps.LatLng(37.4593466, 126.9093512), new kakao.maps.LatLng(37.48761997, 126.9687423), new kakao.maps.LatLng(37.520931, 126.9665251),
                new kakao.maps.LatLng(37.563506, 127.090716), new kakao.maps.LatLng(37.4592818, 126.9085434), new kakao.maps.LatLng(37.49530662, 126.9768866), new kakao.maps.LatLng(37.5221203, 126.9693836),
                new kakao.maps.LatLng(37.563506, 127.090716), new kakao.maps.LatLng(37.4587448, 126.8883921), new kakao.maps.LatLng(37.49376909, 126.9448983), new kakao.maps.LatLng(37.5215832, 126.9703451),
                new kakao.maps.LatLng(37.545999, 127.106822), new kakao.maps.LatLng(37.4580873, 126.888316), new kakao.maps.LatLng(37.4947185, 126.9167674), new kakao.maps.LatLng(37.5207592, 126.9717021),
                new kakao.maps.LatLng(37.543251, 127.086971), new kakao.maps.LatLng(37.4754941, 126.90926), new kakao.maps.LatLng(37.49868185, 126.9252542), new kakao.maps.LatLng(37.5178481, 126.9729615),
                new kakao.maps.LatLng(37.536989, 127.07974), new kakao.maps.LatLng(37.4790602, 126.9041674), new kakao.maps.LatLng(37.49048684, 126.9609285), new kakao.maps.LatLng(37.520194, 126.9756071),
                new kakao.maps.LatLng(37.531059, 127.089638), new kakao.maps.LatLng(37.4719923, 126.9082145), new kakao.maps.LatLng(37.49555386, 126.9216237), new kakao.maps.LatLng(37.520194, 126.9756071),
                new kakao.maps.LatLng(37.550116, 127.087511), new kakao.maps.LatLng(37.4667258, 126.8940775), new kakao.maps.LatLng(37.4949427, 126.91341), new kakao.maps.LatLng(37.5185268, 126.9806796),
                new kakao.maps.LatLng(37.566074, 127.080195), new kakao.maps.LatLng(37.4765457, 126.8929104), new kakao.maps.LatLng(37.47863602, 126.971945), new kakao.maps.LatLng(37.5191397, 126.9890968),
                new kakao.maps.LatLng(37.552774, 127.074334), new kakao.maps.LatLng(37.4741329, 126.8953187), new kakao.maps.LatLng(37.50282103, 126.9307402), new kakao.maps.LatLng(37.5262428, 126.9546466),
                new kakao.maps.LatLng(37.530245, 127.075588), new kakao.maps.LatLng(37.4552427, 126.9038324), new kakao.maps.LatLng(37.49378905, 126.9173202), new kakao.maps.LatLng(37.5300135, 126.9534094),
                new kakao.maps.LatLng(37.531338, 127.083207), new kakao.maps.LatLng(37.4532814, 126.9029185), new kakao.maps.LatLng(37.49472571, 126.9167719), new kakao.maps.LatLng(37.5250472, 126.9551678),
                new kakao.maps.LatLng(37.549814, 127.086793), new kakao.maps.LatLng(37.4496304, 126.9146113), new kakao.maps.LatLng(37.49368151, 126.9197682), new kakao.maps.LatLng(37.5231767, 126.9582348),
                new kakao.maps.LatLng(37.529381, 127.085181), new kakao.maps.LatLng(37.4501255, 126.9165229), new kakao.maps.LatLng(37.49283213, 126.9198588), new kakao.maps.LatLng(37.5194588, 126.9705367),
                new kakao.maps.LatLng(37.541408, 127.101523), new kakao.maps.LatLng(37.4456365, 126.902463), new kakao.maps.LatLng(37.49283213, 126.9198588), new kakao.maps.LatLng(37.5211849, 126.9758922),
                new kakao.maps.LatLng(37.530543, 127.085763), new kakao.maps.LatLng(37.4400388, 126.9054129), new kakao.maps.LatLng(37.49656519, 126.9188195), new kakao.maps.LatLng(37.5211816, 126.9732987),
                new kakao.maps.LatLng(37.542543, 127.073727), new kakao.maps.LatLng(37.458779, 126.9057712), new kakao.maps.LatLng(37.49892376, 126.9259556), new kakao.maps.LatLng(37.5211816, 126.9732987),
                new kakao.maps.LatLng(37.552774, 127.074334), new kakao.maps.LatLng(37.4483589, 126.9091045), new kakao.maps.LatLng(37.48645323, 126.9055657), new kakao.maps.LatLng(37.5211816, 126.9732349),
                new kakao.maps.LatLng(37.55343, 127.099083), new kakao.maps.LatLng(37.4521869, 126.9079462), new kakao.maps.LatLng(37.48738662, 126.906524), new kakao.maps.LatLng(37.5211816, 126.9732349),
                new kakao.maps.LatLng(37.547586, 127.091412), new kakao.maps.LatLng(37.4522135, 126.9182476), new kakao.maps.LatLng(37.49405375, 126.9135156), new kakao.maps.LatLng(37.5221902, 126.9735971),
                new kakao.maps.LatLng(37.543007, 127.080313), new kakao.maps.LatLng(37.4490083, 126.9165242), new kakao.maps.LatLng(37.49004858, 126.9082422), new kakao.maps.LatLng(37.5177911, 126.9707655),
                new kakao.maps.LatLng(37.540947, 127.100679), new kakao.maps.LatLng(37.4494592, 126.9170651), new kakao.maps.LatLng(37.49409265, 126.9116934), new kakao.maps.LatLng(37.5176813, 126.9757149),
                new kakao.maps.LatLng(37.540505, 127.101451), new kakao.maps.LatLng(37.4494856, 126.916144), new kakao.maps.LatLng(37.49226762, 126.9116092), new kakao.maps.LatLng(37.519235, 126.9770742),
                new kakao.maps.LatLng(37.566108, 127.088981), new kakao.maps.LatLng(37.4499716, 126.9154314), new kakao.maps.LatLng(37.50046809, 126.9372734), new kakao.maps.LatLng(37.5199827, 126.9786768),
                new kakao.maps.LatLng(37.54282, 127.079228), new kakao.maps.LatLng(37.4628877, 126.9091517), new kakao.maps.LatLng(37.5005907, 126.9378087), new kakao.maps.LatLng(37.5342946, 126.9943892),
                new kakao.maps.LatLng(37.558255, 127.084374), new kakao.maps.LatLng(37.4446823, 126.9010743), new kakao.maps.LatLng(37.49916354, 126.9313723), new kakao.maps.LatLng(37.5343325, 126.9957857),
                new kakao.maps.LatLng(37.565242, 127.082695), new kakao.maps.LatLng(37.4457887, 126.9054711), new kakao.maps.LatLng(37.50407056, 126.9331921), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.542543, 127.073727), new kakao.maps.LatLng(37.4797052, 126.9040445), new kakao.maps.LatLng(37.5020932, 126.9423206), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.537249, 127.091671), new kakao.maps.LatLng(37.4573678, 126.8876938), new kakao.maps.LatLng(37.50421279, 126.9407262), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.550085, 127.087765), new kakao.maps.LatLng(37.4681065, 126.89857), new kakao.maps.LatLng(37.50395166, 126.9387456), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.563648, 127.089139), new kakao.maps.LatLng(37.4595224, 126.8875003), new kakao.maps.LatLng(37.50517438, 126.941877), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.533519, 127.063395), new kakao.maps.LatLng(37.4525864, 126.9107337), new kakao.maps.LatLng(37.50541787, 126.9423201), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.534829, 127.069452), new kakao.maps.LatLng(37.4574428, 126.8874355), new kakao.maps.LatLng(37.50271592, 126.9408248), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.534705, 127.072121), new kakao.maps.LatLng(37.4697631, 126.8917021), new kakao.maps.LatLng(37.50288412, 126.947875), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.542476, 127.0874), new kakao.maps.LatLng(37.4513849, 126.9137458), new kakao.maps.LatLng(37.50511563, 126.9514732), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.533158, 127.089482), new kakao.maps.LatLng(37.4525342, 126.9143516), new kakao.maps.LatLng(37.4956872, 126.9504621), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.544379, 127.07113), new kakao.maps.LatLng(37.4715643, 126.9047875), new kakao.maps.LatLng(37.49635871, 126.9535677), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.544272, 127.098308), new kakao.maps.LatLng(37.4781975, 126.9070356), new kakao.maps.LatLng(37.49635468, 126.9572225), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.534791, 127.072711), new kakao.maps.LatLng(37.4510825, 126.9141576), new kakao.maps.LatLng(37.48763693, 126.9134866), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.544825, 127.082777), new kakao.maps.LatLng(37.4557247, 126.9006212), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.544825, 127.082777), new kakao.maps.LatLng(37.46002, 126.8972), new kakao.maps.LatLng(37.5335608, 126.9776736),
                new kakao.maps.LatLng(37.531956, 127.071557), new kakao.maps.LatLng(37.4569445, 126.8941771), new kakao.maps.LatLng(37.539167, 126.9975),
                new kakao.maps.LatLng(37.531956, 127.071557), new kakao.maps.LatLng(37.5389612, 127.0020774),
                new kakao.maps.LatLng(37.531956, 127.071557), new kakao.maps.LatLng(37.5397244, 127.001525),
                new kakao.maps.LatLng(37.531956, 127.071557), new kakao.maps.LatLng(37.5418321, 127.000913),
                new kakao.maps.LatLng(37.531956, 127.071557), new kakao.maps.LatLng(37.5418321, 127.000913),
                new kakao.maps.LatLng(37.538728, 127.082014), new kakao.maps.LatLng(37.5418321, 127.000913),
                new kakao.maps.LatLng(37.555291, 127.110709), new kakao.maps.LatLng(37.5362151, 126.9777629),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5362151, 126.9777629),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5362151, 126.9777629),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5407125, 127.0026581),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5407125, 127.0026581),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5345468, 126.994579),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.539167, 126.9975),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5350477, 126.9928268),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5338564, 126.9987124),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5450249, 126.9597415),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5450249, 126.9597415),
                new kakao.maps.LatLng(37.536311, 127.074359), new kakao.maps.LatLng(37.5301451, 126.9949096),
                new kakao.maps.LatLng(37.544825, 127.082777), new kakao.maps.LatLng(37.5262782, 127.0001476),
                new kakao.maps.LatLng(37.551677, 127.07699), new kakao.maps.LatLng(37.5328975, 126.9623382),
                new kakao.maps.LatLng(37.559464, 127.087165), new kakao.maps.LatLng(37.5431703, 126.9699957),
                new kakao.maps.LatLng(37.566948, 127.086645), new kakao.maps.LatLng(37.5431703, 126.9699733),
                new kakao.maps.LatLng(37.556688, 127.084841), new kakao.maps.LatLng(37.5431703, 126.9699957),
                new kakao.maps.LatLng(37.541133, 127.097002), new kakao.maps.LatLng(37.5440531, 126.97089),
                new kakao.maps.LatLng(37.532974, 127.075374), new kakao.maps.LatLng(37.5529135, 126.9679547),
                new kakao.maps.LatLng(37.539453, 127.066775), new kakao.maps.LatLng(37.5529135, 126.9679547),
                new kakao.maps.LatLng(37.539241, 127.066939), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.540263, 127.065111), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.536511, 127.096481), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.53791, 127.070536), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.551074, 127.110614), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.534096, 127.06626), new kakao.maps.LatLng(37.5328642, 126.9596117),
                new kakao.maps.LatLng(37.5461, 127.107054), new kakao.maps.LatLng(37.5328642, 126.9596117),
                new kakao.maps.LatLng(37.548963, 127.096501), new kakao.maps.LatLng(37.5315964, 126.9642116),
                new kakao.maps.LatLng(37.568808, 127.080137), new kakao.maps.LatLng(37.5321691, 126.9608859),
                new kakao.maps.LatLng(37.534497, 127.082394), new kakao.maps.LatLng(37.5321691, 126.9608859),
                new kakao.maps.LatLng(37.546538, 127.071318), new kakao.maps.LatLng(37.5321691, 126.9608859),
                new kakao.maps.LatLng(37.56391, 127.081304), new kakao.maps.LatLng(37.5321691, 126.9608859),
                new kakao.maps.LatLng(37.534441, 127.079267), new kakao.maps.LatLng(37.5321691, 126.9608859),
                new kakao.maps.LatLng(37.544456, 127.103317), new kakao.maps.LatLng(37.5434918, 126.969688),
                new kakao.maps.LatLng(37.536636, 127.076939), new kakao.maps.LatLng(37.5463644, 126.9648311),
                new kakao.maps.LatLng(37.546538, 127.071318), new kakao.maps.LatLng(37.5463644, 126.9648311),
                new kakao.maps.LatLng(37.537571, 127.070576), new kakao.maps.LatLng(37.5454353, 126.9698684),
                new kakao.maps.LatLng(37.567778, 127.084803), new kakao.maps.LatLng(37.5519931, 126.9676747),
                new kakao.maps.LatLng(37.567778, 127.084803), new kakao.maps.LatLng(37.5538955, 126.9675303),
                new kakao.maps.LatLng(37.545277, 127.103684), new kakao.maps.LatLng(37.5321901, 126.9714032),
                new kakao.maps.LatLng(37.554251, 127.08635), new kakao.maps.LatLng(37.5340794, 126.9715034),
                new kakao.maps.LatLng(37.556731, 127.080536), new kakao.maps.LatLng(37.5340794, 126.9715065),
                new kakao.maps.LatLng(37.556731, 127.080536), new kakao.maps.LatLng(37.5340794, 126.9715065),
                new kakao.maps.LatLng(37.565526, 127.084072), new kakao.maps.LatLng(37.5360751, 126.9747042),
                new kakao.maps.LatLng(37.528761, 127.078858), new kakao.maps.LatLng(37.5409986, 126.972551),
                new kakao.maps.LatLng(37.528761, 127.078858), new kakao.maps.LatLng(37.5228767, 126.9628816),
                new kakao.maps.LatLng(37.528801, 127.084388), new kakao.maps.LatLng(37.5478999, 126.971485),
                new kakao.maps.LatLng(37.533832, 127.072903), new kakao.maps.LatLng(37.5478999, 126.971485),
                new kakao.maps.LatLng(37.534096, 127.06626), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.560667, 127.080051), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.56015, 127.081476), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.5591, 127.089434), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.542492, 127.085666), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.547227, 127.089906), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.537993, 127.091984), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.546882, 127.103012), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.542543, 127.073727), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.542543, 127.073727), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.542129, 127.073708), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.542543, 127.073727), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.542543, 127.073727), new kakao.maps.LatLng(37.5490645, 126.9704658),
                new kakao.maps.LatLng(37.539015, 127.09772), new kakao.maps.LatLng(37.5296818, 126.9687568),
                new kakao.maps.LatLng(37.538918, 127.097678), new kakao.maps.LatLng(37.534363, 126.9733461),
                new kakao.maps.LatLng(37.538728, 127.082014), new kakao.maps.LatLng(37.534363, 126.9733461),
                new kakao.maps.LatLng(37.538728, 127.082014), new kakao.maps.LatLng(37.5454722, 126.9722307),
                new kakao.maps.LatLng(37.538364, 127.070921), new kakao.maps.LatLng(37.5530656, 126.9727965),
                new kakao.maps.LatLng(37.531587, 127.066719), new kakao.maps.LatLng(37.550066, 126.9728466),
                new kakao.maps.LatLng(37.5392, 127.071343), new kakao.maps.LatLng(37.5252255, 126.9651087),
                new kakao.maps.LatLng(37.539225, 127.070899), new kakao.maps.LatLng(37.5264569, 126.9639252),
                new kakao.maps.LatLng(37.546309, 127.106257), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.546309, 127.106257), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.54619, 127.084507), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.548714, 127.083141), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.550694, 127.08634), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.54911, 127.076553), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.551772, 127.074439), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.549548, 127.07513), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.549567, 127.073806), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.550225, 127.073263), new kakao.maps.LatLng(37.5288539, 126.9640447),
                new kakao.maps.LatLng(37.549108, 127.073602), new kakao.maps.LatLng(37.528984, 126.969499),
                new kakao.maps.LatLng(37.551909, 127.074069), new kakao.maps.LatLng(37.5309794, 126.9722955),
                new kakao.maps.LatLng(37.550876, 127.101343), new kakao.maps.LatLng(37.5314944, 126.9691452),
                new kakao.maps.LatLng(37.547873, 127.074551), new kakao.maps.LatLng(37.5352899, 126.9720729),
                new kakao.maps.LatLng(37.540659, 127.071412), new kakao.maps.LatLng(37.5352899, 126.9720729),
                new kakao.maps.LatLng(37.540659, 127.071412), new kakao.maps.LatLng(37.5408457, 126.9717579),
                new kakao.maps.LatLng(37.536634, 127.07692), new kakao.maps.LatLng(37.5415379, 126.9712366),
                new kakao.maps.LatLng(37.528826, 127.084737), new kakao.maps.LatLng(37.5400327, 127.00485),
                new kakao.maps.LatLng(37.535186, 127.063636), new kakao.maps.LatLng(37.5400327, 127.00485),
                new kakao.maps.LatLng(37.563721, 127.082789), new kakao.maps.LatLng(37.5403439, 126.9926782),
                new kakao.maps.LatLng(37.56015, 127.081476), new kakao.maps.LatLng(37.538911, 126.990534),
                new kakao.maps.LatLng(37.568808, 127.080137), new kakao.maps.LatLng(37.5418503, 126.9901255),
                new kakao.maps.LatLng(37.56535, 127.087259), new kakao.maps.LatLng(37.5406238, 126.9613359),
                new kakao.maps.LatLng(37.535726, 127.095692), new kakao.maps.LatLng(37.5412123, 126.9629843),
                new kakao.maps.LatLng(37.535726, 127.095692), new kakao.maps.LatLng(37.541223, 126.9629843),
                new kakao.maps.LatLng(37.537397, 127.097622), new kakao.maps.LatLng(37.5424211, 126.9618156),
                /* 용산구 조금 */
                new kakao.maps.LatLng(37.5348569, 126.9508049),
                new kakao.maps.LatLng(37.5439234, 126.9610276),
                new kakao.maps.LatLng(37.5475544, 126.9640802),
                new kakao.maps.LatLng(37.5496855, 126.9641933),
                new kakao.maps.LatLng(37.5496855, 126.9641933),
                new kakao.maps.LatLng(37.5362134, 126.9516606),
                new kakao.maps.LatLng(37.5428439, 126.9601742),
                new kakao.maps.LatLng(37.5333398, 126.9520135),
                new kakao.maps.LatLng(37.5343171, 126.9515072),
                new kakao.maps.LatLng(37.5472836, 126.9615615),
                new kakao.maps.LatLng(37.5470826, 126.9616295),
                new kakao.maps.LatLng(37.5470826, 126.9616295),
                new kakao.maps.LatLng(37.548659, 126.9781385),
                new kakao.maps.LatLng(37.5489009, 126.9778726),
                new kakao.maps.LatLng(37.5491304, 126.9784762),
                new kakao.maps.LatLng(37.5496921, 126.9797707),
                new kakao.maps.LatLng(37.5484081, 126.981314),
                new kakao.maps.LatLng(37.5521425, 126.9744104),
                new kakao.maps.LatLng(37.5348569, 126.9508049),
                new kakao.maps.LatLng(37.5804836, 126.8899192)


                /*  new kakao.maps.LatLng(37.5783065,  126.8924767),
                 new kakao.maps.LatLng(37.580228,   126.8885118) */
            ];



            // hp 마커가 표시될 좌표 배열입니다
            var hpPositions = [
                new kakao.maps.LatLng(37.5812887, 126.9364294), /*의료법인동신의료재단 동신병원                                                       */
                new kakao.maps.LatLng(37.564089, 126.9389809), /* =학교법인연세대학교의과대학세브란스병원                                     */
                new kakao.maps.LatLng(37.4932234, 126.9244612), /*서울특별시보라매병원                                                       		*/
                new kakao.maps.LatLng(37.5069754, 126.9605231), /*중앙대학교병원                                                         		    */
                new kakao.maps.LatLng(37.4838317, 126.9329868), /*에이치플러스 양지병원                                                      		*/
                new kakao.maps.LatLng(37.4854731, 126.9567663), /*강남고려병원                                                           			*/
                new kakao.maps.LatLng(37.56881, 126.9651239), /*서울적십자병원                                                          			*/
                new kakao.maps.LatLng(37.5688719, 126.9680775), /*강북삼성병원                                                           			*/
                new kakao.maps.LatLng(37.5787974, 127.0010352), /*서울대학교병원                                                     			*/
                new kakao.maps.LatLng(37.5751167, 126.9574713), /*세란병원                                                                     			*/
                new kakao.maps.LatLng(37.5339355, 127.0043336), /*순천향대학교 부속 서울병원                                                   		*/
                new kakao.maps.LatLng(37.5870127, 127.0268837), /*학교법인 고려중앙학원 고려대학교의과대학부속병원(안암병원)   	*/
                new kakao.maps.LatLng(37.5361, 127.1353505), /*성심의료재단강동성심병원                    						*/
                new kakao.maps.LatLng(37.5534841, 127.1576468), /*강동경희대학교의대병원                                                      		*/
                new kakao.maps.LatLng(37.528778, 127.1476066), /*한국보훈복지의료공단 중앙보훈병원                                               	*/
                new kakao.maps.LatLng(37.613036, 127.0984134), /*서울특별시서울의료원                                                       		*/
                new kakao.maps.LatLng(37.5835002, 127.0861511), /*녹색병원                                                             				*/
                new kakao.maps.LatLng(37.6007867, 127.109078), /*의료법인풍산의료재단동부제일병원                                                 	*/
                new kakao.maps.LatLng(37.5003974, 127.0066599), /*학교법인가톨릭학원가톨릭대학교서울성모병원                                  	*/
                new kakao.maps.LatLng(37.6485082, 127.0631429), /*인제대학교 상계백병원                                             			*/
                new kakao.maps.LatLng(37.6287791, 127.082652), /*한국원자력의학원원자력병원                                    			*/
                new kakao.maps.LatLng(37.636417, 127.069959), /*을지대학교 을지병원                                              			*/
                new kakao.maps.LatLng(37.6220821, 126.9137086), /*의료법인 청구성심병원                              					*/
                new kakao.maps.LatLng(37.4922173, 126.8849478), /*고려대학교의과대학부속구로병원            						*/
                new kakao.maps.LatLng(37.5077034, 126.8582508), /*구로성심병원                                         					*/
                new kakao.maps.LatLng(37.5617209, 126.9993266), /*의료법인 제일의료재단 제일병원               					*/
                new kakao.maps.LatLng(37.5672536, 127.0056623), /*국립중앙의료원                                      					*/
                new kakao.maps.LatLng(37.5653509, 126.9909402), /*인제대학교 서울백병원                            					*/
                new kakao.maps.LatLng(37.6353804, 127.0226767), /*의료법인성화의료재단대한병원                					*/
                new kakao.maps.LatLng(37.4927454, 127.0463152), /*연세대학교의과대학 강남세브란스병원      					*/
                new kakao.maps.LatLng(37.5068459, 127.0334471), /*차의과학대학교 강남차병원                      					*/
                new kakao.maps.LatLng(37.4881568, 127.0855952), /*삼성서울병원                                         					*/
                new kakao.maps.LatLng(37.4556417, 126.9005666), /*희명병원                                               					*/
                new kakao.maps.LatLng(37.6500586, 127.0262078), /*의료법인한전의료재단 한일병원                					*/
                new kakao.maps.LatLng(37.5622917, 127.0468607), /*한양대학교병원                                    						*/
                new kakao.maps.LatLng(37.5841451, 127.0498231), /*서울성심병원                                       						*/
                new kakao.maps.LatLng(37.579203, 127.0434762), /*가톨릭대학교성바오로병원                     						*/
                new kakao.maps.LatLng(37.5953632, 127.0527612), /*경희대학교병원                                       					*/
                new kakao.maps.LatLng(37.575312, 127.03151), /*서울특별시 동부병원                             						*/
                new kakao.maps.LatLng(37.5892778, 127.0645418), /*삼육서울병원                                          					*/
                new kakao.maps.LatLng(37.5613129, 126.79761), /*우리들병원                                            					*/
                new kakao.maps.LatLng(37.556895, 126.850927), /*부민병원                                                					*/
                new kakao.maps.LatLng(37.5521496, 126.8359888), /*미즈메디병원                                          					*/
                new kakao.maps.LatLng(37.498017, 127.057186), /*재단법인베스티안재단베스티안서울병원      					*/
                new kakao.maps.LatLng(37.5448937, 127.0713093), /*건국대학교병원                                        					*/
                new kakao.maps.LatLng(37.53519, 127.0833838), /*혜민병원                                                 					*/
                new kakao.maps.LatLng(37.5284349, 126.8636189), /*홍익병원                                               					*/
                new kakao.maps.LatLng(37.5363794, 126.8864324), /*이화여자대학교의과대학부속목동병원        					*/
                new kakao.maps.LatLng(37.5178178, 126.9355584), /*가톨릭대학교 여의도성모병원                   					*/
                new kakao.maps.LatLng(37.5119571, 126.9223932), /*성애의료재단 성애병원                            					*/
                new kakao.maps.LatLng(37.492737, 126.908812), /*한림대학교 강남성심병원                           					*/
                new kakao.maps.LatLng(37.4939034, 126.8992293), /*명지성모병원                                          					*/
                new kakao.maps.LatLng(37.52315, 126.9096996), /*한림대학교 한강성심병원                          					*/
                new kakao.maps.LatLng(37.518791, 126.9038173), /*씨엠병원                                                					*/
                new kakao.maps.LatLng(37.4906332, 126.9071741), /*대림성모병원                                         					*/
                new kakao.maps.LatLng(37.526922, 127.108381), /*재단법인아산사회복지재단 서울아산병원  						*/
                new kakao.maps.LatLng(37.4963176, 127.1234353) /*경찰병원                                     							*/
            ];
            /* =============================================================================  */

            var content_list = [{
                'name': '김재욱',
                'img': 'img/portfolio/kim.jpg',
                'loc': '서울 동대문구 망우로 82 445',
                'tell': '010-1234-5678',
                'code': 'D1044'
            }];

            /* 	, {
                    'name': '김태리',
                    'img' : 'img/portfolio/taeri.jpg',
                    'loc' : '서울 동대문구 망우로 82 445',
                    'tell': '010-1234-5678',
                    'code': 'AE11441'
                }, {
                    'name': '류준열',
                    'img' : 'img/portfolio/joon.jpg',
                    'loc' : '서울 동대문구 망우로 82 445',
                    'tell': '010-1234-5678',
                    'code': 'AE11442'
                }, {
                    'name': '송강호',
                    'img' : 'img/portfolio/song.jpg',
                    'loc' : '서울 동대문구 망우로 82 445',
                    'tell': '010-1234-5678',
                    'code': 'AE11443'
                } */
            var order = 0;

            function getContentDataByOrder() {
                if (order >= content_list.length) {
                    order = 0;
                }
                var data = content_list[order];
                order += 1;
                return data;

            }
            /* 가드 신상 데이터 */
            function wrapInfoContent(position, data) {

                var encode_data = JSON.stringify(data);
                encode_data = window.btoa(encodeURIComponent(encode_data));

                return '<div class="wrap" id="' + position + '">' +
                    '    <div class="info">' +
                    '        <div class="title">' +
                    '            라이프 세이버(1급 의사) ' +
                    '            <div class="close" onclick="closeInfoOverlay(event, \'' + position + '\')" title="닫기"></div>' +
                    '        </div>' +
                    '        <div class="body">' +
                    '            <div class="/img">' +
                    '                <img src="' + data.img + '" width="73" height="70">' +
                    '           </div>' +
                    '            <div class="desc">' +
                    '                <div class="ellipsis">' + data.loc + '</div>' +
                    '                <div class="jibun ellipsis">(담당자 코드) ' + data.code + ' </div>' +
                    '                <div class="jibun ellipsis">(담당자 번호) ' + data.tell + ' </div>' +
                    '                <div><input type="button" value="담당자 정보" onclick="showPopup(\'' + encode_data + '\')" /> </div>' +
                    /*  <iframe href="sinsan.jsp"  width="500" height="300"aling="center"> */

                    '            </div>' +
                    '        </div>' +
                    '    </div>' +
                    '</div>';

                console.log(content_list);

            }

            function showPopup(data) {
                var post_data = JSON.parse(decodeURIComponent(window.atob(data)));
                submitInfo("sinsang.jsp", post_data.name, post_data.tell, post_data.code, post_data.img)
                    //window.open("sinsang.jsp", "a", "width=400, height=600, left=100, top=50");
                console.log(content_list[0]);
            }



            /* ===================================================================================== */
            /*  마커 위에 윈도우 키 생성(클릭 액션)*/
            var position =
                new kakao.maps.LatLng(37.5804836, 126.8899192);

            /*  마커 생성  */
            var marker = new kakao.maps. /* hp */ Marker({
                position: position,
                clickable: true, // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
                opacity: 0.1
            });
            marker.setClickable(true);

            marker.setMap(map);

            // 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
            var iwContent = '<div style="padding:5px;">AE0002 신상정보 </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

            var infowindow = new kakao.maps.InfoWindow({
                content: iwContent,
                removable: iwRemoveable
            });

            kakao.maps.event.addListener(marker, 'click', function() {
                // 마커 위에 인포윈도우를 표시합니다
                infowindow.open(map, marker);


            });
            /*==========================================================================================================*/


            //mp 마커가 표시될 좌표 배열입니다
            var mpPositions = []; //new kakao.maps.LatLng(37.6389443, 127.0647295) 
            var markerImageSrc = '/resources/img/category.png'; // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
            mpMarkers = [], // mp 마커 객체를 가지고 있을 배열입니다
                hpMarkers = [], // hp 마커 객체를 가지고 있을 배열입니다
                apMarkers = []; // ap 마커 객체를 가지고 있을 배열입니다



            creatempMarkers(); // mp 마커를 생성하고 mp 마커 배열에 추가합니다
            createhpMarkers(); // hp 마커를 생성하고 hp 마커 배열에 추가합니다
            createapMarkers(); // ap 마커를 생성하고 ap 마커 배열에 추가합니다
            changeMarker('ap'); // 지도에 mp 마커가 보이도록 설정합니다    

            // 마커이미지의 주소와, 크기, 옵션으로 마커 이미지를 생성하여 리턴하는 함수입니다
            function createMarkerImage(src, size, options) {
                var markerImage = new kakao.maps.MarkerImage(src, size, options);
                return markerImage;
            }
            // 좌표와 마커이미지를 받아 마커를 생성하여 리턴하는 함수입니다
            function createMarker(position, image) {
                var marker = new kakao.maps.Marker({
                    position: position,
                    image: image
                });
                kakao.maps.event.addListener(marker, 'click', function() {
                    eventAEDlistener(position)
                });
                return marker;
            }

            // 제세동기 마커 클릭 시 호출되는 함수
            function eventAEDlistener(position) {
                console.log("AED" + position);
            }

            // mp 마커를 생성하고 mp 마커 배열에 추가하는 함수입니다.
            // 신고자의 위치를 나타냅니다.
            function creatempMarkers() {
                for (var i = 0; i < mpPositions.length; i++) {

                    var imageSize = new kakao.maps.Size(22, 26), //써클 중앙에 mp마커 마킹
                        imageOptions = {
                            //써클에 마커올릴 컨테이너 포지션(default 10,0 / 36, 98)  
                            spriteOrigin: new kakao.maps.Point(10, 0),
                            spriteSize: new kakao.maps.Size(36, 98)
                        };
                    // 마커이미지와 마커를 생성합니다
                    var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),
                        marker = createMarker(mpPositions[i], markerImage);

                    mpMarkers.push(marker); // 생성된 마커를 mp 마커 배열에 추가합니다
                }
            }

            function setmpMarkers(map) { // mp 마커들의 지도 표시 여부를 설정하는 함수입니다
                for (var i = 0; i < mpMarkers.length; i++) {
                    mpMarkers[i].setMap(map);


                }
            }

            function createhpMarkers() {
                for (var i = 0; i < hpPositions.length; i++) { // hp 마커를 생성하고 hp 마커 배열에 추가하는 함수입니다
                    var imageSize = new kakao.maps.Size(22, 26),
                        imageOptions = {
                            //좌측상단에 3개의 마커표시의 좌표 기준으로 구간 짤라서 이미지로 띄우는 방식임
                            spriteOrigin: new kakao.maps.Point(10, 36),
                            spriteSize: new kakao.maps.Size(36, 98)
                        };
                    // 마커이미지와 마커를 생성합니다
                    var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),
                        marker = createMarker(hpPositions[i], markerImage);

                    hpMarkers.push(marker); // 생성된 마커를 hp 마커 배열에 추가합니다  
                }
            }

            function sethpMarkers(map) { // hp 마커들의 지도 표시 여부를 설정하는 함수입니다   
                for (var i = 0; i < hpMarkers.length; i++) {
                    hpMarkers[i].setMap(map);
                }
            }
            // ap 마커를 생성하고 ap 마커 배열에 추가하는 함수입니다
            function createapMarkers() {
                for (var i = 0; i < apPositions.length; i++) {
                    var imageSize = new kakao.maps.Size(22, 26),
                        imageOptions = {
                            spriteOrigin: new kakao.maps.Point(10, 72),
                            spriteSize: new kakao.maps.Size(36, 98)
                        };
                    // 마커이미지와 마커를 생성합니다
                    var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),
                        marker = createMarker(apPositions[i], markerImage);
                    // 생성된 마커를 ap 마커 배열에 추가합니다
                    apMarkers.push(marker);
                }
            }
            // ap 마커들의 지도 표시 여부를 설정하는 함수입니다
            function setapMarkers(map) {
                //ap 마커에 내 위치 추가
                if (mpMarkers == null)
                    return;
                apMarkers.concat(mpMarkers)

                for (var i = 0; i < apMarkers.length; i++) {
                    apMarkers[i].setMap(map);
                }

            }

            function setapMarkers(map) {
                //ap 마커에 내 위치 추가
                if (mpMarkers == null)
                    return;
                apMarkers.concat(mpMarkers)
                for (var i = 0; i < apMarkers.length; i++) {
                    apMarkers[i].setMap(map);
                }
            }
            // 카테고리를 클릭했을 때 type에 따라 카테고리의 스타일과 지도에 표시되는 마커를 변경합니다
            function changeMarker(type) {
                var mpMenu = document.getElementById('mpMenu');
                var hpMenu = document.getElementById('hpMenu');
                var apMenu = document.getElementById('apMenu');
                // mp 카테고리가 클릭됐을 때
                if (type === 'mp') {
                    // mp 카테고리를 선택된 스타일로 변경하고
                    mpMenu.className = 'menu_selected';
                    // hp과 ap 카테고리는 선택되지 않은 스타일로 바꿉니다
                    hpMenu.className = '';
                    apMenu.className = '';
                    // mp 마커들만 지도에 표시하도록 설정합니다
                    setmpMarkers(map);
                    sethpMarkers(map);
                    setapMarkers(map);
                } else if (type === 'hp') { // hp 카테고리가 클릭됐을 때
                    // hp 카테고리를 선택된 스타일로 변경하고
                    mpMenu.className = '';
                    hpMenu.className = 'menu_selected';
                    apMenu.className = '';
                    // hp 마커들만 지도에 표시하도록 설정합니다
                    setmpMarkers(null);
                    sethpMarkers(map);
                    setapMarkers(null);
                } else if (type === 'ap') { // ap 카테고리가 클릭됐을 때		//default == ap, default상태에서는 mp의 결과는 null임.
                    // ap 카테고리를 선택된 스타일로 변경하고
                    mpMenu.className = '';
                    hpMenu.className = '';
                    apMenu.className = 'menu_selected';
                    // ap 마커들만 지도에 표시하도록 설정합니다
                    setmpMarkers(map);
                    sethpMarkers(map);
                    setapMarkers(map);
                }
            }
            /*****************************************************************************************************************************
             * GPS 좌표 가져오기
             *************************************************************************************************************************/
            function getLocation() {
                //alert("getLocation"); 로케이션 연결
                //alert("Location Connection"); 
                if (navigator.geolocation) { // Geo API가 성공적으로 불러와졌으면 true
                    console.log("1: 연결시작합니다."); // 네비게이터 연결
                    console.log("2: Navigator Connection");
                    navigator.geolocation.getCurrentPosition(showPosition, showPositionErr);
                    console.log("3: GPS를 승인하였습니다. "); //네비게이터 위치 포지션 연결
                    //console.log("11현재 신고자 위도 : "  + position.coords.latitude);
                } else {
                    alert("Geolocation is not supported by this browser.");
                }
            }

            function showPosition(position) {

                resultPoint = 0;
                resultPeo = 0;



                var result = confirm("신고자가 두명 이상인가요 ?");
                if (result) {
                    if (result == true) {
                        resultPeo += 1;
                    }
                    console.log(resultPeo);
                }


                /*  자동제세동기 포지션*/
                //var apPlace = apPositions[i];
                //var ap_pos = [apPlace.getLat(), apPlace.getLng()]
                //console.log("자동제세동기 포지션" + ap_pos);











                var myPlace = new kakao.maps.LatLng(position.coords.latitude, position.coords.longitude)
                mpPositions = [myPlace]; //new kakao.maps.LatLng(37.6389443, 127.0647295)		//mpPositions =  마커
                drawCircleRange(myPlace, 100); //위치데이터는 myPlace에 담겨있고, 써클만 관여함
                console.log("기본 써클 반경은 : 100입니다.");
                console.log("resultPoint : " + resultPoint);
                //alert("mpPositions.length" + mpPositions.length); // 커피포지션의 위도, 경도 입력완료
                if (myPlace != null) {
                    console.log("현재  신고자 좌표 : " + myPlace + "입니다."); // 내 위도 경도 보여주기.
                    //console.log("hpPositions" + hpPositions); // 주변 응급실위치입니다. []

                    //console.log("현재 신고자 위도 : "  + position.coords.latitude);
                    //console.log("현재 신고자 경도 : "  + position.coords.longitude);




                    /*  시간 */
                    var Now = new Date();

                    var NowTime = Now.getFullYear();
                    NowTime += '0' + (Now.getMonth() + 1);
                    NowTime += '0' + Now.getDate();
                    NowTime += ' time : ' + Now.getHours();
                    NowTime += ':' + Now.getMinutes();
                    NowTime += ':' + Now.getSeconds();

                    console.log(NowTime);
                    /* ------------------------------------------------------중앙위치 재공급  ------------------------------------------------*/

                    var moveLatLon = new kakao.maps.LatLng(position.coords.latitude, position.coords.longitude);
                    map.setCenter(moveLatLon);
                }
                /* ------------------------------------------------------중앙위치 재공급   end------------------------------------------------*/

                function panTo() {
                    var moveLatLon = new kakao.maps.LatLng(position.coords.latitude, position.coords.longitude);
                    map.panTo(moveLatLon);

                }

                creatempMarkers();
                changeMarker('mp'); //좌측 변경될 이미지(mp)

                kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
                        var mouseLatLng = mouseEvent.latLng;
                        var myplace_range = 100
                        drawCircleRange(mouseLatLng, 100); //마우스 클릭 지군, 반경값을 지정합니다.
                        console.log("라이프 세이버 좌표 : " + mouseLatLng);



                        drawInfoMarker(mouseLatLng, function() {
                            var content_data = getContentDataByOrder();
                            drawInfoOverlay(mouseLatLng, wrapInfoContent(mouseLatLng, content_data));
                        });

                        for (var i = 0; i < mpPositions.length; i++) {
                            var myPlace = mpPositions[i];
                            var keys = Object.keys(drawingCircles);
                            for (var j = 0; j < keys.length; j++) {
                                var key = keys[j];
                                var circle_pos = key.replace(/[()]/gi, "").split(",");
                                circle_pos = [Number(circle_pos[0]), Number(circle_pos[1])];
                                var circle_range = drawingCircles[key].getRadius();
                                var my_pos = [myPlace.getLat(), myPlace.getLng()]
                                var polyline = new kakao.maps.Polyline({
                                    path: [new kakao.maps.LatLng(my_pos[0], my_pos[1]), new kakao.maps.LatLng(circle_pos[0], circle_pos[1])],
                                    // 선을 구성하는 좌표 배열입니다. 원의 중심좌표와 클릭한 위치로 설정합니다
                                });
                                //console.log("pol"+ polyline + kakao.maps.LatLng(my_pos[0], my_pos[1]));
                                var dist = polyline.getLength() // 내위치부터 다른 원 사이까지의 거리
                                    //	console.log("원과의 거리 :" + dist)
                                console.log("범위 :" + (myplace_range + circle_range));
                                //	console.log("!" +myplace_range);
                                //	console.log("!" + circle_range);
                                console.log(polyline);

                                if (dist != 0 && dist < (myplace_range + circle_range)) {
                                    var show_dist = Math.round(dist); //신고자와 가드의 거리를 알려줍니다.		
                                    //	alert("신고자와 범위안에 있는 " "  매칭되었습니다.  (거리 : " + show_dist + "m)" );
                                    //	alert("현재 신고자의 위치 (" + myPlace + ") 로 D1166이 출동하였습니다." );
                                    alert("현재 신고자의 위치로 신고가 접수되었습니다." + show_dist + "거리에 세이버가 매치되었습니다.");

                                    resultPoint++;
                                    console.log("resultPoint  : " + resultPoint);





                                } else if (dist != 0 && dist > myplace_range + circle_range) { //둘 사이의 거리가, myplace_range + cirecle_range보다 작다면~
                                    console.log("resultPoint  : " + resultPoint);
                                    var show_dist = Math.round(dist);
                                    alert("유효거리가 멀어, 유효범위 증가하여 매치를 시작합니다.");
                                    //	alert("매칭에 실패했습니다. 가드 범위를 300미터 늘려서 재시작합니다.  " + "   ( 부족한 거리 수" + (100-show_dist) + ")" );
                                    //	console.log(100-show_dist + " 미터 부족 ");

                                    //alert(showPosition);


                                    if ((100 - show_dist) < 0 && dist < 500) {
                                        //console.log(circle_count);
                                        var circle_count = Object.keys(drawingCircles).length;
                                        console.log("check 1 : 써클 삭제합니다.");

                                        //	var myPlace = new kakao.maps.LatLng(position.coords.latitude, position.coords.longitude);
                                        mpPositions = [myPlace]; //new kakao.maps.LatLng(37.6389443, 127.0647295)
                                        drawCircleRange(myPlace, 100); //기본 써클반경 300
                                        alert("현재 신고자의 위치로 신고가 접수되었습니다." + show_dist + "m에 있는 세이버가 매치되었습니다.");
                                        for (var i = 0; i < circle_count; i++) {
                                            eraseCircleRange(Object.keys(drawingCircles)[circle_count - 1 - i])
                                            console.log("check 2 :  ");
                                        }
                                        drawCircleRange(myPlace, 200);
                                        drawCircleRange(mouseLatLng, 100);
                                        console.log("check 3 : 기존에 삭제한 써클 유효범위 증가해 생성합니다.");

                                        //  	var show_dist = Math.round(dist);//신고자와 가드의 거리를 알려줍니다.		

                                        if (dist != 0 && dist > (myplace_range + circle_range) && dist < 300) {

                                            console.log(myplace_range + circle_range + "myplace_range + circle_range");
                                            console.log(show_dist + " dist");
                                            console.log("check4 : maching suc"); //connection
                                            //	alert("상황 번호  44 : 신고자와 범위안에 있는 가드 번호 D1166과 매칭되었습니다.  (거리 : " + show_dist + "m)" );
                                            //	alert("현재 신고자의 위치 (" + myPlace + ") 로 D1166이 출동하였습니다." );
                                            var show_dist = Math.round(dist); //신고자와 가드의 거리를 알려줍니다.		

                                        } else if (dist > 300 && dist < 500) {

                                            console.log(show_dist);
                                            console.log("check5 : 2번째 재매치 실패했습니다. 3번째 재매치 시작합니다."); //connection fail, restart
                                            console.log(show_dist - 300);
                                            console.log(dist + (show_dist - 300));
                                            var circle_count = Object.keys(drawingCircles).length;
                                            mpPositions = [myPlace];
                                            drawCircleRange(myPlace, (300 + (show_dist - 300)));
                                            drawCircleRange(mouseLatLng, 100);
                                            alert("myPlace" + myPlace + "maching ");




                                        }
                                    }
                                }
                            }
                        }
                        console.log("신고자 좌표 : " + myPlace);
                        console.log("세이버 코드 : " + content_list[0].code);
                        console.log("세이버 좌표 : " + mouseLatLng);
                        console.log("매칭 일자    : " + (Now.getMonth() + 1) + "월" + Now.getDate() + "일");
                        console.log("매칭 시간    : " + Now.getHours() + "시" + Now.getMinutes() + "분" + Now.getSeconds() + "초");

                        alert("신고자 좌표 : " + myPlace +
                            "\n세이버 코드 : " + content_list[0].code +
                            "\n세이버 좌표 : " + mouseLatLng +
                            "\n매칭 일자    : " + Now.getFullYear() + "년" + (Now.getMonth() + 1) + "월" + Now.getDate() + "일" +
                            "\n매칭 시간    : " + Now.getHours() + "시" + Now.getMinutes() + "분" + Now.getSeconds() + "초" +
                            "\n거리           : " + show_dist + "m");
                        alert("13" + resultPeo);


                        //	var my_pos = [myPlace.getLat(), myPlace.getLng()]

                        //console.log("얍"+ae_pos);
                        if (resultPeo == 1) {
                            alert("rtrt");
                            //CPR 이미지 
                            //		var option = "width = 1500, height = 500, top = 100, left = 200, location = no"
                            //		window.open("mapping.jsp", option);



                            var moveLatLon = new kakao.maps.LatLng(37.483327, 126.8972991);
                            map.panTo(moveLatLon);

                            if (mpPositions != null)
                                console.log(myPlace + "ecc");
                            var linePath = [
                                myPlace,
                                new kakao.maps.LatLng(37.483327, 126.8972991)

                            ];
                            console.log("ecca" + linePath);
                            var polyline = new kakao.maps.Polyline({
                                path: linePath, // 선을 구성하는 좌표배열 입니다
                                strokeWeight: 5, // 선의 두께 입니다
                                strokeColor: '#FFAE00', // 선의 색깔입니다
                                strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
                                strokeStyle: 'solid' // 선의 스타일입니다
                            });
                            polyline.setMap(map);


                            var poldistance = Math.round(myPlace + new kakao.maps.LatLng(37.483327, 126.8972991)), // 선의 총 거리를 계산합니다
                                content = '<div class="dotOverlay distanceInfo">총거리 <span class="number">' + poldistance + '</span>m</div>'; // 커스텀오버레이에 추가될 내용입니다

                            // 거리정보를 지도에 표시합니다
                            showDistance(content, apPositions);


                        }
                    }

                );

            }




            function showPositionErr(error) { //에러코드
                var errTypes = {
                    0: "모름",
                    1: "사용자가 권한거부",
                    2: "위치 찾을수 없음",
                    3: "요청응답시간 초과",
                };
                alert(errTypes[error.code]);
            }
            // center : 화면상에 표시할 원의 위치
            function drawCircleRange(center, rad) {
                if (!drawingCircles[center]) {
                    drawingCircles[center] = new kakao.maps.Circle({
                        strokeWeight: 1, // 선의 두께입니다
                        strokeColor: '#00a0e9', // 선의 색깔입니다
                        strokeOpacity: 0.1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
                        strokeStyle: 'solid', // 선의 스타일입니다
                        fillColor: '#00a0e9', // 채우기 색깔입니다
                        fillOpacity: 0.2 // 채우기 불투명도입니다 
                    });
                }
                // 그려지고 있는 원의 중심좌표와 반지름입니다
                var circleOptions = {
                    center: center,
                    radius: rad,
                };
                // 그려지고 있는 원의 옵션을 설정합니다
                drawingCircles[center].setOptions(circleOptions);
                drawingCircles[center].setMap(map);
            }

            // position: 삭제할 원 반경의 위치
            function eraseCircleRange(position) {
                if (drawingCircles[position]) {
                    drawingCircles[position].setMap(null);
                    delete drawingCircles[position];
                }
            }

            function eventConnected(position) {
                console.log(position)
            }

            function drawInfoMarker(position, listener) {
                drawingInfoMarker[position] = new kakao.maps.Marker({
                    position: position,
                    clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
                });
                drawingInfoMarker[position].setMap(map);
                kakao.maps.event.addListener(drawingInfoMarker[position], 'click', listener);
            }

            function drawInfoOverlay(position, content) {
                eraseInfoOverlay(position);
                drawingInfoOverlay[position] = new kakao.maps.CustomOverlay({
                    content: content,
                    map: map,
                    position: position,
                    clickable: true
                });
                drawingInfoOverlay[position].setMap(map);
            }

            function eraseInfoMarker(position) {
                if (drawingInfoMarker[position]) {
                    drawingInfoMarker[position].setMap(null);
                    delete drawingInfoMarker[position];
                }
            }

            function eraseInfoOverlay(position) {
                if (drawingInfoOverlay[position]) {
                    drawingInfoOverlay[position].setMap(null);
                    delete drawingInfoOverlay[position];
                }
            }

            function closeInfoOverlay(event, position) {
                eraseInfoOverlay(position);

            }

            //클릭에 의한 위치 표시, 즉 라이프 가드의 위치를 임의적으로 매핑해줍니다.




            /* var hpPositions = [
                new kakao.maps.LatLng(37.5812887,	126.9364294) */

            function eraseAllCircles() {
                console.log("12");
                //마커 전부 삭제
                var marker_count = Object.keys(drawingInfoMarker).length;
                for (var i = 0; i < marker_count; i++) {
                    eraseInfoMarker(Object.keys(drawingInfoMarker)[marker_count - 1 - i])
                    console.log("1");
                }

                //원 전부 삭제
                var circle_count = Object.keys(drawingCircles).length;
                for (var i = 0; i < circle_count; i++) {
                    eraseCircleRange(Object.keys(drawingCircles)[myPlace.circle_count - 1 - i])
                    console.log("2");
                }

                //정보 전부 삭제
                var info_count = Object.keys(drawingInfoOverlay).length;
                for (var i = 0; i < info_count; i++) {
                    eraseInfoOverlay(Object.keys(drawingInfoOverlay)[info_count - 1 - i])
                    console.log("3");
                }

            }
        </script>
    </div>
    <!-- PAGE | 지도 end -->
    <!-- PAGE | 나눔소통 start -->
    <!-- PAGE | 나눔소통 end -->
    <!-- PAGE | footer start -->
    <footer id="lifesaver_footer">
        <div class="lifesaver_footer_container">
            <div class="lifesaver_footer_text_row">
                <div class="lifesaver_footer_text">
                    <ul class="lifesaver_footer_textCol">
                        <strong>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">환자의 권리와 의무</a></li>
                            <li><a href="#">책임의 한계와 법적 고지</a></li>
                        </strong>

                    </ul>
                    <address>

                         <a href="#"><strong><img src='<c:url value="/resources/img/footer_logo.png"></c:url>' alt=""></strong></a> 
                        <!-- <img src="/img/footerLogo01.png" alt="">
                        <img src="/img/footerLogo02.png" alt="">
                        <img src="/img/footerLogo03.png" alt=""> -->
                        <p>Copyright LifeSaver corp.©All Rights Reserved.</p>
                    </address>
                </div>
            </div>
        </div>
    </footer>
    <!-- PAGE | footer end -->



    <!-- JQUERY -->
    <script src='<c:url value="/resources/js/jquery-1.10.2.min.js"></c:url>' type="text/javascript"></script>
    <!-- TWITTER BOOTSTRAP -->
    <script src='<c:url value="/resources/js/bootstrap/bootstrap.min.js"></c:url>' type="text/javascript"></script>    
    <!--[if lt IE 9]>
        <script src="assets/js/bootstrap/html5shiv.js"></script>
    <![endif]-->


   <!-- PLUGINS -->
    <script src='<c:url value="/resources/js/plugins/jquery.bxslider.js"></c:url>' type="text/javascript"></script>    
    <script src='<c:url value="/resources/js/plugins/jquery.centralized.js"></c:url>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/plugins/jquery.fixedonlater.js"></c:url>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/plugins/jquery.hashloader.js"></c:url>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/plugins/jquery.mixitup.js"></c:url>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/plugins/jquery.nav.js"></c:url>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/plugins/jquery.parallax-1.1.3.js"></c:url>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/plugins/jquery.responsivevideos.js"></c:url>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/plugins/jquery.scrollTo-1.4.3.1.js"></c:url>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/plugins/jquery.tweet.js"></c:url>' type="text/javascript"></script>
    <script src='<c:url value="/resources/js/plugins/jquery.tweetCarousel.js"></c:url>' type="text/javascript"></script>


    <!-- INITIALIZE -->
    <script src='<c:url value="/resources/js/application/application.js"></c:url>' type="text/javascript"></script>

    <!-- GOOGLE ANALYTICS -->
    
    
    
</body>




</html>