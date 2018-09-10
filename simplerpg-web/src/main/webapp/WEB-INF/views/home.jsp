<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<script>
function() {
	  $(this).parent("dl").next(".main_con01_board_veiw").show().stop().animate({
	    "bottom": "0"
	  }, 1000, "easeOutBounce");
	}
</script>
<body>


<div class="container" style="width:100%; height:auto;">
	<div class="contents" style="wdith:1130px; margin:0 auto;"> 
		<ul style="width:100%; float:left; overflow:hidden; margin-top:42px; list-style:none;">
			<li style=" width:263px; height:351px; float:left; margin-right:26px; position:relative;
			background:url('resources/image/mainpage/main_con01_bg.png')no-repeat; overflow:hidden;">
				<dl style="width:100%; float:left; position:relative; height:100%;">
					<dt style=" widht:100%; height:85px; float:left; text-align:center;color:#c4a26e;
					font-size:25px; margin-top:16px;">
					<img src="resources/image/mainpage/board_icon_01.png" alt="공지">
					<span style="widht:100%; float:left; margin-top:10px; vertical-align:baslien;">
						<a href="#" style="color:#c4a26e">notice</a>
					</span>
					</dt>
					<dd>
						<a href="javascript:void(0)">
							<img src="resources/image/mainpage/main_con_bottom01.png" alt="자세히보기">
						</a>
					</dd>
				</dl>
			</li>	
		</ul>
	
	</div>


</div>



<h1>
	Hello world! asdfasdf 
</h1>
<P>  The time on the server is ${serverTime}. </P>
<c:forEach var="names" items="${names}">
	${names}<br>
</c:forEach>
</body>
</html>
