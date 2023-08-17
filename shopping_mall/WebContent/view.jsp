<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="dto" value="${dao.selectOne(param.idx) }"/>
<main>
	<table>
		<thead>
			<tr>
				<th>이름</th>
				<th>전화번호</th>
				<th>아이디</th>
				<th>구매물품</th>
				<th>가격</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		
		<tbody>
			<tr>
				<td>${dto.name }</td>
				<td>${dto.phone }</td>
				<td>${dto.userid }</td>
				<td>${dto.buy }</td>
				<td>
					<fmt:formatNumber value="${dto.price }"/>원
				</td>
				<td>
					<a href="${cpath }/update.jsp?idx=${dto.idx }">수정</a>
				</td>
				<td>
					<a href="${cpath }/delete.jsp?idx=${dto.idx }">삭제</a>
				</td>
			</tr>			
		</tbody>
	</table>
</main>
</body>
</html>