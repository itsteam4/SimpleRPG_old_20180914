<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
		body{
				background-image: url('resources/images/jungles.jpg');
		}
</style>
</head>
<body>
	<form>
		<div class="container">
			<div class="row" style="margin-top:100px">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h1 style="size:50px">Login</h1>
				</div>
				<div class="col-md-2"></div>
			</div>
			
			<div class="row" style="margin-top:80px">
				<div class="input-group">
					<span class="input-group-addon" style="text-align:center">
						<h1><i class="fa fa-user-circle-o" aria-hidden="true">ID:</i></h1>
					</span>
					<input name="userid" id="userid" class="form-control" type="text" size="40"
							maxlength="30"/>
				</div>
			</div>
				<div class="row" style="margin-top:30px">
				<div class="input-group">
					<span class="input-group-addon" style="text-align:center;">
						<h1><i class="fa fa-key" aria-hidden="true">PW:</i></h1>
					</span>
					<input name="userid" id="userid" class="form-control" type="text" size="40"
							maxlength="30"/>		
				</div>
			</div>
		</div>					
		<div class="row" style="margin-top:30px">  
		 		<div class="col-md-2"></div>
		 	<div class="col-md-8" style="text-align:center">
		 	</div>
		 	<button  id="login" class="btn btn-primary" style="width:100%"><i class="fa fa-sign-in" aria-hidden="true"></i> &nbsp&nbsp Login</button>
		 	<div class="col-md-2"></div>
		 </div>
		 
		 <div class="row" style="margin-top:10px">  
		 	<div class="col-md-2"></div>
		 	<div class="col-md-8" style="text-align:center">
		 	    <span class="col-md-3 text-left">
		 	    	<a href="memberInsertForm">
		 	    	<i class="fa fa-plus-square" aria-hidden="true"></i> 회원가입
		 	    	</a></span>
	 			<span  id="passfind" class="col-md-6 text-center">
		 	    	<i class="fa fa-search" aria-hidden="true"></i> 
		 	    	 비밀번호찾기 
	 			</span>
		 	</div>
		</div>			
	</form>
</body>
</html>