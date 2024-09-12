<%@page import="com.example.CarDto"%>
<%@page import="java.util.Vector"%>
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
	<jsp:useBean id="parking" class="com.example.ParkingBean"
		scope="application" />

	<jsp:setProperty property="enter" name="parking" />
	<jsp:setProperty property="exit" name="parking" />

	<h1>주차 관리 프로그램</h1>

	<form action="parking.jsp" method="post">
		<label for="incarnum">주차장에 들어온 차 번호 : </label> <input type="text"
			name="enter" id="incarnum" /> <input type="submit" value="입차" />
	</form>
	<form action="parking.jsp" method="post">
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
		Vector<CarDto> cars = parking.getCarList();
		for (int i = 0; i < cars.size(); i++) {
			CarDto dto = cars.get(i);
		%>

		<tr>
			<td><%=dto.getPlateNumber()%></td>
			<td><%=dto.getParkingTime()%></td>
		</tr>

		<%
		}
		%>
	</table>
	<hr />

	<h2>
		총 대수 :
		<jsp:getProperty property="total" name="parking" /></h2>
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
