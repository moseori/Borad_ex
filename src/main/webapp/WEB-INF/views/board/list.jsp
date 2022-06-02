<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<div class="container">
	<h3>게시판</h3>
	<table class="table">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>수정일</th>
		</tr>
		<c:forEach items="${list}" var="b">
			<tr>
				<td>${b.bno}</td>
				<td><a href="get?bno=${b.bno}">${b.title}</a></td>
				<td>${b.writer}</td>
				<td>
				<fmt:parseDate var="regDate" value="${b.regDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" /> 
				<fmt:formatDate value="${regDate}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
				<td>
				<fmt:parseDate var="updateDate" value="${b.updateDate}" pattern="yyyy-MM-dd'T'HH:mm:ss" /> 
				<fmt:formatDate value="${updateDate}" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>
			</tr>
		</c:forEach>
		<c:if test="${empty list}">
			<td colspan="5" class="text-center">게시글이 존재하지 않습니다</td>
		</c:if>
	</table>
	<ul class="pagination">
		<c:if test="${pageMaker.prve}">
			<li class="page-item"><a href="?page=${pageMaker.startPage-1}" class="page-link"> 이전페이지</a></li>
		</c:if>
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="pageNum">
			<li class="page-item ${param.page==pageNum?'active':'' }"><a href="?page=${pageNum}" class="page-link">${pageNum}</a></li>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<li class="page-item"><a href="?page=${pageMaker.endPage+1}" class="page-link"> 다음페이지</a></li>
		</c:if>
	</ul>
	<br> 
	<a href="${contextPath }/board/register" class="btn btn-info">글 등록</a>
	<c:if test="${not empty message }"> ${message} </c:if>
</div>
<%@ include file="/WEB-INF/views/layout/footer.jsp"%>