<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script id="replies" type="text/x-handlebars-template" class="well"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	$('#btnSend').on('click', function(evt) {
	  evt.preventDefault();
	if (socket.readyState !== 1) return;
		  let msg = $('#msg').val();
		  socket.send(msg);
		  
		});
});

</script>

</head>
<body>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
<input type="text" name="" id="msg" value="1212"/>
<input type="button" value="asdasda" id="btnSend" />


<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
