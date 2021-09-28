<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 펜션</title>
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
<script>
	$(document).ready(function() {
		var image = [
				"http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg",
				"http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner2.jpg",
				"http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner3.jpg",
				"http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner4.jpg" ];

		var count = 1;
		setInterval(function() {
			$("#img").attr("src", image[count]);
			count++;
			if (count == image.length) {
				count = 0;
			}
		}, 3000);

	});
</script>
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

.banner {
	height: 500px;
}

.reserve {
	height: 300px;
}

.reserve .article1 {
	width: 33%;
	background-color: rgb(155, 62, 0);
}

.reserve .article1 .article1Text {
	font-size: 50px;
}

.reserve .article2 {
	width: 42%;
	background-color: chocolate;
}

.reserve .article2 .reserveCheck {
	height: 15%;
}

.reserve .article2 .reserveCheck .reserveText {
	font-size: 26px;
}

.reserve .article2 .inputBox {
	height: 85%;
}
.reserve .article3 {
	width: 25%;
	background-color: rgb(155, 62, 0);
}
.reserve .article3 .article3Text {
	font-size: 25px;
}
.reserve .article3 .number {
	font-size: 43px;
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
		<section>
			<div id="slide">
				<img
					src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg"
					id="img" alt="배너1" width="1110">
			</div>
		</section>
		<section class="reserve d-flex">
			<div
				class="article1 d-flex justify-content-center align-items-center">
				<div>
					<span class="article1Text text-white"> 실시간<br> 예약 하기
					</span>
				</div>
			</div>
			<div class="article2">
				<div class="w-100 h-100 m-4">
					<div class="inputBox col-10">
						<h2 class="text-white">예약 확인</h2>
						<form>
							<div class="form-inline form-group mt-3 ml-4">
								<div class="text-white d-flex justify-content-end ml-1">이름:</div>
								<div class="idBox ml-4">
									<input type="text" class="form-control" id="name" name="name" autocomplete="off">
								</div>
							</div>
						</form>
						<form>
							<div class="form-inline form-group mt-3 ">
								<div class="text-white d-flex justify-content-end">
									전화번호:
								</div>		
								<div class="passwordBox ml-3 pl-1">
									<input type="text" class="form-control" id="phoneNumber" name="phoneNumber" autocomplete="off">
								</div>
							</div>
						</form>
						<div class="submitBox d-flex justify-content-end">
							<button type="button" id="reserveCheckBtn"
								class="form-control btn btn-success col-3 mr-3">조회하기</button>
						</div>
					</div>
				</div>
			</div>
			<div
				class="article3 d-flex justify-content-center align-items-center">
				<div>
					<span class="article3Text text-white"> 예약 문의: </span><br> <span
						class="number text-white"> 010-<br> 000-1111
					</span>
				</div>
			</div>
		</section>
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
	$(document).ready(function () {
		$('#reserveCheckBtn').on('click', function() {
			let name = $('#name').val().trim();
			
			if (name == "") {
				alert("이름을 입력하세요");
				return false;
			}
			
			let phoneNumber = $('#phoneNumber').val().trim();
			
			if (phoneNumber == "") {
				alert("전화번호를 입력하세요");
				return false;
			}
			
			$.ajax({
				type: 'get'
				, url: '/lesson06/quiz03/checkReserve'
				, data: {'name':name, 'phoneNumber':phoneNumber}
				, success: function(data) {
					if (data.result == '성공') {
						alert("이름: " + data.name  + "\n날짜: " + data.date + "\n일수: " + data.day + "\n인원: " + data.person
								+ "\n상태: " + data.status);
					} else {
						alert("예약 내역 없음");
					}
				}
				, error: function(e) {
					alert("실패:" + e);
				}
			});
		});
	});
</script>
</html>