<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
	<form method="POST" action="${cpath }/add-action.jsp">
		<p><input type="text" name="name" placeholder="이름"></p>
		<p><input type="text" name="phone" placeholder="전화번호"></p>
		<p><input type="text" name="userid" placeholder="아이디"></p>
		<p><input type="text" name="buy" placeholder="구매물품"></p>
		<p><input type="number" name="price" placeholder="가격"></p>
		<p><input type="submit" value="등록"></p>
	</form>
</main>

</body>
</html>