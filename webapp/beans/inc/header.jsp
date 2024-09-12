<%@ page contentType="text/html; charset=UTF-8"%>

<h2>[머릿말 내용]</h2>
<!-- 머릿말 내용이 출력될 부분 -->
<jsp:useBean id="req" class="com.example.RequestBean" scope="request" />

<jsp:getProperty name="req" property="header"/>

<hr/>
