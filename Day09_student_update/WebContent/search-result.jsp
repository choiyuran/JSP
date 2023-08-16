<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<c:set var="list" value="${dao.search(dto.name) }"/>

<main>
<c:if test="${not empty list}">
	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>국어</th>
				<th>영어</th>
				<th>수학</th>
				<th>합계</th>
				<th>평균</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${list }">
				<tr>
					<td>${user.name }</td>
					<td>${user.kor }</td>
					<td>${user.eng }</td>
					<td>${user.math }</td>
					<td>${user.total }</td>
					<td>${user.avg }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>
<c:if test="${empty list}">
	<h4>검색 결과가 없습니다.</h4>
	<a href="${cpath }/list.jsp"><button>목록으로</button></a>
</c:if>
</main>
</body>
</html>