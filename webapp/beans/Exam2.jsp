<%@page import="com.example.MessageBean"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.a>td {
	text-align: center;
	padding: 0 10px;
	font-weight: bold;
}
</style>

</head>

<body>
	<h1>간단한 Bean 예제2</h1>
	<h3>Bean ClassName : com.example.MessageBean</h3>
	<h5>Property Spec.</h5>
	<table border="black">
		<tr class="a">
			<td>name</td>
			<td>r/w</td>
			<td>datatype</td>
			<td>description</td>
		</tr>
		<tr>
			<td>message</td>
			<td>r/w</td>
			<td>String</td>
			<td>메시지를 저장하고 가져오는 기능</td>
		</tr>
	</table>
	<br>
	<form method="get" action="../personal/test1.jsp">
		<label for="message">message : <input type="text" id="message"
			name="message">
			<button>submit</button> <br>
		</label>
	</form>
	<%
	String mess = request.getParameter("message");
	%>
	<jsp:useBean id="message" class="com.example.MessageBean"></jsp:useBean>
	<jsp:setProperty property="message" name="message" value="<%=mess%>" />
	<br>


	<%-- <jsp:setProperty property="message" name="message" value="간단하게 작성한 빈 메시지 입니다." />--%>
	메시지 :
	<jsp:getProperty property="message" name="message" />
	<hr/>
	
	<%
		MessageBean msg2 = new MessageBean();
		msg2.setMessage("이것은 스크립트릿으로 작성된 구문입니다.");
	%>
	메시지 : <%=msg2.getMessage() %>
</body>

</html>


<!-- 
name   r/w    datatype   description
--------------------------------------
message   r/w   String     메시지를 저장하고 가져오는 기능


r/w 의미는 getter(r)와 setter(s)을 의미한다
 -->