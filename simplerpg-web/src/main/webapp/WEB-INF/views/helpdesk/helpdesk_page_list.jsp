<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="helpdeskPageList" method="get">
		<div class="container">
			<div class="row" style="margin-top: 50px">
				<div class="col-md-1"></div>
				<div class="col-md-10" style="text-align: center; color: #040044">
					<h1>
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i> 게시판
					</h1>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row" style="margin-top: 20px">
				<div class="col-md-1"></div>
				<div class="col-md-10" style="text-align: center">
					<table class="table table-striped table-bordered" cellspacing="0"
						width="100%">
						<thead>
							<tr style="text-align: center">
								<th>글번호</th>
								<th>E-mail</th>
								<th>작성자</th>
								<th>제목</th>
								<th>첨부파일</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="helpdesks" items="${helpdesks}">
								<tr style="text-align: center">
									<td class="text-center">${helpdesks.h_ref}</td>
									<td>${helpdesks.h_email}</td>
									<td class="text-center">${helpdesks.h_name}</td>
									<td style="text-align: left"><a
										href="helpdeskDetail?h_seq=${helpdesks.h_seq}&h_email=${helpdesks.h_email}">
											<c:if test="${helpdesks.h_step ge 1}">
												<img src="resources/images/reply.png" width="15" height="15">
											</c:if>${helpdesks.h_title}
									</a></td>
									<td class="text-center"><c:if
											test="${(helpdesks.h_attach != null) && (helpdesks.h_attach !='')}">
											<%--                             <a href="helpdeskDownload?h_attach=${helpdesks.h_attach}"><i id="attach_file" class="fa fa-file" aria-hidden="true"></i> --%>
											<!--                             </a> -->
											<a href="helpdeskDownload?h_attach=${helpdesks.h_attach}"><i
												id="attach_file" class="fa fa-file" aria-hidden="true"></i>
											</a>

										</c:if></td>
									<td>${helpdesks.h_date}</td>
									<td>${helpdesks.h_hit}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row" style="margin-top: 10px">
				<div class="col-md-1"></div>
				<div class="col-md-10" style="text-align: center">
					<c:forEach var="page" items="${pages}">
						<a href="helpdeskPageListSelected?page=${page}">[${page}]&nbsp</a>
					</c:forEach>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row" style="margin-top: 10px">
				<div class="col-md-5"></div>
				<div class="col-md-6" style="text-align: center">
					<span class="input-group form-control form-inline"
						style="border: 0; text-align: center"> <input type="text"
						name="find" placeholder="검색어" value="${find}">
						<button type="submit" class="btn btn-info">
							<i class="fa fa-search" aria-hidden="true"
								style="display: inline-block;"></i> 검색
						</button> <c:if test="${sessionemail != null}">
							<button type="button" class="btn btn-danger"
								onclick="location.href='helpdeskInsert_Form'"
								style="display: inline-block;">
								<i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기
							</button>
						</c:if>
					</span>
				</div>
				<div class="col-md-1"></div>
			</div>

			<!-- Modal -->
			<div id="helpdeskModal" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">글삭제</h4>
						</div>
						<div class="modal-body">
							<p>
								<span id="modalmsg"><font color=red>삭제 하시겠습니까 ?</font></span>
							</p>
						</div>
						<div class="modal-footer" style="text-align: center">
							<button type="button" id="del" class="btn btn-success"
								data-dismiss="modal">확인</button>
							<button type="button" id="pass" class="btn btn-warning"
								data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>