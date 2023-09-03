<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write.jsp</title>
</head>
<body>
<h1>write.jsp</h1>
<hr>

<form method="POST">
	<p><input type="text" name="title" placeholder="제목"></p>
	<p><input type="text" name="writer" placeholder="작성자"></p>
	<p><textarea name="content" placeholder="내용을 작성하세요"></textarea></p>
	<p><input type="submit" value="등록"></p>
</form>

</body>
</html>