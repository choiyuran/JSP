<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>앨범 목록</h3>
<hr>

<table>
	<thead>
		<tr>
			<th>id</th>
			<th>가수_id</th>
			<th>가수 이름</th>
			<th>앨범 이름</th>
			<th>장르</th>
			<th>발매일</th>
			<th>곡추가</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="row" items="${list }">
		<c:set var="loop_flag" value="false"/>
		<tr>
			<td>${row.id }</td>
			<td>${row.artist_id }</td>
			
			<c:forEach var="dto" items="${list2 }">
			<c:if test="${not loop_flag }">
				<c:if test="${dto.id eq row.artist_id }">
					<td>${dto.name }</td>
					<c:set var="loop_flag" value="true"/>
				</c:if>
			</c:if>
			</c:forEach>
			
			<td>
				<a href="${cpath }/album/view?id=${row.id}">${row.name }</a>
			</td>
			<td>${row.type }</td>
			<td>${row.rDate }</td>
			<td>
				<a href="${cpath }/music/add?album_id=${row.id}&artist_id=${row.artist_id}"><button>곡 추가</button></a>
			</td>
		</tr>
	</c:forEach>
	
	</tbody>
</table>

<p>
	<a href="${cpath }/"><button>홈으로</button></a>
	<a href="${cpath }/artist/list"><button>가수 목록</button></a>
</p>
</body>
</html>