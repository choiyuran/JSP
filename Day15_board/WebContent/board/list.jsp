<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="list" value="${boardDAO.selectAll() }"/>
<div>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
			<c:forEach var="row" items="${list }">
			<tr>
				<td>${row.idx }</td>
				<td>
					<a href="${cpath }/board/view.jsp?idx=${row.idx}">${row.title }</a>
				</td>
				<td>${row.writer }</td>
				<td>${row.wdate }</td>
			</tr>
			</c:forEach>
		<tbody>
		</tbody>
	</table>
	<p><a href="${cpath }/board/add.jsp"><button>새 글 작성</button></a></p>
</div>

</body>
</html>