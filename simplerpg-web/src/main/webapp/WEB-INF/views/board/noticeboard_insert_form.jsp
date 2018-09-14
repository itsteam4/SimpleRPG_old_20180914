<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/parsely.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script><script src="http://t1.daumcdn.net/postcode/api/core/180619/1529384927473/180619.js" type="text/javascript" charset="UTF-8"></script>
<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
</head>
<body>
	<form id="noticeboard_form" name="noticeboard_form" action="noticeboardinsert" method="post" enctype="multipart/form-data">
		<div class="container" style="text-align: center">
			<div style="margin-top: 30px">
				<h1>공지사항</h1>
			</div>
			<div class="row" style="margin-top: 30px">
				<div class="col-md-3"></div>
				<div class="input-group mb-3 col-md-6 ">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 150px"><i
							class="fas fa-user-plus" style="font-size: 17px"> E-MAIL</i></span>
					</div>

					<input type="text" class="form-control" id="n_email" name="n_email" value="${sessionemail}" readonly>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="input-group mb-3 col-md-6 ">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 150px"><i
							class="fas fa-user-lock" style="font-size: 17px"> 이름</i></span>
					</div>
					<input type="text" id="n_name" name="n_name" class="form-control" value="${sessionname}" readonly>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="input-group mb-3 col-md-6 ">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 150px"><i
							class="fas fa-user-lock" style="font-size: 17px"> 제목</i></span>
					</div>

					<input type="text" id="n_title" name="n_title" class="form-control" required="true">
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="input-group mb-3 col-md-6 ">
					<div class="input-group-prepend">
						<span class="input-group-text" style="width: 150px"><i
							class="fas fa-user-lock" style="font-size: 17px"> 첨부파일</i></span>
					</div>
					<input type="file" id="file" name="file" class="form-control">
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<textarea id="n_content" name="n_content" class="form-control" rows="10" style="resize: none" required="true"></textarea>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row" style="margin-top: 30px">
				<div class="col-md-3"></div>
				<div class="col-md-3">
					<button type="submit" id="confirm" class="btn btn-primary btn-block">확인</button>
				</div>
				<div class="col-md-3">
					<button type="reset" id="cancel" class="btn btn-primary btn-block">취소</button>
				</div>
				<div class="col-md-3"></div>
			</div>
		</div>
	</form>
</body>
</html>