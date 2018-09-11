<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
</head>
<body>
	<form id="updateboard_list" name="updateboard_list"
		action="updateboard_pagelist" method="get">
		<div class="container">
			<div class="row" style="margin-top: 30px">
				<div class="col-md-4"></div>
				<div class="col-md-4" style="text-align: center">
					<h2>업데이트 노트</h2>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
		<div class="container">
			<div class="row" style="margin-top: 50px">
				<div class="col-md-4">
					<h4>중요 공지사항</h4>
				</div>
				<div class="col-md-4"></div>
				<div class="col-md-4"></div>
			</div>
		</div>
		<div class="container">
			<div class="row">


				<div class="col-md-12">
					<hr>
				</div>
				<div class="col-md-12">
					<!-- 		table table-bordered 클래스에 이소스를 집어 넣으면 테이블처럼 테두리가 생김 -->
					<tbody>
						<c:forEach var="boards" items="${boards}" varStatus="status">
							<tr>
								<td><c:if test="${boards.b_step == 0}">
									</c:if></td>
								<td><a href="boarddetail?b_seq=${boards.b_seq}"
									style="color: #292929"> <c:if test="${boards.b_step ge 1}">
											<i class="fab fa-replyd"></i>
										</c:if> ${boards.b_title} <br>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
					<hr>
				</div>
			</div>
		</div>


		<div class="container">
			<table class="table table-bordered" style="margin-top: 30px">
				<thead class="thead-dark" style="text-align: center">
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>이메일</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody style="text-align: center">
					<c:forEach var="noticeboards" items="${noticeboards}"
						varStatus="status">
						<tr>
							<td><c:if test="${noticeboards.u_step == 0}">
                        ${noticeboards.u_ref}
                     </c:if></td>
							<hr>
							<td>${noticeboards.u_type}</td>
							<td>${noticeboards.u_id}</td>
							<td><a href="boarddetail?u_seq=${noticeboards.u_seq}"
								style="color: #292929"> <c:if
										test="${noticeboards.u_step ge 1}">
										<i class="fab fa-replyd"></i>
									</c:if> ${noticeboards.u_title}
							</a></td>
							<td>${noticeboards.u_date}</td>
							<td style="text-align: center">${noticeboards.u_hit}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="row" style="margin-top: 30px">
				<div class="col-md-3"></div>
				<div class="col-md-6" style="text-align: center">
					<c:forEach var="page" items="${pages}">
						<a href="boardpageselected?page=${page}" style="color: #292929">[${page}]</a>&nbsp
               </c:forEach>
				</div>
				<div class="col-md-3"></div>
			</div>
		</div>
		<div class="container">
			<div class="row" style="margin-top: 30px">
				<div class="col-md-12" style="text-align: right">
					<input type="text" id="search" name="find">
					<button type="submit" class="btn btn-primary">
						<i class="fas fa-search"></i> 검색
					</button>
					<c:choose>
						<c:when test="${sessionid == null}">
						</c:when>
						<c:otherwise>
							<a href="boardinsertform"><button type="button" id="write"
									class="btn btn-success">글쓰기</button></a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</form>
</body>
</html>