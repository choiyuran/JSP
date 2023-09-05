<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.itbank.repository.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
<h1>update.jsp</h1>
<hr>
<c:set var="artistDAO" value="${ArtistDAO.getInstance() }"/>
<c:set var="row" value="${artistDAO.selectOne(param.id) }"/>

<form>
	<p><input type="text" name="company" value="${row.company }"></p>
	<p><input type="text" name="member" value="${row.member }"></p>
	<p><input type="text" name="type" value="${row.type }"></p>
	<p><input type="file" name="profileImg"></p>
	<p><input type="submit" value="수정"></p>
</form>

</body>
</html>