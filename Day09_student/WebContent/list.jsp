<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>   
 
<c:set var="dao" value="${StudentDAO.getInstance() }"/>
<c:set var="list" value="${dao.selectList() }"/>
<main>
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
			<c:forEach var="dto" items="${list }">
				<tr>
					<td>
						<a href="${cpath }/view.jsp?name=${dto.name }">${dto.name }</a>
					</td>
					<td>${dto.kor }</td>
					<td>${dto.eng }</td>
					<td>${dto.math }</td>
					<td>${dto.total }</td>
					<td>${dto.avg }</td>
				</tr>
			</c:forEach>
		</tbody>		
	</table>
</main>

</body>
</html>