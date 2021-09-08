<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기상청</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<style>
aside {
	background-color: #0098e0;
}
</style>
<body>
	<div class="container d-flex">
		<aside class="col-2">
			<div>
				<img alt="로고" src="/images/logo.png">
			</div>
			<div class="mt-3">
				<ul class="nav flex-column">
					<li>
						<a href="/lesson05/quiz05" class="nav-link text-white pl-2">날씨</a>
					</li>
					<li>
						<a href="/lesson05/quiz05_1" class="nav-link text-white  pl-2">날씨입력</a>
					</li>
					<li>
						<a href="#" class="nav-link text-white pl-2">테마날씨</a>
					</li>
					<li>
						<a href="#" class="nav-link text-white  pl-2">관측 기후</a>
					</li>
				</ul>
			</div>
		</aside>
		<div class="col-10">
			<div class="mt-2 ml-4">
				<h3>과거 날씨</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th class="col-3">날짜</th>
							<th class="col-1">날씨</th>
							<th class="col-2">기온</th>
							<th class="col-2">강수량</th>
							<th class="col-2">미세먼지</th>
							<th class="col-2">풍속</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="weatherhistory" items="${weatherhistorys}">
							<tr>
								<td>
								<fmt:formatDate value="${weatherhistory.date}"
										pattern="yyyy년 MM월 dd일" />
								</td>
								<td>
								<c:if test="${weatherhistory.weather eq '맑음'}">
									<img alt="맑음" src="/images/sunny.jpg">
								</c:if> 
								<c:if test="${weatherhistory.weather eq '구름조금'}">
									<img alt="구름조금" src="/images/partlyCloudy.jpg">
								</c:if>
								<c:if test="${weatherhistory.weather eq '흐림'}">
									<img alt="흐림" src="/images/cloudy.jpg">
								</c:if> 
								<c:if test="${weatherhistory.weather eq '비'}">
									<img alt="비" src="/images/rainy.jpg">
								</c:if>
								</td>
								<td>${weatherhistory.temperatures}°C</td>
								<td>${weatherhistory.precipitation}mm</td>
								<td>${weatherhistory.microDust}</td>
								<td>${weatherhistory.windSpeed}km/h</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>