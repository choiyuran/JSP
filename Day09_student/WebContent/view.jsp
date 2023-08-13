<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="dao" value="${StudentDAO.getInstance() }"/>
<c:set var="dto" value="${dao.selectOne(param.name) }"/>

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
			<tr>
				<td>${dto.name }</td>
				<td>${dto.kor }</td>
				<td>${dto.eng }</td>
				<td>${dto.math }</td>
				<td>${dto.total }</td>
				<td>${dto.avg }</td>
			</tr>
		</tbody>		
	</table>
</main>

<a href="${cpath }/delete.jsp?name=${dto.name }"><button>삭제</button></a>

</body>
</html>