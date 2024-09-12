<%@ page contentType="text/html; charset=UTF-8"%>

<hr/>
<h2>[꼬릿말 내용]</h2>
<!-- 꼬릿말 내용이 출력될 부분 -->
<jsp:useBean id="req" class="com.example.RequestBean" scope="request" />
<jsp:getProperty name="req" property="footer"/>
