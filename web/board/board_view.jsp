<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 7:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>소통 게시판</title>
    <%@ include file="../header.jsp"%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-2">
            <%@ include file="../sidemenu.jsp"%>
        </div>
        <div class="col mt-4 mr-5">
            <h1>작성 게시글 번호 나 제목</h1>
            <div class="border mb-3">내용 출력</div>

            <a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">수정하기</a>
            <a href="#" class="btn btn-danger btn-lg active" role="button" aria-pressed="true">삭제하기</a>
        </div>
    </div>
</div>
<script src="../js/common.js"></script>
</body>
</html>
