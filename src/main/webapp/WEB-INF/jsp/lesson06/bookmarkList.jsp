<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨 찾기 목록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h2>즐겨 찾기 목록</h2>
		<table class="table">
			<thead>
				<tr>
					<th class="col-2">No.</th>
					<th class="col-4">이름</th>
					<th class="col-6">주소</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bookmark" items="${bookmarkList}" varStatus="status">
					<tr>
						<td class="col-2">${status.count}</td>
						<td class="col-4">${bookmark.name}</td>
						<td class="col-4">${bookmark.url}</td>
						<td class="col-2 d-flex justify-content-center">
							<button type="button" class="delete btn btn-danger" value="${bookmark.id}">삭제</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.delete').on('click', function() {
				let id = $(this).val();
				
				$.ajax({
					type: 'get'
					, url: '/lesson06/quiz01/deleteBookmark'
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
</body>
</html>