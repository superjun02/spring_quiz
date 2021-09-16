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
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>  
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      
   	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
		<div class="d-flex justify-content-center w-100">
			<div class="col-5">
				<div class="d-flex justify-content-center m-4">
					<h3>예약 하기</h3>
				</div>
				<div>
					<div class="form-group">
						<b>이름</b>
						<div class="pt-2">
							<input type="text" class="form-control" name="name" id="name" autocomplete="off"><br>
						</div>	
						
						<b>예약날짜</b>
						<div class="pt-2">
							<input type="text" class="form-control" name="date" id="date" autocomplete="off"><br>
						</div>	
						
						<b>숙박일수</b>
						<div class="pt-2">
							<input type="text" class="form-control" name="day" id="day" autocomplete="off"><br>
						</div>		
						
						<b>숙박인원</b>
						<div class="pt-2">
							<input type="text" class="form-control" name="person" id="person" autocomplete="off"><br>
						</div>	
						
						<b>전화번호</b>
						<div class="pt-2">
							<input type="text" class="form-control" name="phoneNumber" id="phoneNumber" autocomplete="off"><br>
						</div>	
					</div>				
					<input type="button" id="reserveBtn" class="btn btn-warning w-100" value="예약하기">
				</div>
			</div>	
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
		$("#date").datepicker({
            dayNamesMin : ['일', '월', '화', '수', '목', '금', '토']
		       	, showButtonPanel: true
				, currentText: "오늘"
		        , closeText: "Done"
		        , minDate: 0
        });
		
		$('#reserveBtn').on('click', function() {
			let name = $('#name').val().trim();
			if (name == "") {
				alert("이름을 입력하세요");
				return false;
			}
			
			let date = $('#date').val();
			if (date == "") {
				alert("예약날짜를 입력하세요");
				return false;
			}
			
			let day = $('#day').val().trim();
			if (day == "") {
				alert("숙박일수를 입력하세요");
				return false;
			}
			
			let person = $('#person').val().trim();
			if (person == "") {
				alert("숙박인원을 입력하세요");
				return false;
			}
			
			let phoneNumber = $('#phoneNumber').val().trim();
			if (phoneNumber == "") {
				alert("전화번호를 입력하세요");
				return false;
			}
			
			if (isNaN(day)) {
				alert("숙박일수는 숫자만 입력하세요");
				return false;
			}
			
			if (isNaN(person)) {
				alert("숙박인원은 숫자만 입력하세요");
				return false;
			}
			
			let status = "대기중";
			
			$.ajax({
				type: 'POST'
				, url: '/lesson06/quiz03/addReserve'
				, data: {"name":name, "date":date, "day":day, "person":person, "phoneNumber":phoneNumber, "status":status}
				, success: function(data) {
					location.href = "/lesson06/quiz03/main";
					alert(data);
				}
				, complete: function(data) {
					alert("완료");
				}
				, error: function(e) {
					alert("에러: " + e);
				}
			});
		});
	});
</script>
</html>