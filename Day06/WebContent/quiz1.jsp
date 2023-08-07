<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
<style>
	table {
		border: 2px solid black;
		border-collapse: collapse;
		margin: 20px auto;
	}
	td, th {
		padding: 10px;
		border: 1px solid grey;
	}
	thead {
		background-color: #eee;
	}
</style>
</head>
<body>
<h1>quiz1.jsp</h1>
<hr>

<%@ page import="java.io.File, java.util.Scanner, java.util.ArrayList" %>
<% 
	String filePath = application.getRealPath("passwd.txt");
	out.print(filePath);
	File f = new File(filePath);
	Scanner sc = new Scanner(f);
	ArrayList<String> list = new ArrayList<>();
	
	while(sc.hasNextLine()) {
		String line = sc.nextLine();
		list.add(line);
	}
	sc.close();
	
	pageContext.setAttribute("list", list);
	
%>
<table>
	<thead>
		<tr>
			<th>계정이름</th>
			<th>비밀번호</th>
			<th>UID</th>
			<th>GID</th>
			<th>comment</th>
			<th>HomeDirectory</th>
			<th>Shell</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="line" items="${list }">
		<tr>
		<c:forEach var="data" items="${line.split(':') }">
			<td>${data }</td>
		</c:forEach>
<%--	
		<c:forEach var="i" begin="0" end="6">
			<td>${line.split(':')[i] }</td>
		</c:forEach>
--%>		
		</tr>
	</c:forEach>
	
	
<%--
	<c:forEach var="data" items="${list }">
		<tr>
			<td>${data.split(":")[0] }</td>
			<td>${data.split(":")[1] }</td>
			<td>${data.split(":")[2] }</td>
			<td>${data.split(":")[3] }</td>
			<td>${data.split(":")[4] }</td>
			<td>${data.split(":")[5] }</td>
			<td>${data.split(":")[6] }</td>
		</tr>
	</c:forEach>
 --%>
	</tbody>
</table>



</body>
</html>