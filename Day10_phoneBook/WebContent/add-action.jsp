<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="phonebook.PhoneBookDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="row" value="${dao.insert(dto) }"/>
<h3>${row }행이 추가되었습니다</h3>
<a href="${cpath }/list.jsp"><button>목록으로</button></a>

<%-- 페이지 로딩이 걸릴경우 새로고침을 하게 되면 db에 같은 데이터가 여러개 들어가는 문제가 생긴다 --%>
<%-- <c:redirect url="/list.jsp"/> --%>
<%-- redirect를 사용하지 않을 경우 db에 중복값을 허용하지 않는 unique를 제약 조건으로 걸어준다 --%>
</body>
</html>