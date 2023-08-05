<%@page import="day05.Movie"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1-add.jsp</title>
</head>
<body>
<h1>quiz1-add.jsp</h1>
<hr>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="movie" class="day05.Movie"/>
<jsp:setProperty property="*" name="movie"/>

${list.add(movie) }
<jsp:forward page="quiz1-movie.jsp"/>

<%--
<%

	ArrayList<Movie> list = (ArrayList<Movie>)application.getAttribute("list");
	list.add(movie);
	response.sendRedirect("quiz1-movie.jsp");
	
%>
 --%>

</body>
</html>