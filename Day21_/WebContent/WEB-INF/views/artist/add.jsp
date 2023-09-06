<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<h3>가수 등록</h3>
<hr>

<form method="POST" enctype="multipart/form-data" >
	<p><input type="text" name="name" placeholder="가수 이름" autofocus required></p>
	<p><input type="text" name="company" placeholder="소속사" required></p>
	<p><input type="text" name="country" placeholder="국적" required></p>
	<p><input type="text" name="member" placeholder="멤버" required></p>
	<p><input type="date" name="debut"></p>
	<p><input type="text" name="type" placeholder="그룹 타입"></p>
	<p><input type="file" name="profileImg"></p>
	<P><input type="submit" value="등록"></P>
</form>


</body>
</html>