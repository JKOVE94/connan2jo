<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="parking2" class="com.example.ParkingBean2"
		scope="application" />

	<jsp:setProperty property="enter" name="parking2" />
	<jsp:setProperty property="exit" name="parking2" />

	<h1>주차 관리 프로그램</h1>

	<form action="parking2.jsp" method="post">
		<label for="incarnum">주차장에 들어온 차 번호 : </label> <input type="text"
			name="enter" id="incarnum" /> <input type="submit" value="입차" />
	</form>
	<form action="parking2.jsp" method="post">
		<label for="outcarnum">주차장에서 나간 차 번호 : </label> <input type="text"
			name="exit" id="outcarnum" /> <input type="submit" value="출차" />
	</form>
	<hr />
	<h2>주차된 차량 목록</h2>
	<table border=1>
		<tr>
			<th>차량 번호</th>
			<th>입차 시간</th>
		</tr>
		<%
		HashMap<String,Date> car = parking2.getCar();
		for(String plate : car.keySet()){
		%>
		<tr>
			<td><jsp:getProperty property="plateNo" name="parking2"/></td>
			<td><jsp:getProperty property="time" name="parking2"/></td>
		</tr>
		<%
		}
		%>
	</table>
	<hr />

	<h2>
		총 대수 :
		<jsp:getProperty property="total" name="parking2" /></h2>
</body>
</html>


<!--
class name : com.example.CarDto 
=====Property Sepc=====
plateNumber   r  String
ParkingTime   r  java.util.Date   

class name : com.example.ParkingBean 
=====Property Sepc=====
enter     w   String
exit      w   String
total     r   int
car       r   CarDto
carList   r   carDto[]  

1. 차량번호와 입차시간을 출력하는 코드를 액션태그로
2. CarDto대신 Map Collection 사용
 -->
