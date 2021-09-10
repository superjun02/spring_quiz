<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족</title>
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
.main {
	margin: auto;
	width: 600px;
}

header {
	background-color: #12a3b8;
	height: 80px;
}

.side {
	border-style: solid;
	border-radius: 5px;
	border-color: #12a3b8;
}

.menuBox {
	border-style: solid;
	border-radius: 5px;
	background-color: #e1e1e1;
	border-color: #e1e1e1;
	display: inline-block;
}
.noReview {
	height: 120px;
}
</style>
<body>
	<div class="main">
		<header class="text-white d-flex align-items-center pl-4">
			<h2>배달의 민족</h2>
		</header>
		<div class="menu">
			<div class="display-4 d-flex align-items-center mt-2 mb-2">
				${storeName}-리뷰
			</div>
			<c:if test="${reviews eq '[]'}">
				<div class="noReview d-flex ml-5 align-items-center">
					<h1><b>작성된 리뷰가 없습니다.</b></h1>
				</div>
			</c:if>
			<c:forEach var="review" items="${reviews}">	
				<div class="pt-3">
					<div class="side">
						<div class="d-flex align-items-center pl-3 h-100">
							<div class="mb-1 pt-3 pb-3">
								<div class="d-flex">
									<b>${review.userName}</b>
									<div class="pl-2">
										<c:forEach begin="1" end="${review.point}" step="1"
											varStatus="status">
											<img alt="star_fill" src="/images/star_fill.png" width="15"
												height="17" class="pb-1">
										</c:forEach>
										<c:if test="${review.point % 1 eq 0.5}">
											<img alt="star_half" src="/images/star_half.png" width="15"
												height="17" class="pb-1">
										</c:if>
										<c:forEach begin="1" end="${5.0 - review.point}" step="1"
											varStatus="status">
											<img alt="star_empty" src="/images/star_empty.png" width="15"
												height="17" class="pb-1">
										</c:forEach>
									</div>
								</div>
								<small class="text-secondary"><fmt:formatDate
										value="${review.updatedAt}" pattern="yyyy년 MM월 dd일" /></small><br>
								<div class="pt-2 pb-1">${review.review}</div>
								<div class="pt-1">
									<div class="menuBox">
										<div class="pb-1">
											<small><b>${review.menu}</b></small>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<hr>
		</div>
		<footer>
			<h5>(주)우와한형제</h5>
			<div class="text-secondary">고객센터 : 1500-1500</div>
		</footer>
	</div>
</body>
</html>