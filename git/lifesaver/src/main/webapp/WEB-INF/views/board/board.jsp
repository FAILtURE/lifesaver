<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Life Saver</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
 
  <!-- Bootstrap CSS File -->
 <link rel="stylesheet" href='<c:url value="/resources/css/hhwbootstrap.min.css"/>' type="text/css" />

  <!-- Libraries CSS Files -->
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwfont-awesome.min.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwanimate.min.css"/>' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwionicons.min.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwowl.carousel.min.css"/>' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwlightbox.min.css" />' type="text/css" />

  <!-- Main Stylesheet File -->
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwstyle.css"/>' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/nav.css" />' type="text/css" />
  <link rel="stylesheet" href='<c:url value="/resources/css/hhwreadmore.css"/>' type="text/css" /> 
</head>

<body id="page-top">

  <!--/ Nav Star /-->

  <!--/ Nav End /-->

  <!--/ Section Blog Star /-->
  <section id="blog" class="blog-mf sect-pt4 route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box text-center">
            <h3 class="title-a">
              		나눔소통
            </h3>
            <p class="subtitle-a">
             		 원하는 정보를 찾아보세요
            </p>
            <div class="line-mf"></div>
          
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="card card-blog">
            <div class="card-img">
              <a href="<c:url value="/blog"/>" ><img src='./resources/img/biglogo.png' alt="" class="img-fluid"></a>
            </div>
            <div class="card-body">
              <div class="card-category-box">
                
              </div>
              <h3 class="card-title"><a href="<c:url value="/blog"/>" >공지</a></h3>
             	  <p>LifeSavor 6월 2일부터 정상 운영합니다
                         <span id="dots">...</span><br />
                         <span id="more">저희 LifeSaver가 6월 2일부터 정상 운영됩니다. <br />
                         
										지난 5월 19일 세이버 4명의 확진 판정 후 1,400여 직원 및 일부 환자 분에 대한 역학조사 결과, <br />
										
						 <span id="moretext">		
										추가 감염자가 없어 5월 25일 수술장 재오픈에 이어 6월 2일부터 모든 영역에서 정상 운영합니다. <br />
										
										기술 지연과 일부 출동 중단으로 인해 불편을 겪으신 분들께 진심으로 사과 드리며 조속히 치료 받으시도록 최선을 다하겠습니다. <br />
										
										앞으로 저희 기관은 더 철저히 신종 감염병으로부터 안전한 기관이 되도록 노력하겠습니다. <br />
						 </span>
						 <span id="moredots">...</span>	
                         </span> 
                         
                  </p>
					 <div class="read-more">
						 <a href="<c:url value="/blog"/>"  onclick="myFunction()" id="moreview">더보기..</a>
                  		<a onclick="myFunction()" id="myBtn">Read More...</a>
               		 </div>
              
            </div>
          
          </div>
        </div>
        <div class="col-md-4">
          <div class="card card-blog">
            <div class="card-img">
              <a href="<c:url value="/blog"/>" ><img src='./resources/img/biglogo.png' alt="" class="img-fluid"></a>
            </div>
            <div class="card-body">
              <div class="card-category-box">
                
              </div>
              <h3 class="card-title"><a href="<c:url value="/blog"/>" >CPR (심폐소생술) 강사</a></h3>
              <p>안녕하세요. 심폐소생술 강사에 관심를 갖고 있는 고1 여고생입니다. <br /> 
                         <span id="dots2">...</span><br />
                         <span id="more2">인터넷에 CPR강사 조건이나 연봉등을 검색해봐도 잘 나오지 않아서요..ㅜㅜ <br />
						 <span id="moretext2">		
										 제가 제일 궁금한 것은 CPR강사가 될 수 있는 방법들이나 연봉이 궁금합니다 <br />
						 </span>
						 <span id="moredots2">...</span>	
                         </span> 
                         
                  </p>
               
                        
                         
					   
							       
							      
                  			<!-- 심폐소생술관련은 우선 자격증으로 발급되는게 아니고 수료증, 이수증 같은것으로 발급되고요.

							강사 같은 경우 보통 성인이 되어서 일반과정 수료 후 유효기간이 있을때 강사과정을 수료하면 됩니다.
							
							심폐소생술강사 같은 경우 대다수가 따로 연봉 같은것은 없습니다. 자신이 얼마나 강의를 많이 했냐에 따라 건당 얼마 이런 형태로 받을 수 있다고 생각하시면 됩니다.
							
							간호사면허증, 응급구조사자격증 같이 관련학과를 나온뒤 국가고시를 합격하여 관련 자격증, 
							면허증을 소지하고 있는경우 보건소,구청이나 관련 업체에 월급 받으면서 일하는 강사는 있긴하지만 그수가 적고요. 
							일반인인 경우 대부분 건당 얼마 이런 형태 입니다. -->
                         </span> 
                         
                  </p>
					 <div class="read-more">
						 <a href="<c:url value="/blog"/>"  onclick="myFunction2()" id="moreview2">더보기..</a>
                  		<a onclick="myFunction2()" id="myBtn2">Read More...</a>
               		 </div>
            </div>
          
          </div>
        </div>
        <div class="col-md-4">
          <div class="card card-blog">
            <div class="card-img">
              <a href="blog-single.jsp"><img src='/resources/img/save.jpg' alt="" class="img-fluid" ></a>
            </div>
            <div class="card-body">
              <div class="card-category-box">
                
              </div>
              <h3 class="card-title"><a href="<c:url value="/blog"/>" >cpr순서</a></h3>
                 <p>cpr순서에 대해 알려드립니다 <br />
                         <span id="dots3">...</span><br />
                         <span id="more3">1. 심정지 확인(반응 및 호흡 확인)하기
										        우선 현장의 안전을 확인하고, 쓰러진 사람의 반응 및 호흡상태를 확인합니다. <br />
						 <span id="moretext3">		
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
						 </span>
						 <span id="moredots3">...</span>	
                         </span> 
                         
                  </p>
					 <div class="read-more">
						 <a href="<c:url value="/blog"/>"  onclick="myFunction3()" id="moreview3">더보기..</a>
                  		<a onclick="myFunction3()" id="myBtn3">Read More...</a>
               		 </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
    <div class="board-more">
    	 <a class="boardmore" href="<c:url value="/blog"/>"  id="boardmore">게시판더보기</a>
    </div>
  </section>
  <!--/ Section Blog End /-->

  <!--/ Section Contact-Footer Star /-->

  <!--/ Section Contact-footer End /-->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- JavaScript Libraries -->
  <script src='<c:url value="/resources/js/hhwjquery.min.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwjquery-migrate.min.js"></c:url>' type="text/javascript"></script>    
  
  <script src='<c:url value="/resources/js/hhwbootstrap.min.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhweasing.min.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwjquery.waypoints.min.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwjquery.counterup.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwowl.carousel.min.js"> </c:url>' type="text/javascript"></script>    

  <script src='<c:url value="/resources/js/hhwtyped.min.js"></c:url>' type="text/javascript"></script>    
  <!-- Contact Form JavaScript File -->
  <script src='<c:url value="/resources/js/hhwcontactform.js"></c:url>' type="text/javascript"></script>    

  <!-- Template Main Javascript File -->
 <script src='<c:url value="/resources/js/hhwmain.js"></c:url>' type="text/javascript"></script>    
  <script src='<c:url value="/resources/js/hhwreadmore.js"></c:url>' type="text/javascript"></script>    
  

</body>
</html>
