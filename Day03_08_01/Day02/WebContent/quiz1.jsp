<%@page import="quiz1.DataList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
<style>
	select {
		padding: 5px 25px;

	}
</style>
</head>
<body>
<h1>quiz1.jsp</h1>
<hr>

<%--
	dataList 객체를 생성해서
	파라미터를 입력받아서
	문자열의 내용을 출력하는 코드를 작성하세요
	request.getMethod() 를 활용하여
	GET/POST 일 경우를 현재 페이지에 모두 작성하세요	
 --%>

<%
 	if(request.getMethod().equals("GET")) { %>
 	<form method="POST">
 		<select name="index" required>
 			<option value="">=== 번호 선택 ===</option>
 			<option value="1">1</option>
 			<option value="2">2</option>
 			<option value="3">3</option>
 			<option value="4">4</option>
 			<option value="5">5</option>
 		</select>
 		<input type="submit">
 	</form>
 <% } %>
 
<% 
	String name ="";
	String age = "";
	String gender ="";

	if(request.getMethod().equals("POST")) { 
		
		DataList data = new DataList();

		String index = request.getParameter("index");
		String info = "";
 	
	 	if(index != null) {
			int i = Integer.parseInt(index) - 1;
			info = data.get(i);
			name = info.split(",")[0];
			age = info.split(",")[1];
			gender = info.split(",")[2];
	 	} %>
	 	<h3>name : <%=name %></h3>
	 	<h3>age : <%=age %></h3>
	 	<h3>gender : <%=gender %></h3>
	 	<a href="quiz1.jsp"><button>다시 선택 !</button></a>
<%	} %>
	

 

</body>
</html>