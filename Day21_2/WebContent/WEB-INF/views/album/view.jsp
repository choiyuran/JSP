<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>앨범 상세 보기</h3>
<hr>

<table>
	<tr>
		<th>id</th>
		<td>${dto.id }</td>
	</tr>

	<tr>			
		<th>가수_id</th>
		<td>${dto.artist_id }</td>
	</tr>
	
	<tr>
		<th>앨범 이름</th>
		<td>${dto.name }</td>		
	</tr>
	
	<tr>
		<th>장르</th>
		<td>${dto.type }</td>		
	</tr>
	
	<tr>
		<th>발매일</th>
		<td>${dto.rDate }</td>		
	</tr>
	
	<tr>
		<th>재생시간</th>
		<td>${dto.playTime }</td>		
	</tr>
	
	<tr>
		<th>앨범 사진</th>
		<td>
			<img src="${cpath }/album_upload/${dto.coverImg }" width="150">
		</td>		
	</tr>
</table>

<p>
	<a href="${cpath }/album/update?id=${dto.id}"><button>수정</button></a>
	<button id="delBtn">삭제</button>
	<a href="${cpath }/music/list?id=${dto.id}"><button>수록곡</button></a>
</p>


<script>
	const delBtn = document.getElementById('delBtn')
	delBtn.onclick = function() {
		const flag = confirm('삭제 하시겠습니까?')
		if(flag) {
			location.href='${cpath}/album/delete?id=${dto.id}'
		}
	}
</script>

</body>
</html>