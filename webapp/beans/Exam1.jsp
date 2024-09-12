<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>간단한 Bean 예제</h1>
	<!-- SimpleBean cal = new SimpleBean(); -->
	<jsp:useBean id="cal" class="com.example.SimpleBean"></jsp:useBean>
	<%-- <%= cal.getYear()%> --%>
	오늘은 <jsp:getProperty property="year" name="cal"/> 년
	<jsp:getProperty property="month" name="cal"/>월
	<jsp:getProperty property="date" name="cal"/>일 입니다.
	
	<jsp:setProperty property="year" name="cal" value="20"/>
	
	오늘은 <jsp:getProperty property="year" name="cal"/> 년
	<jsp:getProperty property="month" name="cal"/>월
	<jsp:getProperty property="date" name="cal"/>일 입니다.
	
	
</body>
</html>