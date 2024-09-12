<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전체 방문자 수 확인</h1>
	<jsp:useBean id="counter" class="com.example.ApplicationBean" scope="application">
		<jsp:setProperty name="counter" property="newVisit" value="1"/>
	</jsp:useBean>
	
	
	<h3> 전체 방문자 수 : <jsp:getProperty property="visitCount" name="counter"/> 명</h3>
	
	<jsp:setProperty property="restart" name="counter"/>
	<form method="post">
		<input type="submit" value ="새로 고침" name="refresh"/>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value ="카운터 리셋" name="restart"/>
	</form>
	
	<br><br>
	<h1>참/거짓 여부</h1>
	<jsp:getProperty property="valid" name="counter"/>
	
</body>
</html>