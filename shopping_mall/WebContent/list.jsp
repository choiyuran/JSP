<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="list" value="${dao.selectAll() }"/>
<main>
	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
				<th>아이디</th>
				<th>구매물품</th>
				<th>가격</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="dto" items="${list }">
				<tr>
					<td>
						<a href="${cpath }/view.jsp?idx=${dto.idx }">${dto.name }</a>
					</td>
					<td>${dto.phone }</td>
					<td>${dto.userid }</td>
					<td>${dto.buy }</td>
					<td>
						<fmt:formatNumber value="${dto.price }"/>원
					</td>
				</tr>			
			</c:forEach>
		</tbody>
	</table>
</main>
</body>
</html>