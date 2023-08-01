<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ex05_result.jsp</title>
</head>
<body>

<h1>ex05_result.jsp</h1>
<hr>

<%
	String n1 = request.getParameter("n1");
	String n2 = request.getParameter("n2");
	
	int answer = 0;
	
	if(n1 != null && n2 != null) {
		int num1 = Integer.parseInt(n1);
		int num2 = Integer.parseInt(n2);
		answer = num1 + num2;
	}
%>
<h3><%=n1 %> + <%=n2 %> = <%=answer %></h3>
<a href="ex05_form.jsp"><button>입력장으로</button></a>
</body>
</html>