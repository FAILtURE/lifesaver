
<%@page import="kr.co.lifesaver.support.service.impl.SupportMysqlDAO"%>
<%@page import="kr.co.lifesaver.support.service.SupportVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<link rel="stylesheet" href="../css/done_mod.css">




<script>
   $(document).ready(
		   function move() {
		     var elem = document.getElementById("myBar");
		     var width = 1;
		     var id = setInterval(frame, 10);
		     function frame() {
		       if (width >= 99.9) {
		         clearInterval(id);
		       } else {
		         width++;
		         elem.style.width = width + '%';
		       }
		     }
		   });

   </script>

<style>
.falis{margin-top: 950px;margin-right: -800px;}
.balis{background-image: url("../image/chd.jpg");height:300px;width:1920px;}
.topsi{height:75px;}
</style>
</head>
<body>
<div class="top">
<%-- 		<jsp:include page="../etc/sf_nav.jsp" ></jsp:include>
 --%></div>
<div class="topsi">
</div>
   <div class="balis">
	</div>
<div class="alis">
<%-- <%@include file="DoHeader.jsp" %>
 --%>   <div class="w3-container">
  			<h2>4. 결제내역 확인 단계:: </h2>
  		<div class="w3-light-grey">
    		<div id="myBar" class="w3-green" style="height:24px;width:0"> 100% </div>
  		</div>
	</div><br>


<div id="text">
    <form method="post" action="done_main.jsp"> <!--form action="mod_2.jsp">  -->
 	<table class="corporation_table">
<!-- ****************************************************************************************************************************** -->
<h3>&nbsp;&nbsp;&nbsp;결제내역 최종 확인 단계</h3>

   <tr class="pont_L">
  <th class="pont_L">
      <span>법인체 명   </span>
  </th>
  <td>
  <span><input type="text" title="법인체 명" class="pont_L"id="cr_name" name="cr_name" placeholder=" 법인체 명" size="40" value="${name }"></span>

  </td>
   </tr>
<!-- ****************************************************************************************************************************** -->
   <tr class="f_row">  <th class="f_c_row">
      <span>법인등록번호</span>
      <!--법인 등록번호 13자리 | 사업자 등록번호 10자리 -->
  </th>
  <td>
 	 <span>
  		<input type="text" title="법인 등록번호" class="pont_L" id="cr_number" name="cr_number" placeholder="  13자리 '-'제외 " size="40" value="${number }">
  		<!-- <input type="button" id="cr_number" name="cr_number" value=" 법인 등록번호가 기억이 안나요." size="50"  onclick="javascript:openWin()"> -->
  	</span>
  </td>
   </tr>
<!-- ****************************************************************************************************************************** -->

   <tr>
  <th class="f_c_row">
      <span>담당자 명</span>
  </th>
  <td>
  <span><input type="text" title="법인체 담당자" class="pont_L" id="cr_man_name" name="cr_man_name" placeholder=" 법인체 담당자 " size="20" value="${man_name }"></span>
  </td>
   </tr>
<!-- ****************************************************************************************************************************** -->
   <tr class="f_row">
  <th class="f_c_row">
      <span>담당자 번호</span>
  </th>
  <td>
  <span>
  	<input type="text" title="담당자 번호" class="pont_L" id="cr_man_phone_number" name="cr_man_phone_number" placeholder="  -제외 11자 입력 " size="40" value="${man_phone_number }">
  </span>

  </td>
   </tr>
<!-- ****************************************************************************************************************************** -->
   <tr class="pont_L">
  <th class="pont_L">
		<span>후원 방법  </span>
  			</th>
  			<td>
				<input type="text" name="box"  class="pont_L" id="" value="${box }"/>

			</td>
   		</tr>
<!-- ****************************************************************************************************************************** -->
   <tr class="f_row">
   	<th class="f_c_row">
    	<span>후원 선택</span>
  			</th>
  			<td>
  				<input type="text" name="box2" class="pont_L" id="" value="${box2 }"/>

			</td>
   		</tr>
<!-- ****************************************************************************************************************************** -->
<tr class="f_c_row">
  			<th class="f_c_row">
      			<span>후원금액</span>
  			</th>
  			<td>
  				<span>
  					<input type="text" title="후원금액" class="pont_L" id="price" name="price"  placeholder=" 금액을 입력해 주세요." size="50" value="${price }">
  				</span>
  			</td>
   		</tr>




</table>
	<br><br><br>
	<h4 align="center">후원해주셔서 감사합니다. <br>
	결제 내역이 다르다면, 문의해주시길 바랍니다.</h4>
 <!--  <input type="submit" title="다음" class="corporation_button"  name="Donation" value="다음 단계" size="40"> -->
   </form>
<hr>
			<h5 style="text-align: center;">LifeSaver의 후원회원이 되시면,</h5>
    <h6 class="nbg" style="text-align: center;">지정기부금은 소득금액의 30%, 법정기부금은 소득금액의 100% 한도 내에서 15% 세액공제 받으실 수 있습니다.</h6>
    <br>



    </div>
    <br><br>
    <hr>


   </div>
   <div class="falis">

  </div>
<div class="footer">
<%--  <jsp:include page="../etc/project_footer.jsp" ></jsp:include>
 --%></div>
</body>
</html>