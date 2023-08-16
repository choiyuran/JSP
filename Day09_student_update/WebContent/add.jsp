<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
	<fieldset>
		<form method="POST" action="add-action.jsp">
			<p><input type="text" name="name" placeholder="이름"></p>
			<p><input type="number" name="kor" placeholder="국어 점수 "></p>
			<p><input type="number" name="eng" placeholder="영어 점수"></p>
			<p><input type="number" name="math" placeholder="수학 점수"></p>
			<p><input type="submit"></p>
		</form>
	</fieldset>
</main>

</body>
</html>