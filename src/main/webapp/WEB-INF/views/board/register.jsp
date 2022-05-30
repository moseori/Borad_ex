<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/layout/header.jsp"%>
	<div class="container">
		<form action="${contextPath }/board/register" method="post">
			제목 : <input type="text" name="title"><br> 
			작성자 : <input type="text" name="writer"><br>
			<textarea rows="20" cols="100" name="contents"></textarea> <br>
			<button>등록</button>
		</form>
	</div>
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>