<%@page import="quiz1.DataList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1_answer.jsp</title>
</head>
<body>
<h1>quiz1_answer.jsp</h1>
<hr>
<%!
	DataList data = new DataList();
%>

<%
	switch(request.getMethod()) {
	case "GET":
		%>
		<%-- radio는 name이 같으면 하나만 선택가능 --%>
		<form method="POST">
			<h3>원하는 데이터의 순번을 선택하세요</h3>
			<p>
				<label><input type="radio" name="index" value="0">0번</label><br>
				<label><input type="radio" name="index" value="1">1번</label><br>
				<label><input type="radio" name="index" value="2">2번</label><br>
				<label><input type="radio" name="index" value="3">3번</label><br>
				<label><input type="radio" name="index" value="4">4번</label><br>
			</p>
			<p><input type="submit"></p>
		</form>
		<%
		break;
		
	case "POST":
			int index = Integer.parseInt(request.getParameter("index"));
			String result = data.get(index);
		%>
		<h3>이름 : <%=result.split(",")[0] %></h3>
		<h3>나이 : <%=result.split(",")[1] %></h3>
		<h3>성별 : <%=result.split(",")[2] %></h3>
		<a href="quiz1_answer.jsp"><button>이전으로</button></a>
		<%
		break;
	}

%>
</body>
</html>