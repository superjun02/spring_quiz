<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1. JSTL core 변수</h1>
	<c:set var="number1" value="36" />
	<b>첫번째 숫자: ${number1}</b><br><br>
	<c:set var="number2" value="3" />
	<b>두번째 숫자: ${number2}</b>
	
	<h1>2. JSTL core 연산</h1>
	<b>더하기: ${number1 + number2}</b><br><br>
	<b>뻬기: ${number1 - number2}</b><br><br>
	<b>곱하기: ${number1 * number2}</b><br><br>
	<b>나누기: ${number1 / number2}</b><br><br>
	
	<h1>3. JSTL core out</h1>
	<b><c:out value="<title>core out</title>" escapeXml="true"></c:out></b>
	
	<h1>4. JSTL core if</h1>
	<c:if test="${(number1 + number2) / 2.0 >= 10 }">
		<h1>${(number1 + number2) / 2.0}</h1>
	</c:if>
	
	<c:if test="${(number1 + number2) / 2.0 < 10 }">
		<h3>${(number1 + number2) / 2.0}</h3>
	</c:if>
	
	<h1>5. core if</h1>
	<c:if test="${(number1 * number2) > 100}">
		<c:out value="<script>alert('너무 큰 수 입니다.')</script>" escapeXml="false"></c:out>
	</c:if>
</body>
</html>