<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.FileWriter"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int visitCount;
	String path;

	public void jspInit() {
		BufferedReader br = null;
		try {
			path = getServletContext().getRealPath("/");
			br = new BufferedReader(new FileReader(path + "\\counter.txt"));
			visitCount = Integer.parseInt(br.readLine());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (Exception e) {
				}
			}
		}
	}

	public void setFile() {
		PrintWriter pw = null;
		try {
			pw = new PrintWriter(path + "\\counter.txt");
			pw.write(Integer.toString(visitCount));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pw.flush();
			pw.close();
		}
	}

	public void jspDestroy() {
		setFile();
	}
	%>

	<%
	if (session.isNew()) {
		visitCount++;
		if (visitCount % 10 == 0) {
			setFile();
		}
	}
	%>

	<h3>
		총 방문자 :
		<%=visitCount%>
	</h3>


</body>
</html>