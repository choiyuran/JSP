<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<c:set var="list" value="${dao.selectList() }"/>

<h3>목록 페이지 (list.jsp)</h3>
<table border="1" cellspacing="0" cellpadding="10">
	<c:forEach var="dto" items="${list }">
		<tr>
			<td>${dto.idx }</td>
			<td>${dto.name }</td>
			<td>${dto.pnum }</td>
			<td>
				<a href="${cpath }/delete.jsp?idx=${dto.idx }"><button>삭제</button>
				</a>				
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>