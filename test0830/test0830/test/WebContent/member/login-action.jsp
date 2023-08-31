<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="login" value="${memberDAO.login(dto) }" scope="session"/>

<%
	String storeId = request.getParameter("storeId");
	boolean flag1 = storeId != null;
	boolean flag2 = session.getAttribute("login") != null;
	
	Cookie c = new Cookie("userid", request.getParameter("userid"));
	c.setMaxAge(flag1 && flag2 ? 60 * 60 * 24 * 7 : 0);
	response.addCookie(c);
	
	String autologin = request.getParameter("autologin");
	boolean flag3 = autologin != null;
	
	Cookie auto = new Cookie("JSESSIONID", session.getId());
	auto.setMaxAge(flag2 && flag3 ? 60 * 60 * 24 * 7 : 0);
	response.addCookie(auto);
	
%>

<c:redirect url="/" />

</body>
</html>