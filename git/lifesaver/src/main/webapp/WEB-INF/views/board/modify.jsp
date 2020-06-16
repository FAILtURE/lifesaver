<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Lifesaver</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Bootstrap CSS File -->
  <link href="/resources/css/hhwbootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/resources/css/hhwfont-awesome.min.css" rel="stylesheet">
  <link href="/resources/css/hhwanimate.min.css" rel="stylesheet">
  <link href="/resources/css/hhwionicons.min.css" rel="stylesheet">
  <link href="/resources/css/hhwowl.carousel.min.css" rel="stylesheet">
  <link href="/resources/css/hhwlightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="/resources/css/hhwstyle.css" rel="stylesheet">
  <link href="/resources/css/nav.css" rel="stylesheet">
  <link href="/resources/css/hhwreadmore2.css" rel="stylesheet">
  
</head>

<body>
  <!--/ Nav Star /-->
 <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">   
<div id="header-container">
	<div id="header-login">
		<div id="header-eng" class="header-ab"> <a href=""><img src="/resources/img/ENG.png" alt="" /></a></div>
		<div id="header-reg" class="header-ab"> <a href=""><img src="/resources/img/register.png" alt="" /></a></div>
		<div id="header-log" class="header-ab"> <a href=""><img src="/resources/img/login.png" alt="" /></a></div>
		<div id="number"><a href=""><img src="/resources/img/080-8282-1253.png" alt="" /></a></div>
	</div>
	
	<header id="nav-header">
	   <a href="<c:url value="/"/>"><img src="/resources/img/logo.png" alt="" /></a>
	  <nav>
	  
	    <a href=""> <img src="/resources/img/savernow.png" alt="" /></a>
	    <a href=""> <img src="/resources/img/saverintro.png" alt="" /></a>
	    <a href=""> <img src="/resources/img/huwon.png" alt="" /></a>
	    <a href=""> <img src="/resources/img/emerinfo.png" alt="" /></a>
	    <a href=""> <img src="/resources/img/issu.png" alt="" /></a>
	    <a href=""> <img src="/resources/img/map.png" alt="" /></a>
	    <a href=""><img src="/resources/img/nanum.png" alt="" /></a>
	   
	  </nav>
	</header>
	<hr class="one"/>
</div>
  </nav>
  <!--/ Nav End /-->
  <div class="container">
      <div class="row">
        <div class="col-sm-13">
          <div class="title-box text-center">
            <h3 class="title-a">
              		나눔소통
            </h3>
          
          </div>
        </div>
      </div>
      </div>
  <!--/ Section Blog Star /-->

  <!--/ Intro Skew End /-->
  <form action="/blog">
	<div class="category">
      <div class="confirmboardbtn">
        <button class="btn btn-secondary7 btn-search" type="button" onclick="modify()" id="cbt7">
        
        <span>수정</span>
         
      </button>
       <button id="deletebtn" type="button" class="btn btn-secondary8 btn-search" onclick="location.href='deleteboard?bno=${list.bno }'" id="cbt8">
       
      	<span>삭제</span>
       
       </button>
       <button class="btn btn-secondary6 btn-search" type="button" onclick="back()" id="cbt6">
        
        <span>뒤로</span>
         
      </button>
      </div>
  </div>
  </form>
  <!--/ Section Blog-Single Star /-->
  <section class="blog-wrapper sect-pt6" id="blog1" >
    <div class="container">
       <div class="row">
        <div class="col-md-8">
        
        <div class="post-box">
            <div class="post-thumb">
              <img src="/resources/img/biglogo.png" class="img-fluid" alt="" style="width : 100%">
            </div>
            <form class="form" method="post" autocomplete="off">

            <div class="post-meta">
              <h1 class="article-title">${list.title }</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <p>${list.writer }</p>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <p>${list.category }</p>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <p>${list.bno }</p>
                </li>
               
              </ul>
            </div> 
             <div class="article-content">
              <p>
                	${list.content }
                
				
              </p>
              
              <blockquote class="blockquote">
                <p class="mb-0">문의 사항은 : 080-8282-1253</p>
              </blockquote>
              <div class="read-more">
						 
                  <a onclick="myFunction()"  id="myBtn">Read More</a>
               </div>
               
            </div>
            <div class="box-comments" id="box-comments" >
            <div class="title-box-2">
              <h4 class="title-comments title-left">댓글 (0)</h4>
            </div>
            <ul class="list-comments">
              <li>
                <div class="comment-avatar">
                  <img src="/resources/img/unnamed.jpg" alt="">
                </div>
                <div class="comment-details">
                  <h4 class="comment-author">작성자</h4>
                  <span>날짜</span>
                  <p>
             		       내용
                  </p>
                  <a href="3">답글</a>
                </div>
              </li>
            </ul>  
              <div class="row">
                <div class="col-md-6 mb-3">
                  <div class="form-group">
                    <input type="text" class="form-control input-mf" id="inputName" placeholder="닉네임" required>
                  </div>
                </div>
                
                <div class="col-md-12 mb-3">
                  <div class="form-group">
                    <textarea id="textMessage" class="form-control input-mf" placeholder="내용" name="message"
                      cols="45" rows="8" required></textarea>
                  </div>
                </div>
                <div class="col-md-12">
                  <button type="submit" class="button button-a button-big button-rouded">작성</button>         
                 
                 	<input type="hidden" name="deleteBno" />
                </div>
              </div>
            </form>
          </div>
          </div>
        </div>   
       
       
          
          </div>
         
          
        
       
      
  </section>
  <!--/ Section Blog-Single End /-->
  
  
  
  
  

  <!--/ Section Contact-Footer Star /-->
  <section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(img/overlay-bg.jpg)">
    <footer>
      <div id="agree">
				<br />
				<br />
				<a class="footinfo" href="">이용약관</a> | <a class="footinfo" href="">개인정보처리방침</a> | 
				<a class="footinfo" href="">책임의 한계와 법적 고지</a> | <a class="footinfo" href="">회원정보 고객센터</a>
				<br />
				<br />
			</div>
			
			<div id="footer">
				
				<img src="/resources/img/footlogo.png" id="logo2" />
				Copyright  LifeSaver Corp.  All Right Reserved.
			
			</div>
    </footer>
  </section>
  <!--/ Section Contact-footer End /-->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- JavaScript Libraries -->
  <script src="/resources/js/hhwjquery.min.js"></script>
  <script src="/resources/js/hhwjquery-migrate.min.js"></script>
  <script src="/resources/js/hhwbootstrap.min.js"></script>
  <script src="/resources/js/hhweasing.min.js"></script>
  <script src="/resources/js/hhwtyped.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="/resources/js/hhwcontactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/resources/js/hhwmain.js"></script>
  <script src="/resources/js/hhwreadmore2.js" type="text/javascript"></script>
  <script src="/resources/js/hhwmenu.js" type="text/javascript"></script>
  <script src="/resources/js/hhwboard.js"></script>
</body>
</html>
