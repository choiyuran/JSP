<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ex03-header.jsp" %>   
 
<div>
	<form method="POST" action="${cpath }/ex03-add-action.jsp" enctype="multipart/form-data">
		<p><input type="text" name="title" placeholder="타이틀"></p>
		<p><input type="file" name="image" accept="image/*"></p>
		<p><input type="submit"></p>
	</form>
</div>

</body>
</html>