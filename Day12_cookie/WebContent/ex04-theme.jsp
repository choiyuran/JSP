<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-theme.jsp</title>
<style>
	marquee {
		font-size: 18px;
		font-weight: bold;
		padding: 10px;
	}
	.white {
		background-color: white;
		color: black;
	}
	.dark {
		background-color: #aaa;
		color: #eee;
	}
	.black {
		background-color: black;
		color: white;
	}
	.warning {
		background-color: orangered;
		color: yellow;
	}
</style>
</head>
<body>
<h1>ex04-theme.jsp</h1>
<hr>

<h3>컬러 테마를 쿠키에 저장하고 적용하기</h3>
<c:set var="theme" value="${cookie.theme.value }"/>
<%-- <h3>남은 시간 : ${cookie.theme.maxAge }</h3> --%>

<form method="POST">
	<p>
		<select name="theme" required>
			<option value="">=== 색상 테마를 선택하세요 ====</option>
			<option ${theme == 'white' ? 'selected' : ''} value="white">화이트</option>
			<option ${theme == 'dark' ? 'selected' : ''} value="dark">다크</option>
			<option ${theme == 'black' ? 'selected' : ''} value="black">블랙</option>
			<option ${theme == 'warning' ? 'selected' : ''} value="warning">경고</option>
		</select>
		<input type="submit">
	</p>
</form>

<%

	String theme = request.getParameter("theme");
	if(theme != null) {
		Cookie c = new Cookie("theme", theme);
		c.setMaxAge(60);
		response.addCookie(c);
		response.sendRedirect(request.getRequestURL().toString());
		// 현재 주소를 리다이렉트 하도록 요청한다(새로고침)
		
	}
%>


<fieldset>
	<legend>테스트 내용</legend>
	<marquee direction="up" scrollamount="2" class="${cookie.theme.value }">
	<pre>
I'm your future lover
타락한 밤 너의 ruler
영화 속 달콤한 promise
믿지 않아 let's be honest, yeah

틀린 건 없어 when it feels so right
닿지 않아도 이미 느끼잖아
나쁠 건 없어 when it feels so right
니 위를 봐 I'm your goddess (yah)

How many lovers do I go through to find you?
How many heartbreaks I take just to get to you?
How many lovers do I go through to find you?
(One) how many, (two) how many, (three) how many?
Fast forward

Girl, you the one stop, got it all
Diamond-kissed, head to toe
Sunshine got the glow
Need you bad, never go
One stop, domino
That's how quick you made me fall

So in love, yeah
That's so us (yah)

How many lovers do I go through to find you?
How many heartbreaks I take just to get to you?
How many lovers do I go through to find you?
(One) how many, (two) how many, (three) how many?
Fast forward

(How many, how many, how many)
(How many, how many, how many)

흔들린 pendulum 너를 부를 때
이 뒤틀린 시간 속 넌 내 눈앞에
Now think of the one you want
Picturing my face
And I'll be the one you on
I'll be the one you on
I'll be the one you want
I can hear you say
Fast forward

(Yeah, yeah, yeah, yeah-eh-eh)
Fast forward
(Yeah, yeah, yeah, yeah-eh-eh)
Fast forward
	</pre>
	</marquee>
</fieldset>
</body>
</html>