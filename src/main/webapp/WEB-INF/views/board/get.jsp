<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<div class="container">
	글조회<br>
	<p>제목 : ${board.title }</p>
	<p>작성자 : ${board.writer }</p>
	<p>작성일 : ${board.regDate }</p>
	<p>수정일 : ${board.updateDate }</p>
	<div>내용 : ${board.contents}</div>
	<div class="row">
		<form action="${contextPath}/board/remove" method="post">
			<input type="hidden" name="bno" value="${board.bno}">
			<button class="btn btn-danger">삭제</button>
		</form>
		<form action="${contextPath}/board/modify">
			<input type="hidden" name="bno" value="${board.bno}">
			<button class="btn btn-warning">수정</button>
		</form>
	</div>
	<a href="${contextPath}/board/list">목록으로</a>
</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
