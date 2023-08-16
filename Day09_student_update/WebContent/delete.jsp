<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="dao" value="${StudentDAO.getInstance() }"/>
<c:set var="dto" value="${dao.delete(param.name) }"/>
<c:redirect url="/list.jsp"/>

</body>
</html> 