<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz3.jsp</title>
<style>
	input[type="number"] {
		width:180px;
	}
</style>
</head>
<body>
<h1>quiz3.jsp - 웹 페이지에서 구동되는 updown game</h1>
<hr>


<form method="POST">
	<p><input type="number" name="answer" placeholder="1 ~ 100사이의 숫자 입력" min="1" max="100" 
			autocomplete="off" autofocus required></p>
	<p><input type="submit" value="정답 확인"></p>
</form>

<%! 
	Random ran = new Random();
	int num = ran.nextInt(100) + 1;
	int count = 0;
%>

<%
	if(request.getMethod().equals("POST")) {
		String sanswer = request.getParameter("answer");
		//if(sanswer != null) {
		int answer = Integer.parseInt(sanswer);
		while(true) {
			answer = Integer.parseInt(request.getParameter("answer"));
			if(answer > num) {
				++count;
				out.print("<h4>"+ answer + "보다 Down</h4>");		
				return;
			}
			else if(answer < num){
				++count;
				out.print("<h4>" + answer + "보다 Up</h4>");
				return;
			}
			else {
				++count;
				out.print("<h4>" + count+ "번째 만에 정답입니다. 정답은 " + answer +"!</h4>");
				num = ran.nextInt(100) + 1;
				count = 0;
				%>
				<a href="quiz3.jsp"><button>다시 하기</button></a>
				<%
				break;
			}
		}
	}
	//}
%>

</body>
</html>