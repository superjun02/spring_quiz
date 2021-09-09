<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 입력</title>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>  
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      
   	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
    <link rel="stylesheet" type="text/css" href="quiz01_style.css">
</head>
<style>
aside {
	background-color: #0098e0;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("#date").datepicker({
            dayNamesMin : ['일', '월', '화', '수', '목', '금', '토']
                , showButtonPanel: true
                , currentText: "오늘"
                , closeText: "Done"

        });

	
		$('#submit').on('click', function(event) {
	
			var date = $("#date").val();
			var weather = $("#weather").val();
			var microDust = $("#microDust").val();
			var temperatures = $("#temperatures").val();
			var precipitation = $("#precipitation").val();
			var windSpeed = $("#windSpeed").val();
	
			if (!($.isNumeric(temperatures)) || !($.isNumeric(precipitation)) || !($.isNumeric(windSpeed))) {
				alert("숫자 이외의 값을 입력하지마시오");
				return false;
			}
			if (date == null || temperatures == null || windSpeed == null) {
				alert("입력안한 정보가 있습니다");
				return false;
			}
			$('#frm').attr('action', '/lesson05/quiz05_2').submit();
		});
	})
</script>
<body>
	<div class="container">
		<div class="d-flex w-100">
			<aside class="col-2">
				<div>
					<img alt="로고" src="/images/logo.png">
				</div>
				<div class="mt-3">
					<ul class="nav flex-column">
						<li><a href="/lesson05/quiz05"
							class="nav-link text-white pl-2">날씨</a></li>
						<li><a href="/lesson05/quiz05_1"
							class="nav-link text-white  pl-2">날씨입력</a></li>
						<li><a href="#" class="nav-link text-white pl-2">테마날씨</a></li>
						<li><a href="#" class="nav-link text-white  pl-2">관측 기후</a></li>
					</ul>
				</div>
			</aside>
			<div class="col-10">
				<div class="mt-2 ml-4">
					<h3>날씨 입력</h3>
					<form name="frm" id="frm" method="post">
						<div class="d-flex w-100 justify-content-between pt-3">
							<div class="form-inline w-50">
	              				날짜<input type="text" class="form-control ml-3" name="date" id="date">
	                        </div>
	                        <div class="form-inline w-25">
	                        	날씨
								<select class="form-control col-6 ml-3" name="weather" id="weather">
									<option value="맑음">맑음</option>
									<option value="구름조금">구름조금</option>
									<option value="흐림">흐림</option>
									<option value="비">비</option>
								</select> 
							</div>
							<div class="form-inline w-25 justify-content-end">
								미세먼지
								<select class="form-control col-6 ml-3" name="microDust"
									id="microDust">
									<option value="좋음">좋음</option>
									<option value="보통">보통</option>
									<option value="나쁨">나쁨</option>
									<option value="최악">최악</option>
								</select>
							</div>	
						</div>
						<div class="d-flex pt-4 w-100">
							<div class="form-inline">
								<div>
									온도
								</div>
								<input type="text" class="form-control ml-3 col-7" name="temperatures" id="temperatures">
								<div class="input-group-append">
									<span class="input-group-text">°C</span> 
								</div>
							</div>
							
							<div class="form-inline  justify-content-center">
								<div>
									강수량
								</div>
								<input type="text" class="form-control ml-3 col-7" name="precipitation" id="precipitation" value="0.0">
								<div class="input-group-append">
									<span class="input-group-text">mm</span> 
								</div>
							</div>
							
							<div class="form-inline justify-content-end">
								<div>
									풍속
								</div>
								<input type="text" class="form-control ml-3 col-7" name="windSpeed" id="windSpeed">
								<div class="input-group-append">
									<span class="input-group-text">km/h</span> 
								</div>
							</div>
						</div>	
						<div class="d-flex justify-content-end pt-4">
							<button type="submit" id="submit"
								class="form-control btn-success col-1">저장</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<footer class="d-flex">
			<div class="col-2">
				<img alt="footer" src="/images/footer.png">
			</div>
			<div class="col-10 pt-2">
				<small class="text-secondary">
				(07062) 서울시 동작구 여의대방로16길 61<br>
				Copyright@2020 KMA. All Rights RESERVED.
				</small>
			</div>
		</footer>
	</div>
</body>
</html>