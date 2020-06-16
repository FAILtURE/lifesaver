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
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwbootstrap.min.css" />' type="text/css" />

  <!-- Libraries CSS Files -->
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwfont-awesome.min.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwanimate.min.css"/>' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwionicons.min.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwowl.carousel.min.css"/>' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwlightbox.min.css" />' type="text/css" />

  <!-- Main Stylesheet File -->
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwstyle.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/nav.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwreadmore2.css" />' type="text/css" />
  
</head>

<body>
  <!--/ Nav Star /-->
 
	 
	
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
	<div class="category">
      <div class="confirmboardbtn">
  
        <button class="btn btn-secondary7 btn-search" type="button" onclick="modify()" id="cbt7">
        
        <span>수정</span>
         
      </button>
      
     
      <a href="<c:url value='/delete?bno=${list.bno }'/>"> <button type="submit" class="btn btn-secondary8 btn-search"  id="cbt8">
      	<span>삭제</span>
       
       </button></a>
       <button class="btn btn-secondary6 btn-search" type="button" onclick="back()" id="cbt6">
        
        <span>뒤로</span>
         
      </button>
      </div>
  </div>
  
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
              <textarea rows="" cols="">
                	${list.content }
				</textarea>
              
              
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
       
       </div>     
       </form>
          </div>
       
          </div>
        </div>   
       
       
          
          </div>
         
          
        
       
      
  </section>
  <!--/ Section Blog-Single End /-->
  
  
  
  
  

  <!--/ Section Contact-Footer Star /-->
  
  <!--/ Section Contact-footer End /-->

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
  <script src='<c:url value="resources/js/hhwboard.js"></c:url>' type="text/javascript"></script>    
</body>
</html>
