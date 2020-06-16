<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src='<c:url value="/resources/js/summernote-ko-KR.js"></c:url>' type="text/javascript"></script>    
<script src='<c:url value="/resources/js/hhwboard.js"></c:url>' type="text/javascript"></script>    
<title>글쓰기</title>

<script>
$(document).ready(function() {
	  $('#summernote').summernote({
 	    	placeholder: 'content',
	        minHeight: 370,
	        maxHeight: null,
	        focus: true, 
	        lang : 'ko-KR'
	        
	  });
	  $("p").each(function(){
		    if (!$(this).text().trim().length) {
		        $(this).remove();
		    }
		});
	 
	});

</script>
</head>
<body>

<div style="width: 80%;">
	<form method="post" action="/writeform">
	<div style = "margin-left: 20%; padding: 1%">
		<select name="category">
		    <option value="">카테고리</option>
		    <option value="notice">공지</option>
		    <option value="question">질문</option>
		    <option value="infomation">정보</option>
		    <option value="free">자유게시판</option>
		    <option value="etc">기타</option>
		</select>
		<input type="text" name="writer" style="width: 20%;" placeholder="작성자"/><br>
		<input type="text" name="title" style="width: 40%; margin-top: 2%; " placeholder="제목"/>
		<br><br> 
		</div>
		<div class="notestyle" style="margin-left: 20%">
		<textarea id="summernote" name="content"></textarea>		
		<input id="subBtn" type="reset" value="취소" style="float: right;" onclick="window.close()"/>
		<input id="subBtn" type="button" value="글 작성" style="float: right;" onclick="goWrite(this.form)"/>
		</div>
	</form>
</div>

</body>
</html>