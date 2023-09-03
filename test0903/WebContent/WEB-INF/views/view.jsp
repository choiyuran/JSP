<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
</head>
<body>
<h1>view.jsp</h1>
<hr>

<table border="1" cellpadding="10" cellspacing="0">
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>내용</th>			
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${dto.idx }</td>
			<td>${dto.title }</td>
			<td>${dto.writer }</td>
			<td>
				<fmt:formatDate value="${dto.wdate }" pattern="yyyy-MM-dd a hh:mm"/>
			</td>
			<td>${dto.content }</td>
		</tr>
	</tbody>
</table>

<p>
	<a href="${cpath }/board"><button>목록</button></a>
	<a href="${cpath }/delete?idx=${dto.idx}"><button>삭제</button></a>
</p>

	

</body>
</html>