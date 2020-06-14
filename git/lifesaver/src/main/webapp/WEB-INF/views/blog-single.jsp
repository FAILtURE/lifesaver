<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Lifesaver</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/hhwbootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/hhwfont-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/hhwanimate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/hhwionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/hhwowl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/hhwlightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/hhwstyle.css" rel="stylesheet">
  <link href="css/nav.css" rel="stylesheet">
  <link href="css/hhwreadmore2.css" rel="stylesheet">
  
</head>

<body>
  <!--/ Nav Star /-->
 <nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">   
<div id="header-container">
	<div id="header-login">
		<div id="header-eng" class="header-ab"> <a href=""><img src="img/ENG.png" alt="" /></a></div>
		<div id="header-reg" class="header-ab"> <a href=""><img src="img/register.png" alt="" /></a></div>
		<div id="header-log" class="header-ab"> <a href=""><img src="img/login.png" alt="" /></a></div>
		<div id="number"><a href=""><img src="img/080-8282-1253.png" alt="" /></a></div>
	</div>
	
	<header id="nav-header">
	   <a href=""><img src="img/logo.png" alt="" /></a>
	  <nav>
	  
	    <a href=""> <img src="img/savernow.png" alt="" /></a>
	    <a href=""> <img src="img/saverintro.png" alt="" /></a>
	    <a href=""> <img src="img/huwon.png" alt="" /></a>
	    <a href=""> <img src="img/emerinfo.png" alt="" /></a>
	    <a href=""> <img src="img/issu.png" alt="" /></a>
	    <a href=""> <img src="img/map.png" alt="" /></a>
	    <a href="index.jsp"> <img src="img/nanum.png" alt="" /></a>
	   
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
	<div class="category">
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
  </div>
  <!--/ Section Blog-Single Star /-->
  <section class="blog-wrapper sect-pt6" id="blog1" >
    <div class="container">
       <div class="row">
        <div class="col-md-8">
        
         <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">공지</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
             <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
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
                  <img src="img/unnamed.jpg" alt="">
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
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
          
          
          <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">공지</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
                          <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
              </p>
              
              <blockquote class="blockquote">
                <p class="mb-0">문의 사항은 : 080-8282-1253</p>
              </blockquote>
              <div class="read-more">
						 
                  <a onclick="myFunction2()"  id="myBtn2">Read More</a>
               </div>
               
            </div>
            <div class="box-comments" id="box-comments2" >
            <div class="title-box-2">
              <h4 class="title-comments title-left">댓글 (0)</h4>
            </div>
            <ul class="list-comments">
              <li>
                <div class="comment-avatar">
                  <img src="img/unnamed.jpg" alt="">
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
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
               <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">공지</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
                         <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
              </p>
              
              <blockquote class="blockquote">
                <p class="mb-0">문의 사항은 : 080-8282-1253</p>
              </blockquote>
              <div class="read-more">
						 
                  <a onclick="myFunction3()"  id="myBtn3">Read More</a>
               </div>
               
            </div>
            <div class="box-comments" id="box-comments3" >
            <div class="title-box-2">
              <h4 class="title-comments title-left">댓글 (0)</h4>
            </div>
            <ul class="list-comments">
              <li>
                <div class="comment-avatar">
                  <img src="img/unnamed.jpg" alt="">
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

              <li>
              
              </li>
            </ul>  
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
        </div>   
       <div class="col-md-4" >
          <div class="widget-sidebar" id="sidebox">
            <h5 class="sidebar-title">최근게시물</h5>
            <div class="sidebar-content">
              <ul class="list-sidebar">
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지.</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
              </ul>
            </div>
         <hr />
          <div class="widget-sidebar widget-tags" >
            <h5 class="sidebar-title">태그</h5>
            <div class="sidebar-content">
              <ul>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">정보</a>
                </li>
                <li>
                  <a href="#">질문</a>
                </li>
                <li>
                  <a href="#">아무거나</a>
                </li>
              </ul>
            </div>
          </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->
  
  
  
  <!--/ Section Blog-Single Star /-->
  <section class="blog-wrapper sect-pt7" id="blog2" >
  
    <div class="container">
       <div class="row">
        <div class="col-md-8">
        
         <div class="post-box">
            <div class="post-thumb">
              <img src="img/save.jpg" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">정보</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">작성자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">정보</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
             <div class="article-content">
              <p>
                	1. 심정지 확인(반응 및 호흡 확인)하기
					      우선 현장의 안전을 확인하고, 쓰러진 사람의 반응 및 호흡상태를 확인합니다. <br />
				    2. 119 신고와 도움요청하기
					      주변에 도움을 요청 및 119에 빠르게 신고하고 발견장소 및 현 상황을 알립니다. <br />
				    3. 가슴압박 위치잡기
					      양손을 깍지 끼어 손꿈치로 가슴 중앙(명치를 피해)을 압박하되, 손가락 끝이 몸에 닿지 않도록 합니다. <br />
				    4. 가슴압박 30회 시행하기
					팔꿈치를 펴서 팔이 바닥에 수직을 이룬 상태로 체중을 이용하여 가슴압박을 시작합니다. <br />
				    5. 기도 유지 후 인공호흡 2회 시행하기
					기도를 확보(머리를 젖히고 턱 들기)한 후 인공호흡을 시행하되 가슴이 부풀어 오르는지 확인하면서 1회/1초, 총 2회 시행합니다. <br />
				    6. 가슴압박과 인공호흡 병행하기
					가슴압박과 인공호흡의 시행비율은 가슴압박 30회, 인공호흡 2회로 번갈아서 시행합니다. <br />
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
                  <img src="img/unnamed.jpg" alt="">
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
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
          
          
          <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">공지</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
                          <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
              </p>
              
              <blockquote class="blockquote">
                <p class="mb-0">문의 사항은 : 080-8282-1253</p>
              </blockquote>
              <div class="read-more">
						 
                  <a onclick="myFunction2()"  id="myBtn2">Read More</a>
               </div>
               
            </div>
            <div class="box-comments" id="box-comments2" >
            <div class="title-box-2">
              <h4 class="title-comments title-left">댓글 (0)</h4>
            </div>
            <ul class="list-comments">
              <li>
                <div class="comment-avatar">
                  <img src="img/unnamed.jpg" alt="">
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
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
               <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">공지</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
                         <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
              </p>
              
              <blockquote class="blockquote">
                <p class="mb-0">문의 사항은 : 080-8282-1253</p>
              </blockquote>
              <div class="read-more">
						 
                  <a onclick="myFunction3()"  id="myBtn3">Read More</a>
               </div>
               
            </div>
            <div class="box-comments" id="box-comments3" >
            <div class="title-box-2">
              <h4 class="title-comments title-left">댓글 (0)</h4>
            </div>
            <ul class="list-comments">
              <li>
                <div class="comment-avatar">
                  <img src="img/unnamed.jpg" alt="">
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

              <li>
              
              </li>
            </ul>  
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
        </div>  
         <div class="col-md-4" >
          <div class="widget-sidebar" id="sidebox">
            <h5 class="sidebar-title">최근게시물</h5>
            <div class="sidebar-content">
              <ul class="list-sidebar">
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지.</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
              </ul>
            </div>
         <hr />
          <div class="widget-sidebar widget-tags" >
            <h5 class="sidebar-title">태그</h5>
            <div class="sidebar-content">
              <ul>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">정보</a>
                </li>
                <li>
                  <a href="#">질문</a>
                </li>
                <li>
                  <a href="#">아무거나</a>
                </li>
              </ul>
            </div>
          </div>
          </div>
        </div>
        
        
       
      </div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->
  
    <!--/ Section Blog-Single Star /-->
  <section class="blog-wrapper sect-pt6" id="blog3" >
    <div class="container">
       <div class="row">
        <div class="col-md-8">
        
         <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">질문</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">작성자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
             <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
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
                  <img src="img/unnamed.jpg" alt="">
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
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
          
          
          <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">공지</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
                          <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
              </p>
              
              <blockquote class="blockquote">
                <p class="mb-0">문의 사항은 : 080-8282-1253</p>
              </blockquote>
              <div class="read-more">
						 
                  <a onclick="myFunction2()"  id="myBtn2">Read More</a>
               </div>
               
            </div>
            <div class="box-comments" id="box-comments2" >
            <div class="title-box-2">
              <h4 class="title-comments title-left">댓글 (0)</h4>
            </div>
            <ul class="list-comments">
              <li>
                <div class="comment-avatar">
                  <img src="img/unnamed.jpg" alt="">
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
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
               <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">공지</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
                         <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
              </p>
              
              <blockquote class="blockquote">
                <p class="mb-0">문의 사항은 : 080-8282-1253</p>
              </blockquote>
              <div class="read-more">
						 
                  <a onclick="myFunction3()"  id="myBtn3">Read More</a>
               </div>
               
            </div>
            <div class="box-comments" id="box-comments3" >
            <div class="title-box-2">
              <h4 class="title-comments title-left">댓글 (0)</h4>
            </div>
            <ul class="list-comments">
              <li>
                <div class="comment-avatar">
                  <img src="img/unnamed.jpg" alt="">
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

              <li>
              
              </li>
            </ul>  
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
        </div>  
        
        
        
       <div class="col-md-4" >
          <div class="widget-sidebar" id="sidebox">
            <h5 class="sidebar-title">최근게시물</h5>
            <div class="sidebar-content">
              <ul class="list-sidebar">
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지.</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
              </ul>
            </div>
         <hr />
          <div class="widget-sidebar widget-tags" >
            <h5 class="sidebar-title">태그</h5>
            <div class="sidebar-content">
              <ul>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">정보</a>
                </li>
                <li>
                  <a href="#">질문</a>
                </li>
                <li>
                  <a href="#">아무거나</a>
                </li>
              </ul>
            </div>
          </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Section Blog-Single End /-->
  
  
    <!--/ Section Blog-Single Star /-->
  <section class="blog-wrapper sect-pt6" id="blog4" >
    <div class="container">
       <div class="row">
        <div class="col-md-8">
        
         <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">아무거나</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
             <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
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
                  <img src="img/unnamed.jpg" alt="">
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
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
          
          
          <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">공지</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
                          <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
              </p>
              
              <blockquote class="blockquote">
                <p class="mb-0">문의 사항은 : 080-8282-1253</p>
              </blockquote>
              <div class="read-more">
						 
                  <a onclick="myFunction2()"  id="myBtn2">Read More</a>
               </div>
               
            </div>
            <div class="box-comments" id="box-comments2" >
            <div class="title-box-2">
              <h4 class="title-comments title-left">댓글 (0)</h4>
            </div>
            <ul class="list-comments">
              <li>
                <div class="comment-avatar">
                  <img src="img/unnamed.jpg" alt="">
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
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
               <div class="post-box">
            <div class="post-thumb">
              <img src="img/biglogo.png" class="img-fluid" alt="">
            </div>
            <div class="post-meta">
              <h1 class="article-title">공지</h1>
              <ul>
                <li>
                  <span class="ion-ios-person"></span>
                  <a href="#">관리자</a>
                </li>
                <li>
                  <span class="ion-pricetag"></span>
                  <a href="#">공지</a>
                </li>
                <li>
                  <span class="ion-chatbox"></span>
                  <a href="#">0</a>
                </li>
              </ul>
            </div> 
                         <div class="article-content">
              <p>
                	저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
					지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
              
              	        추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
					기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
					앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
					
					
              </p>
              
              <blockquote class="blockquote">
                <p class="mb-0">문의 사항은 : 080-8282-1253</p>
              </blockquote>
              <div class="read-more">
						 
                  <a onclick="myFunction3()"  id="myBtn3">Read More</a>
               </div>
               
            </div>
            <div class="box-comments" id="box-comments3" >
            <div class="title-box-2">
              <h4 class="title-comments title-left">댓글 (0)</h4>
            </div>
            <ul class="list-comments">
              <li>
                <div class="comment-avatar">
                  <img src="img/unnamed.jpg" alt="">
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

              <li>
              
              </li>
            </ul>  
            <form class="form-mf">
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
                </div>
              </div>
            </form>
          </div>
          </div>
        </div>  
        
        
        
       <div class="col-md-4" >
          <div class="widget-sidebar" id="sidebox">
            <h5 class="sidebar-title">최근게시물</h5>
            <div class="sidebar-content">
              <ul class="list-sidebar">
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지.</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">공지</a>
                </li>
              </ul>
            </div>
         <hr />
          <div class="widget-sidebar widget-tags" >
            <h5 class="sidebar-title">태그</h5>
            <div class="sidebar-content">
              <ul>
                <li>
                  <a href="#">공지</a>
                </li>
                <li>
                  <a href="#">정보</a>
                </li>
                <li>
                  <a href="#">질문</a>
                </li>
                <li>
                  <a href="#">아무거나</a>
                </li>
              </ul>
            </div>
          </div>
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
				
				<img src="img/footlogo.png" id="logo2" />
				Copyright  LifeSaver Corp.  All Right Reserved.
			
			</div>
    </footer>
  </section>
  <!--/ Section Contact-footer End /-->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/hhwjquery.min.js"></script>
  <script src="lib/jquery/hhwjquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/hhwbootstrap.min.js"></script>
  <script src="lib/easing/hhweasing.min.js"></script>
  <script src="lib/typed/hhwtyped.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/hhwcontactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/hhwmain.js"></script>
  <script src="js/hhwreadmore2.js" type="text/javascript"></script>
  <script src="js/hhwmenu.js" type="text/javascript"></script>

</body>
</html>
