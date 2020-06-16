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


    <title>AED정보</title>


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
                        <a href=""><img src="/img/phone.png" alt=""><span style="font-family: 'Roboto', sans-serif; font-size:12px; color:white;">080-8282-1253</span></a>

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
                                <!-- 페이지 링크 | 구간 -->
                               
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
       
        <!-- PAGE | AED 정보  -->

        <!-- AED 정보 | Wrapper -->
        <div id="wrapper">

            <!-- AED 정보 | Header -->
            <header id="header">



                <h2> <img src="<c:url value="/resources/img/aed_info_icon.png" />" class="law__line"><br>AED 정보</h2>


            </header>

            <!--AED 정보 | Main -->
            <div id="main">

                <!-- Content -->
                <section id="content" class="main">
                    <h3>심정지 응급상황! 골든타임을 잡아라!!</h3>
                    <hr />
                    <!-- AED 정보 | 라인 생성  -->



                    <div class="law_page_subText">
                        <img src="<c:url value="/resources/img/aed_info_Bg.png" />" alt="">

                    </div>
                    <hr />


                </section>

            </div>


        </div>
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
</body>

</html>