<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
    <style>
        #root {
            display: flex;
            justify-content: space-between;
        }
        #calc {
            cursor: context-menu;
            user-select: none;
            background-color: #f3f3f3;
            width: 320px;
            height: 540px;          /* 많은 요소를 담을때는 높이를 빼는 편 (알아서 조절가능) */
            border: 1px solid black;
            margin: 0 auto;
        }
        /* #calc > div {
            border: 0.5px dashed orangered;
        } */
        .flex {
            display: flex;
        }
        .sb {
            display: flex;
            justify-content: space-between;
        }
        .top {
            padding: 5px 15px;
        }
        .top > .flex > div {
            margin: 0 15px;
        }
        .mode {
            padding: 20px 5px;
        }
        .input {
            font-size: 50px;
            font-weight: bold;
            text-align: right;
            padding: 20px 10px;
            overflow: hidden;
            margin-left: 5px;
           	width: 295px;
           	height: 66px;
        
        }
        .mbtns > div {
            padding: 10px 10px;
            font-size: 14px;                /* 기본값 16px */
        }
        .btns > form {
            display: flex;
            flex-flow: wrap;
        }
        .btns > form > div {
            box-sizing: border-box;
            width: 24%;
            height: 3em;
            line-height: 3em;
            text-align: center;
            border: 0.5px solid #e4e4e4;
            border-radius: 5px;
            margin: 1px auto;
            background-color: white;
            box-shadow: 1px 1px 1px #cccccc;
        }
        .btns > form > div > input {
        	border: 0;
        	background-color: white;
        	font-size: 1.1em;
        	font-weight: 200;
        	width: 74px;
        	height: 46px;
        	
        }

        .btns > div:last-child {
            background-color: #005ca2;
            color: white;
        }

    </style>
</head>
<body>
	<h1>quiz1.jsp</h1>
	<hr>
	

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
		
		if(num.equals("←")) {
			num = "";
			exp = exp.substring(0, exp.length() - 1);
		}

		exp += num;
		if(num.contains("CE")) {
			exp = "";
			result = 0;
			result2 = 0.0;
			//return;
		}
		
		%>
			<h3><%=exp %></h3>
		<%
		if(exp.contains("=")) {
			 if (exp.split(" ").length == 4) {	
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
				else if(exp.split(" ")[1].equals("÷")) {
					result2 = (double)num1 / num2;
				}
				else {
					result = num1 - num2;
					if(num1 < num2) {
						result = -(num2 - num1);
					}
				}
			}
			else  {
			
				out.print("잘못된 연산식입니다.");
				%>
					<br><a href="quiz1_test1.jsp"><button>돌아가기</button></a>
				<% 
				exp = "";
				result = 0;
				return;
			}
			
			if(exp.split(" ")[1].equals("÷")) {
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
	 <div id="root">
        <div id="calc">
            <div class="top sb">
                <div class="">📱 계산기</div>
                <div class="flex">
                    <div>_</div>
                    <div>ㅁ</div>
                    <div>⨉</div>
                </div>
            </div>

            <div class="mode sb">
                <div class="">≡ 표준 ◳</div>
                <div class="">⏱</div>
            </div>

            <div class="input">
            	<% 
            		String input = "";
            		if(exp == "") {
            			input = "0";
            			out.print(input);
            		}
            		else {
            			input += exp;
	            		if(result != 0 || result2 != 0.0) {
	            			if(input.split(" ")[1].equals("÷")) {
	            				out.print(result2);
	            			}
	            			else {
		            			out.print(result);            				
	            			}
	            		}
	            		else {
	            			out.print(input);
	            		}
            		}
            	%>
            </div>

            <div class="mbtns sb">
                <div>MC</div>
                <div>MR</div>
                <div>M+</div>
                <div>M-</div>
                <div>MS</div>
                <div>M∨</div>
            </div>

            <div class="btns">
           		<form method="POST">
                <div>%</div>
                <div><input type="submit" name="num" value="CE"></div>
                <div>C</div>
                <div><input type="submit" name="num" value="←"></div>
                <div>¹/x</div>
                <div>x<sup>2</sup></div>
                <div><sup>2</sup>√x</div>
                <div><input type="submit" name="num" value=" ÷ "></div>
                <div><input type="submit" name="num" value="7"></div>
                <div><input type="submit" name="num" value="8"></div>
                <div><input type="submit" name="num" value="9"></div>
                <div><input type="submit" name="num" value=" * "></div>
                <div><input type="submit" name="num" value="4"></div>
                <div><input type="submit" name="num" value="5"></div>
                <div><input type="submit" name="num" value="6"></div>
                <div><input type="submit" name="num" value=" - "></div>
                <div><input type="submit" name="num" value="1"></div>
                <div><input type="submit" name="num" value="2"></div>
                <div><input type="submit" name="num" value="3"></div>
                <div><input type="submit" name="num" value=" + "></div>
                <div>+/-</div>
                <div><input type="submit" name="num" value="0"></div>
                <div>.</div>
                <div><input type="submit" name="num" value=" = "></div>
                </form>
            </div>
        </div>
    </div>
	
</body>
</html>