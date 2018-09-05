<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<%-- <content tag="local_script"> --%>
<!--    <script type="text/javascript"> -->
<!--          alert(100);  -->
<!-- </script>  -->
<%-- </content> --%>
</head>
<body>
   <form id="board_list" name="board_list" action="boardpagelist"
      method="get">
      <div class="container">
         <div class="row" style="margin-top: 30px">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center">
               <h1>공지사항</h1>
            </div>
            <div class="col-md-4"></div>
         </div>

         <table class="table table-bordered" style="margin-top: 30px">
            <thead class="thead-dark" style="text-align: center">
               <tr>
                  <th>번호</th> 
                  <th>구분</th>
                  <th>이메일</th>
                  <th>제목</th>
                  <th>작성일 </th>
                  <th>조회수 </th>
                  

               </tr>
            </thead>
            <tbody style="text-align:center">
               <c:forEach var="noticeboards" items="${noticeboards}" varStatus="status">
                  <tr>
                     <td ><c:if test="${noticeboards.n_step == 0}">
                        ${noticeboards.n_ref}
                     </c:if></td>
                     <td>${noticeboards.n_type}</td>
                     <td>${noticeboards.n_email}</td>
                     <td><a href="boarddetail?n_seq=${noticeboards.n_seq}"
                        style="color: #292929"> <c:if test="${noticeboards.n_step ge 1}">
                              <i class="fab fa-replyd"></i>
                           </c:if> ${noticeboards.n_title}
                     </a></td>
                     <td>${noticeboards.n_date}</td>
                     <td style="text-align:center">${noticeboards.n_hit}</td>
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
         <div class="row" style="margin-top: 30px">
            <div class="col-md-12" style="text-align:right">
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
   </form>
</body>
</html>