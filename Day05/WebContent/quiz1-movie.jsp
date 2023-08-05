<%@page import="day05.Movie"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1-movie.jsp</title>
<style>
	table {
		border: 2px solid black;
		border-collapse: collapse;
	}
	th, td {
		padding: 10px;
		border: 1px solid grey;
	}
	thead {
		background-color: #eee;
	}
</style>
</head>
<body>
<h1>quiz1-movie.jsp</h1>
<hr>

<fieldset>
	<legend>데이터 추가</legend>
	<form method="POST" action="quiz1-add.jsp">
		<p><input type="number" name="rank" placeholder="순위" autocomplete="off" autofocus></p>
		<p><input type="text" name="title" placeholder="제목" autocomplete="off"></p>
		<p><input type="text" name="openningDate" placeholder="개봉일" autocomplete="off"></p>
		<p><input type="text" name="reserveRate" placeholder="예매율" autocomplete="off"></p>
		<p><input type="number" name="reserveCount" placeholder="예매관객수" autocomplete="off"></p>
		<p><input type="number" name="watchCount" placeholder="누적관객수" autocomplete="off"></p>
		<p><input type="submit" value="등록"></p>
	</form>
</fieldset>
<br>
<%
	// application에서 "list"라는 이름의 list를 받아온다(없으면 null)
	ArrayList<Movie> list = (ArrayList<Movie>)application.getAttribute("list");
	
	// 만약 list가 null이면(없으면)
	if(list == null) {
		list = new ArrayList<>();			// 새로운 리스트를 생성해서
		application.setAttribute("list", list);		// 방금 만든 리스트를 "list"라는 이름으로 추가한다
	}
	else {
	%>
	<h3>추가된 영화 목록</h3>
	<table>		
		<thead>
			<tr>
				<th>순위</th>
				<th>제목</th>
				<th>개봉일</th>
				<th>예매율</th>
				<th>예매관객수</th>	
				<th>누적관객수</th>
			</tr>
		</thead>
		<tbody>		
	<%
		for(Movie m : list) { %>
		<tr>
			<td><%=m.getRank() %></td>
			<td><%=m.getTitle() %></td>
			<td><%=m.getOpenningDate() %></td>
			<td><%=m.getReserveRate() %>%</td>
			<td><%=m.getReserveCount() %></td>
			<td><%=m.getWatchCount() %></td>
		</tr>
	<%	} %>
		</tbody>
	</table>
<%} %>
</body>
</html>