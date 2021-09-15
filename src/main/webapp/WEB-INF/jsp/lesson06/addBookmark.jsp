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
			<div class="form-group">
				<b>제목:</b>
				<input type="text" class="form-control" name="name"><br>
			</div>
			
			<div class="form-group w-100">
				<b>주소:</b>
				<div class="d-flex">
					<input type="text" class="form-control" id="url" name="url"><br>
					<button type="button" id="urlCheckBtn" class="btn btn-info">중복확인</button>
				</div>
			</div>
			
			<div id="urlStatusArea"></div><br>
			
			<input type="button" id="addBtn" class="btn btn-success w-100" value="추가">
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() { 
		$('#urlCheckBtn').on('click', function() {
			let url = $('#url').val().trim();
			
			$('#urlStatusArea').empty();
			
			$.ajax({
				type: 'get'
				, url: '/lesson06/quiz01/is_duplication'
				, data: {'url': url}
				, success: function(data) {
					if (data.is_duplication == true) {
						$('#urlStatusArea').append('<small class="text-danger">중복된 url 입니다.</small>')
					} else {
						$('#urlStatusArea').append('<small class="text-success">저장 가능한 url 입니다.</small>')
					}
				}
				, error: function(e) {
					alert("실패:" + e);
				}
			});
		});
		
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
			
			
			if (!(url.startsWith("http")) && !(url.startsWith("https"))) {
				alert("http또는 https로 시작하는 주소를 입력하시오")
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