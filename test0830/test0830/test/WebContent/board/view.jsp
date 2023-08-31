<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${boardDAO.selectOne(param.idx) }"/>

<table border="1" cellpadding="10" cellspacing="0">
	<tr>
		<th colspan="2">${row.idx }. ${row.title }</th>
	</tr>
	<tr>
		<th class="view_th">작성자</th>
		<td>${row.writer }</td>
	</tr>
	<tr>
		<td colspan="2" class="con">${row.content }</td>
	</tr>
	<tr>
		<c:if test="${not empty row.uploadFile }">
		<td colspan="2">
			<img src="${cpath }/upload_file/${row.uploadFile}" width="100">
		</td>
		</c:if>
	</tr>
	<tr>
		<th class="view_th">작성일</th>
		<td>
			<fmt:formatDate value="${row.wdate }" pattern="yyyy-MM-dd a hh:mm"/>
		</td>
	</tr>
</table>

<div class="Btns">
	<div class="btn">
		<a href="${cpath }/board/update.jsp?idx=${row.idx}">
			<input type="button" value="수정">
		</a>
	</div>
	
	<div class="btn">
		<input id="Btn" type="button" value="글 삭제">
	</div>
</div>

<script>
	const Btn = document.getElementById('Btn')
	
	Btn.onclick = function() {
		const flag = confirm('삭제 하시겠습니까?')
		if(flag) {
			location.href='${cpath}/board/delete.jsp?idx=${row.idx}'
		}
	}
	
</script>
</body>
</html>