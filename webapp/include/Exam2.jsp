<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>This is Exam2.jsp</h1>
	<%
	pageContext.setAttribute("first", "pageContext 객체");
	request.setAttribute("first", "request 객체");
	session.setAttribute("first", "session 객체");
	application.setAttribute("first", "application 객체");
	%>
	pageContext :
	<%=pageContext.getAttribute("first")%><br> request :
	<%=request.getAttribute("first")%><br> session :
	<%=session.getAttribute("first")%><br> application :
	<%=application.getAttribute("first")%><br>
	<hr>
	<%@include file="Exam3.jsp"%>
	<!--<jsp:include page="Exam3.jsp" />-->
	<hr>
	<h1>Exam2.jsp Second</h1>
	pageContext :
	<%=pageContext.getAttribute("second")%><br> request :
	<%=request.getAttribute("second")%><br> session :
	<%=session.getAttribute("second")%><br> application :
	<%=application.getAttribute("second")%><br>
</body>
</html>