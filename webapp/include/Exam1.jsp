<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="inc/header.jsp" %>
	<%-- int i=100; --%>
	<%=i %>
	<!--<jsp:include page="inc/header.jsp"></jsp:include>-->
	<h1>Hello World!</h1>
	<h3>여기는 메인페이지 입니다.</h3>
	<jsp:include page="inc/footer.jsp"/>
	<%int j=1000; %>
	<%=j%>
</body>
</html>