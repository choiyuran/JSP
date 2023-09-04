<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<c:set var="dto" value="${boardDAO.selectOne(param.idx) }"/>
	
	<c:set var="del" value="${fileUtil.delFile(dto.uploadFile) }"/>
	
	<c:set var="row" value="${boardDAO.removeFile(dto.idx) }"/>
	
	<c:redirect url="${header['referer'] }" />
</body>
</html>