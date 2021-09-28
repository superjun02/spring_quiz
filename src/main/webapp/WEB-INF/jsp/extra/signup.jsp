<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이스타그램</title>
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
.container {
	height: 1000px;
}
</style>
<body>
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="col-4 h-100">
				<div class="text-center pt-2 pb-3">
					<h1>Leestagram</h1>
				</div>
				<b>이름</b> <input type="text" class="form-control" name="name"><br>
				<div>
					<b>아이디</b> <input type="text" class="form-control" name="loginId"><br>
					<div class="d-flex justify-content-end">
						<button type="button" id="urlCheckBtn" class="btn btn-info btn-sm">중복확인</button>
					</div>
				</div>
				<b>비밀번호</b> <input type="password" class="form-control" name="password"><br>
				<b>비밀번호 확인</b> <input type="password" class="form-control" name="passwordChk"><br>
				<b>프로필 이미지</b> <input type="text" class="form-control" name="profileUrl"><br>
				<div class="d-flex justify-content-end">
					<button type="button" class="btn btn-secondary col-4">회원가입</button>
				</div>	
			</div>
		</div>
	</div>
</body>
</html>