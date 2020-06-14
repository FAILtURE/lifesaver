<%@page import="kr.co.lifesaver.map.service.mapVO"%>
<%@page import="kr.co.lifesaver.map.service.impl.mapDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--    
<%

request.setCharacterEncoding("UTF-8");
//int getSsb_situation_num  = Integer.parseInt(request.getParameter("ssb_situation_num"));
String latitude = request.getParameter("latitude");
String longitude = request.getParameter("longitude");
String Hours = request.getParameter("Hours");
String Minutes = request.getParameter("Minutes");
String Seconds = request.getParameter("Seconds");



mapDAO dao = new mapDAO();
mapVO vo = new  mapVO();


vo.setSsb_situation_lat(latitude);
vo.setSsb_situation_lon(longitude);
//vo.setSsb_situation_num(ssb_situation_num);
vo.setSsb_report_time(Hours+Minutes+Seconds);

System.out.println(vo.getSsb_situation_lat());
System.out.println(vo.getSsb_situation_lon());
System.out.println(vo.getSsb_report_time());

dao.addData(vo);



%> --%>
    
   <h1>test.jsp</h1>
   

</body>
</html>