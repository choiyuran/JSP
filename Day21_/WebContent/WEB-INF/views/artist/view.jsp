<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>view.jsp</h3>
<hr>

<table>
	<tr>
		<th>id</th>
		<td>${dto.id }</td>			
	</tr>
		
	<tr>
		<th>가수이름</th>
		<td>${dto.name }</td>		
	</tr>
	
	<tr>
		<th>소속사</th>
		<td>${dto.company }</td>
	</tr>
	
	<tr>
		<th>멤버</th>
		<td>${dto.member }</td>		
	</tr>
	
	<tr>
		<th>데뷔일</th>
		<td>${dto.debut }</td>		
	</tr>
	
	<tr>
		<th>타입</th>
		<td>${dto.type }</td>		
	</tr>
	
	<c:if test="${not empty dto.profileImg }">
	<tr>
		<th>프로필이미지</th>
		<td>
			<img src="${cpath }/artist_upload/${dto.profileImg }" width="150">
		</td>		
	</tr>
	</c:if>

</table>

<p>
	<a href="${cpath }/artist/update?id=${dto.id}"><button>수정</button></a>
	<button id="delBtn">삭제</button>
	<a href="${cpath }/artist/add"><button>가수 등록</button></a>
	
</p>

<script>
	const delBtn = document.getElementById('delBtn')
	delBtn.onclick = function() {
		const flag = confirm('삭제 하시겠습니까?')
		if(flag) {
			location.href='${cpath}/artist/delete?id=${dto.id}'
		}
	}
</script>

</body>
</html>