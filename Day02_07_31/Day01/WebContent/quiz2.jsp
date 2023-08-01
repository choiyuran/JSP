<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2.jsp</title>
</head>
<body>
<h1>quiz2.jsp</h1>
<hr>

<ul>
	<li>날짜를 입력받아서, yyyy년 MM월 dd일 형식의 문자열로 바꿔서 출력하세요</li>
</ul>

<form>
	<p><input type="date" name="birth"></p>
	<p><input type="submit"></p>
</form>

<%
	// String input = sc.nextLine();
	String birth = request.getParameter("birth");

	String date = "";
	if(birth != null) {
		date = birth.replaceFirst("-", "년 ");
		date = date.replace("-", "월 ");
		date += "일";		
	}		
	
%>
<%=date %>


</body>
</html>