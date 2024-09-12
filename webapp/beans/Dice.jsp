<%@page import="java.util.Random"%>
<%@page import="java.lang.NullPointerException"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h1>주사위 게임</h1>
	<jsp:useBean id="dice" class="com.example.DiceBean" scope="session"></jsp:useBean>
	<jsp:setProperty property="maxNumber" name="dice" />
	<jsp:setProperty property="minNumber" name="dice" />
	<form action="Dice.jsp" method="post">
		<label for="min">주사위 최소값 : <input type="number" id="min"
			name="minNumber">
		</label>주사위 최대 값 : <label for="max"> <input type="number" id="max"
			name="maxNumber">
		</label>
		<button>적용하기</button>
	</form>
	<%--
	int minnum = 0; // 기본값 설정
	int maxnum = 0; // 기본값 설정

	String minParam = request.getParameter("min");
	String maxParam = request.getParameter("max");

	if (minParam != null && !minParam.isEmpty()) {
		try {
			minnum = Integer.parseInt(minParam);
		} catch (NumberFormatException e) {
		}
	}

	if (maxParam != null && !maxParam.isEmpty()) {
		try {
			maxnum = Integer.parseInt(maxParam);
		} catch (NumberFormatException e) {
		}
	}
	--%>

	
	<h3>
		주사위 눈금은
		<jsp:getProperty property="randomNumber" name="dice" />
		입니다.
	</h3>

	<form action="Dice.jsp" method="post">
		<input type="hidden" name="min" value="<jsp:getProperty property="maxNumber" name="dice"/>"> <input
			type="hidden" name="max" value="<jsp:getProperty property="minNumber" name="dice"/>"> <input
			type="submit" value="다시굴리기">
	</form>
</body>

</html>