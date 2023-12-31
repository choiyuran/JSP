<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03-form.jsp</title>
</head>
<body>
<h1>ex03-form.jsp</h1>
<hr>

<%-- 쿠키에 한글을 쓰는 것을 딱히 권장하지 않음 ex)최근 본 상품을 쿠키에 담는다고 하면 그 상품의 이름이 아닌 상품번호를 쿠키에 담아놓는다 --%>	
<h3>쿠키를 활용할 때 띄어쓰기 및 특문 처리</h3>
<%
	String value = "";
	Cookie[] cookies = request.getCookies();
	for(int i = 0; cookies != null && i < cookies.length; i++) {
		if(cookies[i].getName().equals("memo")) {
			value = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
		}
	}
%>
<form method="POST">
	<p><input type="text" name="memo" placeholder="내용을 입력하세요" value="<%=value %>" required></p>
	<p><input type="submit"></p>
</form>
<h3>현재 쿠키 값 : <%=value %></h3>
<h3>실제 쿠키 값 : ${cookie.memo.value }</h3>

<%
	request.setCharacterEncoding("UTF-8");

	String memo = request.getParameter("memo");
	if(memo != null) {
		Cookie c = new Cookie("memo", URLEncoder.encode(memo, "UTF-8"));
		c.setMaxAge(600);
		response.addCookie(c);
		response.sendRedirect("ex03-form.jsp");
	}

%>
</body>
</html>