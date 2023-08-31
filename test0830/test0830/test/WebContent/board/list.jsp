<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="list" value="${boardDAO.selectAll() }"/>

<table border="1" cellpadding="10" cellspacing="0">
	<tr> 
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
	
	<c:forEach var="row" items="${list }">	
	<tr>
		<td>${row.idx }</td>
		<td><a href="${cpath }/board/view.jsp?idx=${row.idx}">
			${row.title }
		</a>
			${not empty row.uploadFile ? '💾': '' }
		</td>
		<td>${row.writer }</td>		
		<td>${row.wdate }</td>
	</tr>
	</c:forEach>
</table>

	<p>
		<a href="${cpath }/board/write.jsp"><button>글 작성</button></a>
	</p>



</body>
</html>