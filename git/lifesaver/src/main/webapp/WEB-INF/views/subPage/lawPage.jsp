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


    <title>법령정보</title>


    
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
       
        <!-- PAGE | 법령정보  -->

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Header -->
            <header id="header">




                <h2> <img src="<c:url value="/resources/img/pageLine_law.png" />" class="law__line"><br>법령 정보</h2>


            </header>

            <!-- Main -->
            <div id="main">
 

                <!-- Content -->
                <section id="content" class="main">
                    <h3>선한 사마리아인 법안이 무엇인가요 ?</h3>
                    <img src="<c:url value="/resources/img/law_page_img01.png" />" alt="">
                    <!-- 라인 생성  -->
                    <hr />
                    <br><br>
                    <p> 위험에 처한 사람을 구조하는 과정에서 자신이 위험에 빠지지 않는 상황인데도 불구하고, 구조 불이행(Failure-to-Rescue)을 저지른 사람을 처벌<br>하는 법이다. 구조거부죄 또는 불구조죄라고도 하며, 사형 제도, 신념에 의한 병역 거부와 함께, 찬반 양론이 팽팽하게 맞서는 법적 쟁점 가운데 하나이다. 대한민국에서는 응급 의료에서 발생한 피해에 대해 구조자에게, 면책을 주는 법도 선한 사마리아인 법이라고
                        부른다. 응급의료에 관한법률 제5조의2(선의의 응급의료에 대한 면책), 생명이 위급한 응급환자에게 다음 각 호의 어느 하나에 해당하는 응급의료 또는 응급처치를 제공하여, 발생한 재산상 손해와 사상에 대하여 고의 또는 중대한 과실이 없는 경우,그 행위자는 민사책임과 상해(傷害)에 대한 형사책임을 지지 아니하며 사망에 대한 형사책임은 감면한다.
                    </p>
                    <hr />
                    <div class="law_page_subText">
                        <img src="<c:url value="/resources/img/law_samarian_img.png" />" alt="">

                    </div>
                    <hr />
                    <h3 align="center">응급의료에 관한 법률(약칭 : 응급의료법)</h3>
                    <p align="right" style="font-size: 14px;">[시행 2019. 6. 12.] [법률 제15893호]</p>
                    <p>제1조(목적)
                        <br>이 법은 국민들이 응급상황에서 신속하고 적절한 응급의료를 받을 수 있도록 응급의료에 관한 국민의 권리와 의무, 국가ㆍ지방자치단체의 책임, 응급의료제공자의 책임과 권리를 정하고 응급의료자원의 효율적 관리에 필요한 사항을 규정함으로써 응급환자의 생명과 건강을 보호하고 국민의료를 적정하게 함을 목적으로 한다.</p>
                    <hr />
                    <p>제5조(응급환자에 대한 신고 및 협조 의무)
                        <br>① 누구든지 응급환자를 발견하면 즉시 응급의료기관등에 신고하여야 한다.
                        <br>② 응급의료종사자가 응급의료를 위하여 필요한 협조를 요청하면 누구든지 적극 협조하여야 한다. [전문개정 2011. 8. 4.]</p>


                    <p>제5조의2(선의의 응급의료에 대한 면책) 생명이 위급한 응급환자에게 다음 각 호의 어느 하나에 해당하는 응급의료 또는 응급처치를 제공하여 발생한 재산상 손해와 사상(死傷)에 대하여 고의 또는 중대한 과실이 없는 경우 그 행위자는 민사책임과 상해(傷害)에 대한 형사책임을 지지 아니하며 사망에 대한 형사책임은 감면한다. [전문개정 2011. 8. 4.]
                    </p>
                    <hr />
                    <p>제6조(응급의료의 거부금지 등)<br> ① 응급의료기관등에서 근무하는 응급의료종사자는 응급환자를 항상 진료할 수 있도록 응급의료업무에 성실히 종사하여야 한다. ② 응급의료종사자는 업무 중에 응급의료를 요청받거나 응급환자를 발견하면 즉시 응급의료를 하여야 하며 정당한 사유 없이 이를 거부하거나 기피하지 못한다. [전문개정 2011. 8. 4.]
                        <br><br>제8조(응급환자에 대한 우선 응급의료 등)
                        <br>  ① 응급의료종사자는 응급환자에 대하여는 다른 환자보다 우선하여 상담ㆍ구조 및 응급처치를 하고 진료를 위하여 필요한 최선의 조치를 하여야 한다.
                        <br> ② 응급의료종사자는 응급환자가 2명 이상이면 의학적 판단에 따라 더 위급한 환자부터 응급의료를 실시하여야 한다. [전문개정 2011. 8. 4.]
                    </p>

                    <hr />
                    <div align="center">
                        <br>
                        <p>응급상황의 환자를 구조하는 것은 국가의 절대적 의무입니다.<br> 라이프 세이버는 국가의 절대적 의무를 행하는 중개자이며 동시에 보호 받아야 할 국민입니다.
                            <br>라이프 세이버는 모든 구호자들의 법률 문제를 변호 및 보호합니다.</p>

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



                            <a href="#"><strong><img src="<c:url value="/resources/img/footer_logo.png" />" alt=""></strong></a>
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