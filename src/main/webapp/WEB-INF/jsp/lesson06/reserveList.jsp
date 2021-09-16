<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 펜션 예약 목록</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
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
header {
	height: 130px;
}

header .title {
	font-size: 53px;
}

.menu {
	height: 50px;
	background-color: chocolate;
}

.nav-item {
	font-size: 22px;
}

.menu .nav-item:hover {
	background-color: silver;
}

footer {
	height: 100px;
}
</style>
<body>
	<div class="container">
		<header class="d-flex justify-content-center align-items-center">
			<div onclick="location.href='/lesson06/quiz03/main'">
				<span class="title text-secondary">통나무 팬션</span>
			</div>
		</header>
		<div class="menu">
			<ul class="nav nav-fill w-100 h-100 d-flex">
				<li
					class="nav-item d-flex align-items-center justify-content-center" onclick="location.href='#'">
					<div class="text-white opt font-weight-bold">펜션소개</div>
				</li>
				<li
					class="nav-item d-flex align-items-center justify-content-center" onclick="location.href='#'">
					<div class="text-white opt font-weight-bold">객실보기</div>
				</li>
				<li
					class="nav-item d-flex align-items-center justify-content-center" onclick="location.href='/lesson06/quiz03/doReserve'">
					<div class="text-white opt font-weight-bold">예약하기</div>
				</li>
				<li
					class="nav-item d-flex align-items-center justify-content-center" onclick="location.href='/lesson06/quiz03/reserveList'">
					<div class="text-white opt font-weight-bold">예약목록</div>
				</li>
			</ul>
		</div>
		<div>
			<div class="d-flex justify-content-center m-3">
				<h2>예약 목록 보기</h2>
			</div>
			<table class="table">
				<thead class="text-center">
					<tr>
						<th class="col-1">이름</th>
						<th class="col-3">예약날짜</th>
						<th class="col-1">숙박일수</th>
						<th class="col-1">숙박인원</th>
						<th class="col-3">전화번호</th>
						<th class="col-2">예약상태</th>
						<th class="col-1"></th>
					</tr>
				</thead>
				<tbody class="text-center">
					<c:forEach var="reserve" items="${reserveList}">
						<tr>
							<td class="col-1">${reserve.name}</td>
							<td class="col-3">
								<fmt:formatDate value="${reserve.date}" pattern="yyyy년 MM월 dd일"/>
							</td>
							<td class="col-1">${reserve.day}</td>
							<td class="col-1">${reserve.person}</td>
							<td class="col-3">${reserve.phoneNumber}</td>
							<c:if test="${reserve.status eq '대기중'}">
								<td class="col-2 text-primary">${reserve.status}</td>
							</c:if>
							<c:if test="${reserve.status eq '확정'}">
								<td class="col-2 text-success">${reserve.status}</td>
							</c:if>
							<td class="col-1">
								<button type="button" class="delete btn btn-danger" value="${reserve.id}">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<footer class="d-flex align-items-center pl-4">
			<div>
				<span class="copyright text-secondary"> 제주특별자치도 제주시 매일읍<br>
					사업자등록번호: 111-22-20522/농어촌사업자지정/대표:김동욱<br> Copyright 2025 All
					right reserved
				</span>
			</div>
		</footer>
	</div>
</body>
<script type="text/javascript">
		$(document).ready(function() {
			$('.delete').on('click', function() {
				let id = $(this).val();
				
				$.ajax({
					type: 'get'
					, url: '/lesson06/quiz03/deleteReserve'
					, data: {'id':id}
					, success: function(data) {
						location.reload();
					}
					, error: function(e) {
						alert("실패:" + e);
					}
				});
			});
		});
	</script>
</html>