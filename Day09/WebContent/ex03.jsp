<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="youtube.YoutubeDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
<style>
	#root{
      width: 100%;
   }
   .wrap{
      display: flex;
      flex-flow: wrap; 
      width:820px;
      margin: auto;
   }
   .item{
      width: 250px;
      margin: 10px;
   }
   .thumbnail > img{
      border-radius:10px;
      width: 250px; 
   }
   .title{
      font-weight: bold;
   }
   .channel{
      font-size: 0.9em;
      color : grey;
   }
   h3 {
   		text-align: center;
   }
</style>
</head>
<body>
<h1>ex03.jsp</h1>
<hr>
<c:set var="dao" value="${YoutubeDAO.getInstance() }"/>
<c:set var="list" value="${dao.selectAll() }"/>

<h3>커넥션풀과 싱글톤이 적용된 dao를 이용하여 목록을 화면에 띄워보세요</h3>
<h3>select * from youtube order by idx</h3>

<div id="root">
	<div class="wrap">
		<c:forEach var="dto" items="${list }">
			<div class="item">
			 	<div class="thumbnail"><img src="${dto.thumbnail }"></div>
			 	<div class="title">${dto.title }</div>
			 	<div class="channel">${dto.channel }</div>
			 	<div class="viewCount">조회수 : ${dto.viewCount }</div>
		 	</div>
		</c:forEach>
	</div>
</div>
</body>
</html>