<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- META DATA -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">


    <title>CPR/AED</title>


    <link rel="shortcut icon" href='<c:out value="/resources/img/images/ico/favicon.png" />'>

   <!-- STYLESHEETS -->
    <link rel="stylesheet" href='<c:url value="/resources/css/lifeSaver.css" />' type="text/css" />
    <link rel="stylesheet" href='<c:url value="/resources/css/subPage.css" />' type="text/css" />

    <!-- GOOGLE WEB FONTS -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&family=Roboto:wght@700&display=swap" rel="stylesheet">

</head>



<body>

    <!-- Wrapper -->

    <body class="is-preload" id="lawPage">
        <!-- NAVIGATION -->
        <nav class="navbar-fixed-top" id="navigation">
            <div class="headernavibar01">
                <div class="headernavbar02">
                    <div class="phone">
                    
                    
                    <a href=""><img src="<c:url value="/resources/img/phone.png" />" alt=""><span style="font-family: 'Roboto', sans-serif; font-size:12px; color:white;">080-8282-1253</span></a>

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
                        <a class="brand pull-left" href="<c:url value="/" />">
                        
                       
                        
                            <img src="<c:url value="/resources/img/logo_re.png" />" alt="LifeSaver">
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
						


                                <li><a href="<c:url value="/#page-status"/>	" id="status-move">세이버현황</a></li>
                                <li><a href="<c:url value="/#page-grade"/>" id="grade-move">세이버등급</a></li>
                                <li><a href="<c:url value="/#page-features"/>" id="feature-move">응급의료정보</a></li>
                                <li><a href="<c:url value="/#page-about" />" id="about-move">응급의료이슈</a></li>
                                <li><a href="<c:url value="/#page-blog"/>" id="blog-move">지도</a></li>
                                <!-- <li><a href="#page-contact">나눔소통</a></li> -->

                            </ul>
                            <!-- END MAIN MENU -->
                        </div>
                    </div>
                </div>
             </div>
        </nav>
        <!-- END NAVIGATION -->
      
      
        <!-- PAGE | CPR정보  -->

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Header -->
            <header id="header">
            
            

                <h2> <img src="<c:url value="/resources/img/cprPage_icon.png" />" class="law__line"><br>심폐소생술</h2>

            </header>

            <!-- Main -->
            <div id="main">

                <hr />
                <p> 심정지로부터 살아나는 사람 중 적절한 시기에 효과적으로 심폐소생술을 받지 못하는 경우에는 비록 생존하더라도 대다수가 심한 뇌손상으로 고통을 받습니다. 뇌손상으로 인해 회복된 후에도 의식이 없거나 심정지 이전의 지능을 회복하지 못해 직장이나 사회 생활로 복귀하지 못하는 경우가 많습니다. 우리가 배우고자 하는 심폐소생술은 심정지환자의 뇌손상을 줄이는데 결정적인 역할을 하며, 궁극적으로는 심정지환자의 생명을 구하는 소중한
                    치료법입니다.

                </p>
                <hr />
                <h3 align="center">심폐소생술에 대한 방법</h3>
                
                
                <img src="<c:url value="/resources/img/cpr_step_img.png" />" />
                <div class="cpr_ctep01">

                    <div class="cpr_ctep01_text01">
                        <h4>반응의 확인</h4> 현장의 안전을 확인한 뒤에 환자에게 다가가 어깨를 가볍게 두드리며, 큰 목소리로 <br> "여보세요, 괜찮으세요?" 라고 물어본다. 의식이 있다면 환자는 대답을 하거나
                        <br> 움직이거나 또는 신음 소리를 내는 것과 같은 반응을 나타낸다. 반응이 없다면 <br> 심정지의 가능성이 높다고 판단해야 한다. <br>

                    </div>
                </div>

                <div class="cpr_ctep02">

                    <div class="cpr_ctep02_text02">
                        <h4>119신고</h4> 환자의 반응이 없다면 즉시 큰 소리로 주변 사람에게 119 신고를 요청한다. <br> 주변에 아무도 없는 경우에는 직접 119에 신고한다. 만약 주위에 자동제세동기가
                        <br> 비치되어 있다면 즉시 가져와 사용해야 한다.
                    </div>
                </div>

                <div class="cpr_ctep03">

                    <div class="cpr_ctep03_text03">
                        <h4>응급의료전화상담원 지시에 의한 가슴압박 소생술</h4> 심폐소생술에 익숙하지 않은 일반인은 신속하게 119에 신고함으로써 도움을 받을 수 있다. <br> 신고를 접수한 응급의료전화 상담원은 전화를 스피커폰 상태로 전환시킨 뒤에 신고자가 <br> 심정지 상태를 확인하고 가슴압박 소생술을 시행할 수 있도록 도와준다. <br>
                    </div>
                </div>

                <div class="cpr_ctep04">

                    <div class="cpr_ctep04_text04">
                        <h4>호흡 확인</h4> 쓰러진 환자의 얼굴과 가슴을 10초 이내로 관찰하여 호흡이 있는지를 확인한다. 환자의 호흡이 <br> 없거나 비정상적이라면 심정지가 발생한 것으로 판단한다. 일반인은 비정상적인 호흡 상태를 <br> 정확히 평가하기 어렵기 때문에 응급 의료 전화상담원의 도움을 받는 것이 바람직하다.
                    </div>
                </div>

                <div class="cpr_ctep05">

                    <div class="cpr_ctep05_text05">
                        <h4>가슴압박 시행</h4> 환자를 바닥이 단단하고 평평한 곳에 등을 대고 눕힌 뒤에 가슴뼈(흉골)의 아래쪽 절반 부위에 <br> 깍지를 낀 두 손의 손바닥 뒤꿈치를 댄다. 손가락이 가슴에 닿지 않도록 주의하면서, 양팔을 <br> 쭉 편 상태로 체중을 실어서 환자의 몸과 수직이 되도록 가슴을 압박하고, 압박된 가슴은 완전히 이완 <br> 되도록 한다. 가슴 압박은 성인에서 분당 100~120회의 속도와 약 5cm
                        깊이(소아 4~5 cm)로 <br> 강하고 빠르게 시행한다. 하나부터 서른이 될 떄 까지 카운트 하고 세어가면서 규칙적으로 시행 하며, <br> 환자가 회복되거나 119 구급대가 도착할 때까지 지속한다.
                    </div>
                </div>

                <div class="cpr_ctep06">
                    <div class="cpr_ctep06_text06">
                        <h4>가슴압박과 인공호흡의 반복</h4> 이후에는 30회의 가슴압박과 2회의 인공호흡을 119 구급대원이 현장에 도착할 때까지 반복해서 시행한다 <br> 다른 구조자가 있는 경우에는 한 구조자는 가슴압박을 시행하고 다른 구조자는 인공호흡을 맡아서 시행하며 <br> 심폐소생술 5주기(30:2 가슴압박과 인공호흡 5회)를 시행한 뒤에 서로 역할을 교대한다. <br>
                    </div>
                </div>


            </div>
        </div>
        <!-- PAGE | CPR정보 end -->

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
                        
                       

                            <a href="#"><strong>
                            <img src="<c:url value="/resources/img/footer_logo.png" />" alt=""></strong></a>
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


</body>

</html>