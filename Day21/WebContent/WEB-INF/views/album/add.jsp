<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
<body>

<h1>앨범 등록</h1>
<hr>

<form method="POST" enctype="multipart/form-data" >
	<p><input type="text" value="${param.name }" readonly></p>
	<p><input type="hidden" name="artist_id" value="${param.id }" autofocus required></p>
	<p><input type="text" name="name" placeholder="앨범 이름" required></p>
	<p><input type="text" name="type" placeholder="장르" required></p>
	<p>발매일<input type="date" name="rDate"></p>
	<p><input type="number" name="playTime" placeholder="재생시간"></p>
	<p><input type="file" name="coverImg"></p>
	<P><input type="submit" value="등록"></P>
</form>


</body>
</html>