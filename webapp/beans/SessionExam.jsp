<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션을 이용한 타이머</h1>
	<jsp:useBean id="timer" class="com.example.SessionBean" scope="session">
		세션 시작입니다. 타이머 작동을 시작합니다.<br><br>
	</jsp:useBean>

	bean의 프로퍼티를 마지막으로 접근한 뒤에 경과한 시간은 <jsp:getProperty property="elapsedTimeAfterInstAccess" name="timer"/> 초입니다.<br><br>
	
	타이머를 리셋한 뒤에 경과된 시간은 <jsp:getProperty property="elapsedTime" name="timer"/> 초 입니다. <br><br>
	
	타이머가 시작된 뒤에 경과된 시간은 <jsp:getProperty property="elapsedTimeAfterInst" name="timer"/> 초 입니다. <br><br>

	<jsp:setProperty property="restart" name="timer"/>
	<form method="post" action="SessionExam.jsp">
		<button>경과시간 확인</button>
		<input type="submit" name="restart" value="타이머 리셋"></input>
	</form>
	<br>
</body>
</html>