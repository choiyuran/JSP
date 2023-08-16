<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<c:set var="name" value="${param.name }" scope="session"/>

<main>
	<fieldset>
		<form method="POST" action="update-action.jsp">
			<p><input type="number" name="kor" placeholder="국어 점수"></p>
			<p><input type="number" name="eng" placeholder="영어 점수"></p>
			<p><input type="number" name="math" placeholder="수학 점수"></p>
			<p><input type="submit" value="작성완료"></p>
		</form>
	</fieldset>
</main>

</body>
</html>