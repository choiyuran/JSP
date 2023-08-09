<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
<style>
	.tr {
		display: flex;	
		border: 1px solid black;
		margin-bottom: -2px; 
		width: fit-content;
	
	}
	.td {
		border: 1px solid grey;
		padding: 10px;
		width: 100px;
	}
	.td:nth-child(2) {
		width: 250px;
	}

</style>
</head>
<body>
<h1>ex03.jsp</h1>
<hr>

<h3>dao 객체를 생성</h3>
<h3>dao의 메서드를 호출하여 리스트 받기</h3>
<h3>JSTL forEach로 출력</h3>
<details>
	<summary>SQL</summary>
	<fileset>
		<pre>
	create table movie (
    movie_rank          number,
    title               varchar2(100),
    openningDate        varchar2(100),
    reserveRate         number(3,1),
    reserveCount        number,
    watchCount          number
	);

	insert into movie values (1, '오펜하이머', '2023-08-15', 32.1, 157757, 0);
	insert into movie values (2, '콘크리트 유토피아', '2023-08-09', 29.5, 144916, 14126);
	insert into movie values (3, '밀수', '2023-07-26', 9.3, 45860, 3667880);
	insert into movie values (4, '보호자', '2023-08-15', 4.2, 20606, 401);
	insert into movie values (5, '비공식작전', '2023-08-02', 4.0, 19880, 759613);
	insert into movie values (6, '더 문', '2023-08-02', 3.7, 18336, 384791);
	insert into movie values (7, '엘리멘탈', '2023-06-14', 3.3, 15987, 6354883);
	insert into movie values (8, '달짝지근해:7510', '2023-08-15', 2.7, 13318, 6637);
	insert into movie values (9, '런닝맨: 리벤져스', '2023-08-10', 1.7, 8390, 2062);
	insert into movie values (10, '명탐정코난: 흑철의 어영', '2023-07-20', 1.6, 8078, 685440);
	commit;	
		</pre>
	</fileset>
</details>

<jsp:useBean id="dao" class="ex03.MovieDAO"/>
<c:set var="list" value="${dao.getList() }"/>
<%-- ${list } --%>

<div class="tr">
	<div class="td">순위</div>
	<div class="td">영화제목</div>
	<div class="td">개봉일</div>
	<div class="td">예매율</div>
	<div class="td">예매관객수</div>
	<div class="td">누적관객수</div>
</div>

<c:forEach var="line" items="${list }">
	<div class="tr">
		<div class="td">
			${line.movie_rank }
		</div>
		
		<div class="td">
			${line.title }
		</div>
		
		<div class="td">	
			${line.openningDate }
		</div>
		
		<div class="td">
			${line.reserveRate }%
		</div>
		
		<div class="td">
			<fmt:formatNumber value="${line.reserveCount }"/>명
		</div>
		
		<div class="td">
			<fmt:formatNumber value="${line.watchCount }"/>명
		</div>
	</div>
</c:forEach>
</body>
</html>