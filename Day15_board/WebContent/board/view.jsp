<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div>
	<c:set var="row" value="${boardDAO.selectOne(param.idx) }"/>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>내용</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${row.idx }</td>
				<td>${row.title }</td>
				<td>${row.writer }</td>
				<td>${row.content }</td>
				<td>${row.wdate }</td>
			</tr>
		</tbody>
	</table>	
	
	<p>	
		<c:if test="${row.writer == login.userid }">
			<a href="${cpath }/board/modify.jsp?idx=${row.idx}"><button>수정</button></a>
			<button id="deleteBtn">삭제</button>
		</c:if>
	</p>
	
	<script>
		const deleteBtn = document.getElementById('deleteBtn')
		deleteBtn.onclick = function() {
			const flag = confirm('정말 삭제하시겠습니까?')
			if(flag) {
				location.href='${cpath}/board/delete.jsp?idx=${row.idx}'
			}
		}
		
	</script>

</div>

</body>
</html>