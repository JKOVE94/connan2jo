<%@ page contentType="text/html; charset=UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>

	<body>
		<%request.setCharacterEncoding("utf-8");%>

			<jsp:useBean id="req" class="com.example.RequestBean" scope="request" />
			<jsp:setProperty property="header" name="req" />
			<jsp:setProperty property="footer" name="req" />
			<jsp:include page="beans/inc/header.jsp" />

			<form method="post" action="requestExam.jsp">
				머릿말에 들어갈 내용 : <br />
				<textarea rows="2" cols="60" name="header"></textarea>
				<br> <br> 꼬릿말에 들어갈 내용 : <br />
				<textarea rows="2" cols="60" name="footer"></textarea>
				<br> <br>
				<button type=submit>새로 고침</button>
			</form>
			<jsp:include page="beans/inc/footer.jsp" />


	</body>

	</html>