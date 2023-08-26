<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ex03-header.jsp" %>

<c:set var="list" value="${dao.selectAll() }"/>

<table border="1" cellpadding="10" cellspacing="0">
	<thead>
		<tr>
			<th>idx</th>
			<th>제목</th>
			<th>파일경로</th>
			<th>이미지</th>
		</tr>
	</thead>	
	<tbody>
		<c:forEach var="row" items="${list }">
			<tr>
				<td>${row.idx }</td>
				<td>${row.title }</td>
				<td>${row.filePath }</td>
				<td><img src="${row.filePath }" width="100"></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>