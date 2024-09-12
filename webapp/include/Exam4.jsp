<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>This is Exam4.jsp</h1>

	exam5에게 파라미터를 전달
	<br>
	<jsp:include page="Exam5.jsp">
		<jsp:param value="scott" name="id" />
		<jsp:param value="1111" name="pw" />
	</jsp:include>
</body>
</html>