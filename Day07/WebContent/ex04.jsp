<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp</title>
<style>
	.wrap {
		border: 1px solid black;
		width: fit-content;
		display: flex;
		margin-bottom: -2px;
	}
	.wrap > div {
		border: 1px solid black;
		padding: 10px;
		width: 250px;
	}
	.wrap > div:first-child, .wrap > div:last-child {
		width: 100px;
	}
	.header {
		background-color: #7878FF;
		color: white; 
		text-align: center;
	}
	.purple {
		background-color: #D2D2FF;
	
		
	}
</style>
</head>
<body>
<h1>ex04.jsp - 멜론 차트</h1>
<hr>
<details>
	<summary>SQL</summary>
	<fileset>
		<pre>
	create table melon (
	    ranking     number,   
	    title       varchar2(100),
	    artist      varchar2(80),
	    album       varchar2(100),
	    likeCount   number
	);
	
	insert into melon values(1, 'Super Shy', 'NewJeans', 'NewJeans 2nd EP ''Get Up''', 124635);
	insert into melon values(2, 'ETA', 'NewJeans', 'NewJeans 2nd EP ''Get Up''', 72628);
	insert into melon values(3, 'Seven(feat.Latto) - Clean Ver.', '정국', 'Seven(fea.Latto)-Clea..', 137573);
	insert into melon values(4, '퀸카(Queencard)', '(여자)아이들', 'I feel', 127567);
	insert into melon values(5, '헤어지자 말해요', '박재정', '1집 Alone', 103467);
	insert into melon values(6, 'I AM', 'IVE(아이브)', 'I''ve IVE', 190809);
	insert into melon values(7, '이브, 프시케 그리고 푸른 수염..', 'Le SSERAFIM(르세라핌)', 'UNFORGIVEN', 99316);
	insert into melon values(8, 'Spicy', 'aespa', 'My WORLD - The 2rd Mi..', 116993);
	insert into melon values(9, 'Steal The Show(From "엘리...', 'Lauv', 'Steal The Show(From"...', 117403);
	insert into melon values(10, 'New Jeans', 'NewJeans', 'NewJeans 2nd EP ''Get Up''', 62054);
	commit;


		</pre>
	</fileset>
</details>

<jsp:useBean id="dao" class="ex04.MelonDAO"/>
<c:set var="list" value="${dao.selectAll() }"/>

	<div class="wrap header">
		<div>순위</div>
		<div>제목</div>
		<div>가수</div>
		<div>앨범</div>
		<div>좋아요</div>
	</div>
<c:forEach var="line" items="${list }" varStatus="st">
	<div class="wrap ${st.index % 2 == 0 ? '' : 'purple' }">
		<div>${line.ranking }</div>
		<div>${line.title }</div>
		<div>${line.artist }</div>
		<div>${line.album }</div>
		<div>🤍<fmt:formatNumber value="${line.likeCount }"/></div>
	</div>
</c:forEach>
</body>
</html>