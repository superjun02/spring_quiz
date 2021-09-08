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
				<h3>날씨 입력</h3>
			</div>
		</div>
	</div>
</body>
</html>