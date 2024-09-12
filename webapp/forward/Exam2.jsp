<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>This is Exam2.jsp</h1>
	이 페이지는 조건을 만족할 경우 exam3로 이동합니다.<br>
	만약 조건을 만족하지 않는 다면 페이지 이동을 하지 않습니다.
	<%
	String name = request.getParameter("name");
	String pageUrl = request.getParameter("page");
	if(name.equals("hong")){ %>
		<jsp:forward page="<%=pageUrl %>">
			<jsp:param name="nation" value="korea"/>
		</jsp:forward>
		<%
	}
	%>
</body>
</html>