<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="list" value="${dao.getList() }"/>

<table border="1" cellpadding="10" cellspacing="0">
	<thead>
		<tr>
			<th>idx</th>
			<th>userid</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td>${row.userid }</td>
		</tr>			
	</c:forEach>
	</tbody>
</table>

</body>
</html>