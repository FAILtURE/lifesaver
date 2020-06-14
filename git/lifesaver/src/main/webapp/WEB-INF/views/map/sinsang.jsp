<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 인코딩
    request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신상 정보</title>
</head>
<body>
<table border="1">

    <tr>
	<th> <img src="<%= request.getParameter("img") %>" width="200" height="140"></th>
	</tr>
	<tr>
	<th> 세이버 신상정보</th>
	</tr>
	<tr>
	<td>이름 : <%= request.getParameter("name") %>  </td>
	</tr>
	<tr>
	<td>분류 : 1급 세이버
	</tr>
	<tr>
	<td>코드 : <%=request.getParameter("code")%></td>
	 </tr>
	 <tr>
	<td>나이 : 44</td>
	</tr>
	 <tr> 
	<td>직업 : 의사</td> 
	
	</tr>
	 <tr> 
	<td>번호 : <%=request.getParameter("tell")%></td> 
	
	</tr>
	
	
	
	
</table>
<input type="button" value="호출하기" onclick="showPopup();" />

<!--   <script>
  function showPopup() { window.open("services.jsp", "a", "width=400, height=300, left=100, top=50"); }
  </script> -->

</body>
</html>