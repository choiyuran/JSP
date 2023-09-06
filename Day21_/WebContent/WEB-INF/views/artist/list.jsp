<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>가수 목록</h3>
<hr>

<table>
	<thead>
		<tr>
			<th>id</th>
			<th>가수이름</th>
			<th>멤버</th>
			<th>데뷔일</th>
			<th>앨범 추가</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.id }</td>
			<td>
				<a href="${cpath }/artist/view?id=${row.id}">${row.name }</a>
			</td>
			<td>${row.member }</td>
			<td>${row.debut }</td>
			<td>
				<a href="${cpath }/album/add?id=${row.id}&name=${row.name}"><button>추가</button></a>
			</td>
		</tr>
	</c:forEach>
	
	</tbody>
</table>

<p>
	<a href="${cpath }/"><button>홈으로</button></a>
	<a href="${cpath }/artist/add"><button>가수 등록</button></a>
	
</p>
</body>
</html>