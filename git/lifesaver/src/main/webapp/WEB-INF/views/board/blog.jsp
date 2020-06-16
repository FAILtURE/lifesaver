<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Lifesaver</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Bootstrap CSS File -->
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwbootstrap.min.css" />' type="text/css" />

  <!-- Libraries CSS Files -->
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwfont-awesome.min.css" />'type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwanimate.min.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwionicons.min.css"  />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwowl.carousel.min.css"  />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwlightbox.min.css" />' type="text/css" />

  <!-- Main Stylesheet File -->
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwstyle.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/nav.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwreadmore2.css" />' type="text/css" />

  <link rel="stylesheet" href='<c:url value="/resources/css/lifeSaver.css" />' type="text/css" />
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
                    <a class="brand pull-left" href="<c:url value="/"/>">
                  
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

                            <li><a href="<c:url value="/"/>">> id="status-move">세이버현황</a></li>
                            <li><a href="#page-grade" id="grade-move">세이버등급</a></li>
                            <li><a href="#page-features" id="feature-move">응급의료정보</a></li>
                            <li><a href="#page-about" id="about-move">응급의료이슈</a></li>
                            <li><a href="#page-blog" id="blog-move">지도</a></li>
                            <li><a href="#page-contact" id="contact-move">나눔소통</a></li>

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
  <div class="container">
      <div class="row">
        <div class="col-sm-13">
          <div class="title-box text-center">
            <h3 class="title-a">
              		나눔소통
            </h3>
            <p class="subtitle-a">
             		 원하는 정보를 찾아보세요
            </p>
            <div class="line-mf"></div>
            <div class="sidebar-search">
            <div class="sidebar-content">
              <form>
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search Board..." onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Board...'">
                  <span class="input-group-btn">
                    <button class="btn btn-secondary btn-search" type="button">
                      <span class="ion-android-search"></span>
                    </button>
                  </span>
                </div>
              </form>
            </div>
          </div>
          </div>
        </div>
      </div>
      </div>
  <!--/ Section Blog Star /-->

  <!--/ Intro Skew End /-->
	<div class="category" style="margin-top: 0.5%">
	  <button class="btn btn-secondary1 btn-search" type="button" onclick="categorybtn1()" id="cbt1">
         <span class="">공지</span>
      </button>
      <button class="btn btn-secondary2 btn-search" type="button" onclick="categorybtn2()" id="cbt2">
         <span class="">질문</span>
      </button>
      <button class="btn btn-secondary3 btn-search" type="button" onclick="categorybtn3()" id="cbt3">
         <span class="">정보</span>
      </button>
      <button class="btn btn-secondary4 btn-search" type="button" onclick="categorybtn4()" id="cbt4">
         <span class="">카테고리</span>
      </button>
      <div class="confirmboardbtn" style="margin-right: 53%;">
       <button class="btn btn-secondary5 btn-search" type="button" onclick="popup()" id="cbt5">
        
        <span>게시글 작성</span>
         
      </button>
      </div>
  </div>
  <!--/ Section Blog-Single Star /-->
  <section class="blog-wrapper sect-pt6" id="blog1" >
    <div class="container">
       <div class="row">
        <div class="col-md-8">
        <table border="1" style="border: 1px solid black; width: 155%; text-align: center; margin-left: -15px;">
        	<tr>
        	 <th class ="ctgo" id="ctgo">카테고리</th>
        	 <th class ="ctgo" id="ctgo">번호</th> 
        	 <th class ="ctgo" id="ctgo">제목</th>
        	 <th class ="ctgo" id="ctgo">작성자</th>
        	 <th class ="ctgo" id="ctgo">작성일</th>     	
        	</tr>
        	<c:forEach var ="listboard" items="${list }">
        	<tr>
        		<td>${listboard.category }</td>
        		<td>${listboard.bno }</td>
        		<td style="text-decoration: underline; font-weight: bold;"> 
        		<a class="boardmore" href="<c:url value='/boarddetail?bno=${listboard.bno }'/>">${listboard.title }</a>
        		</td>
        		<td>${listboard.writer }</td>
        		<td>
        		<fmt:formatDate value="${listboard.regdate }" pattern="yyyy.MM.dd HH:mm:ss"/>
        		</td>
        	
        	</tr>
        	
        	</c:forEach>
        	
        
        </table>
		</div>
         
      
      </div>
    </div>
  </section>
  
 
  
  
  
  
  

<!-- PAGE | footer start -->
    <footer id="lifesaver_footer" style="margin-top: 15%">
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

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- JavaScript Libraries -->
   <script src='<c:url value="/resources/js/hhwjquery.min.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwjquery-migrate.min.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwbootstrap.min.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhweasing.min.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwtyped.min.js"></c:url>' type="text/javascript"></script>    
  <!-- Contact Form JavaScript File -->
  <script src='<c:url value="/resources/js/hhwcontactform.js"></c:url>' type="text/javascript"></script>    

  <!-- Template Main Javascript File -->
  <script src='<c:url value="/resources/js/hhwmain.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwreadmore2.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwmenu.js"></c:url>' type="text/javascript"></script>    

</body>
</html>
