<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>
	<h1>quiz1.jsp</h1>
	<hr>
	

	<form method="POST">
		<input type="submit" name="num" value="1">
		<input type="submit" name="num" value="2">
		<input type="submit" name="num" value="3">
		<input type="submit" name="num" value="4">
		<input type="submit" name="num" value="5">
		<input type="submit" name="num" value="6">
		<input type="submit" name="num" value="7">
		<input type="submit" name="num" value="8">
		<input type="submit" name="num" value="9">
		<input type="submit" name="num" value="0">
		<input type="submit" name="num" value=" + ">
		<input type="submit" name="num" value=" - ">
		<input type="submit" name="num" value=" * ">
		<input type="submit" name="num" value=" / ">
		<input type="submit" name="num" value=" = ">
		<input type="submit" name="num" value="CE">
	</form>
	
<%!
	String exp = "";
	int result = 0;
	double result2 = 0.0;
%>
	
<% if(request.getMethod().equals("POST")) {
		request.setCharacterEncoding("UTF-8");
		String num = request.getParameter("num");
		int num1 = 0;
		int num2 = 0;
		String s1 = "";
		String s2 = "";
		
		if("CE".equals(num)) {
			exp = "";
			return;
		}
		exp += num;
		%>
			<h3><%=exp %></h3>
		<%
		
		if(exp.contains("=")) {
			if(exp.split(" ").length > 4) {
				%><br> <%
				out.print("이항 연산만 가능합니다");
				//exp = "";
				return;
			}
			else {	
				s1 += exp.split(" ")[0];
				s2 += exp.split(" ")[2];
				num1 = Integer.parseInt(s1);
				num2 = Integer.parseInt(s2);
		
				if(exp.split(" ")[1].equals("+")) {
					result = num1 + num2;
				}
				else if(exp.split(" ")[1].equals("*")) {
					result = num1 * num2;
				}
				else if(exp.split(" ")[1].equals("/")) {
					result2 = (double)num1 / num2;
				}
				else {
					result = num1 - num2;
					if(num1 < num2) {
						result = -(num2 - num1);
					}
				}
			}
			if(exp.split(" ")[1].equals("/")) {
				%>
					<h3>결과 : <%=exp %> <%=result2 %></h3>
				<%		
			}
			else {	
				%>
					<h3>결과 : <%=exp %> <%=result %></h3>
				<%
			}

		}
				
%>
<%-- 
	<h3><%=num %></h3>
	<h3><%=exp %></h3>
--%>

<% 
	} 
%>
	
</body>
</html>