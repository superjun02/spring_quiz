<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨 찾기 추가하기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h2>즐겨 찾기 추가하기</h2>
		<div class="w-100">
			<b>제목:</b>
			<input type="text" class="form-control" name="name"><br>
				
			<b>주소:</b>
			<input type="text" class="form-control" name="url"><br>
			
			<input type="submit" id="addBtn" class="btn btn-success w-100" value="추가">
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() { 
		$('#addBtn').on('click', function(e) {
			e.preventDefault();
			
			let name = $('input[name=name]').val().trim();
			if (name == '') {
				alert("주소이름을 입력하세요");
				return false;
			}
			
			let url = $('input[name=url]').val().trim();
			if (url == '') {
				alert("주소를 입력하세요");
				return false;
			}
			
			$.ajax({
				type: 'POST'
				, url: '/lesson06/quiz01/after_add_bookmark'
				, data: {"name":name, "url":url}
				, success: function(data) { /// AJAX 결과는 String이다
					alert(data);
					location.href = "/lesson06/quiz01/bookmarkList";
					// location.reload(); // 새로고침
				}
				, complete: function(data) {
					alert("완료");
				}
				, error: function(e) {
					alert("에러: " + e);
				}
			});
		})
	});
</script>
</html>