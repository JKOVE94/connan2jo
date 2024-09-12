<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String path = getServletContext().getRealPath("/");
	boolean newUser = session.isNew();
	%>

	<jsp:useBean id="counter" class="com.example.Counter" scope="application">
		<jsp:setProperty property="filePath" name="counter" value="<%=path%>" />
		<jsp:getProperty property="fileIn" name="counter" />
	</jsp:useBean>
	<jsp:setProperty property="new" name="counter" value="<%=newUser%>" />

	<jsp:getProperty property="welcome" name="counter"/>
	<jsp:getProperty property="fileOut" name="counter" />
	<h3>
		총 방문자 :
		<jsp:getProperty property="count" name="counter" />
	</h3>


</body>
</html>